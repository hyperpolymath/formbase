// SPDX-License-Identifier: AGPL-3.0-or-later
// FormDB client - Gleam interface to FormDB via NIF

import gleam/dynamic.{type Dynamic}
import gleam/erlang/atom.{type Atom}
import gleam/option.{type Option, None, Some}
import gleam/result

/// FormDB database handle (opaque reference from NIF)
pub opaque type Connection {
  Connection(ref: Dynamic)
}

/// FormDB transaction handle (opaque reference from NIF)
pub opaque type Transaction {
  Transaction(ref: Dynamic, mode: TransactionMode)
}

/// Transaction mode
pub type TransactionMode {
  ReadOnly
  ReadWrite
}

/// FormDB error types
pub type FormDBError {
  ConnectionError(message: String)
  TransactionError(message: String)
  QueryError(message: String)
  ValidationError(message: String)
  ProvenanceError(message: String)
  NotFound(entity: String, id: String)
  PermissionDenied(action: String)
  NifError(reason: Atom)
  NifErrorWithData(reason: Atom, data: BitArray)
}

/// Result type for FormDB operations
pub type FormDBResult(a) =
  Result(a, FormDBError)

// ============================================================
// External NIF Functions
// ============================================================

@external(erlang, "formdb_nif", "version")
fn nif_version() -> #(Int, Int, Int)

@external(erlang, "formdb_nif", "db_open")
fn nif_db_open(path: BitArray) -> Dynamic

@external(erlang, "formdb_nif", "db_close")
fn nif_db_close(db: Dynamic) -> Dynamic

@external(erlang, "formdb_nif", "txn_begin")
fn nif_txn_begin(db: Dynamic, mode: Atom) -> Dynamic

@external(erlang, "formdb_nif", "txn_commit")
fn nif_txn_commit(txn: Dynamic) -> Dynamic

@external(erlang, "formdb_nif", "txn_abort")
fn nif_txn_abort(txn: Dynamic) -> Dynamic

@external(erlang, "formdb_nif", "apply")
fn nif_apply(txn: Dynamic, op: BitArray) -> Dynamic

@external(erlang, "formdb_nif", "schema")
fn nif_schema(db: Dynamic) -> Dynamic

@external(erlang, "formdb_nif", "journal")
fn nif_journal(db: Dynamic, since: Int) -> Dynamic

// ============================================================
// Helper Functions
// ============================================================

fn mode_to_atom(mode: TransactionMode) -> Atom {
  case mode {
    ReadOnly -> atom.create_from_string("read_only")
    ReadWrite -> atom.create_from_string("read_write")
  }
}

fn decode_ok_ref(result: Dynamic) -> FormDBResult(Dynamic) {
  case dynamic.tuple2(dynamic.dynamic, dynamic.dynamic)(result) {
    Ok(#(tag, value)) -> {
      case atom.from_dynamic(tag) {
        Ok(a) if a == atom.create_from_string("ok") -> Ok(value)
        Ok(a) -> Error(NifError(a))
        Error(_) -> Error(NifError(atom.create_from_string("decode_error")))
      }
    }
    Error(_) -> {
      case atom.from_dynamic(result) {
        Ok(a) if a == atom.create_from_string("ok") -> Ok(dynamic.from(Nil))
        Ok(a) -> Error(NifError(a))
        Error(_) -> Error(NifError(atom.create_from_string("decode_error")))
      }
    }
  }
}

fn decode_ok_binary(result: Dynamic) -> FormDBResult(BitArray) {
  case dynamic.tuple2(dynamic.dynamic, dynamic.bit_array)(result) {
    Ok(#(tag, value)) -> {
      case atom.from_dynamic(tag) {
        Ok(a) if a == atom.create_from_string("ok") -> Ok(value)
        Ok(a) -> Error(NifError(a))
        Error(_) -> Error(NifError(atom.create_from_string("decode_error")))
      }
    }
    Error(_) -> Error(NifError(atom.create_from_string("decode_error")))
  }
}

fn decode_ok_binary_with_provenance(
  result: Dynamic,
) -> FormDBResult(#(BitArray, Option(BitArray))) {
  // Try tuple3 first (result with provenance)
  case dynamic.tuple3(dynamic.dynamic, dynamic.bit_array, dynamic.bit_array)(result) {
    Ok(#(tag, value, prov)) -> {
      case atom.from_dynamic(tag) {
        Ok(a) if a == atom.create_from_string("ok") -> Ok(#(value, Some(prov)))
        Ok(a) -> Error(NifError(a))
        Error(_) -> Error(NifError(atom.create_from_string("decode_error")))
      }
    }
    Error(_) -> {
      // Try tuple2 (result without provenance)
      case decode_ok_binary(result) {
        Ok(value) -> Ok(#(value, None))
        Error(e) -> Error(e)
      }
    }
  }
}

// ============================================================
// Public API
// ============================================================

/// Get FormDB version
pub fn version() -> #(Int, Int, Int) {
  nif_version()
}

/// Open a connection to a FormDB database
pub fn connect(path: String) -> FormDBResult(Connection) {
  let path_bits = <<path:utf8>>
  let result = nif_db_open(path_bits)

  case decode_ok_ref(result) {
    Ok(ref) -> Ok(Connection(ref: ref))
    Error(e) -> Error(e)
  }
}

/// Close a FormDB connection
pub fn disconnect(conn: Connection) -> FormDBResult(Nil) {
  let Connection(ref: ref) = conn
  let result = nif_db_close(ref)

  case decode_ok_ref(result) {
    Ok(_) -> Ok(Nil)
    Error(e) -> Error(e)
  }
}

/// Begin a transaction
pub fn begin_transaction(
  conn: Connection,
  mode: TransactionMode,
) -> FormDBResult(Transaction) {
  let Connection(ref: db_ref) = conn
  let result = nif_txn_begin(db_ref, mode_to_atom(mode))

  case decode_ok_ref(result) {
    Ok(txn_ref) -> Ok(Transaction(ref: txn_ref, mode: mode))
    Error(e) -> Error(e)
  }
}

/// Commit a transaction
pub fn commit(txn: Transaction) -> FormDBResult(Nil) {
  let Transaction(ref: ref, ..) = txn
  let result = nif_txn_commit(ref)

  case decode_ok_ref(result) {
    Ok(_) -> Ok(Nil)
    Error(e) -> Error(e)
  }
}

/// Abort a transaction
pub fn abort(txn: Transaction) -> FormDBResult(Nil) {
  let Transaction(ref: ref, ..) = txn
  let _ = nif_txn_abort(ref)
  Ok(Nil)
}

/// Apply an operation within a transaction
/// The operation should be CBOR-encoded
pub fn apply_operation(
  txn: Transaction,
  operation: BitArray,
) -> FormDBResult(#(BitArray, Option(BitArray))) {
  let Transaction(ref: ref, ..) = txn
  let result = nif_apply(ref, operation)
  decode_ok_binary_with_provenance(result)
}

/// Get database schema (CBOR-encoded)
pub fn get_schema(conn: Connection) -> FormDBResult(BitArray) {
  let Connection(ref: ref) = conn
  let result = nif_schema(ref)
  decode_ok_binary(result)
}

/// Get journal entries since a sequence number (CBOR-encoded)
pub fn get_journal(conn: Connection, since: Int) -> FormDBResult(BitArray) {
  let Connection(ref: ref) = conn
  let result = nif_journal(ref, since)
  decode_ok_binary(result)
}

// ============================================================
// High-Level Operations
// ============================================================

/// Execute an operation in a transaction with automatic commit/abort
pub fn with_transaction(
  conn: Connection,
  mode: TransactionMode,
  operation: fn(Transaction) -> FormDBResult(a),
) -> FormDBResult(a) {
  case begin_transaction(conn, mode) {
    Ok(txn) -> {
      case operation(txn) {
        Ok(result) -> {
          case commit(txn) {
            Ok(_) -> Ok(result)
            Error(e) -> {
              let _ = abort(txn)
              Error(e)
            }
          }
        }
        Error(e) -> {
          let _ = abort(txn)
          Error(e)
        }
      }
    }
    Error(e) -> Error(e)
  }
}
