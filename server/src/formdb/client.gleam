// SPDX-License-Identifier: AGPL-3.0-or-later
// FormDB client - Gleam interface to FormDB via NIF
// Currently a mock implementation for development

import gleam/option.{type Option, None}

/// FormDB database handle (opaque reference from NIF)
pub opaque type Connection {
  Connection(path: String)
}

/// FormDB transaction handle (opaque reference from NIF)
pub opaque type Transaction {
  Transaction(conn: Connection, mode: TransactionMode)
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
  NifNotLoaded
}

/// Result type for FormDB operations
pub type FormDBResult(a) =
  Result(a, FormDBError)

// ============================================================
// Public API (Mock Implementation)
// ============================================================

/// Get FormDB version
pub fn version() -> #(Int, Int, Int) {
  #(0, 1, 0)
}

/// Open a connection to a FormDB database
pub fn connect(path: String) -> FormDBResult(Connection) {
  // Mock: Always succeeds for development
  Ok(Connection(path: path))
}

/// Close a FormDB connection
pub fn disconnect(_conn: Connection) -> FormDBResult(Nil) {
  Ok(Nil)
}

/// Begin a transaction
pub fn begin_transaction(
  conn: Connection,
  mode: TransactionMode,
) -> FormDBResult(Transaction) {
  Ok(Transaction(conn: conn, mode: mode))
}

/// Commit a transaction
pub fn commit(_txn: Transaction) -> FormDBResult(Nil) {
  Ok(Nil)
}

/// Abort a transaction
pub fn abort(_txn: Transaction) -> FormDBResult(Nil) {
  Ok(Nil)
}

/// Apply an operation within a transaction
/// The operation should be CBOR-encoded
/// Returns mock empty result for now
pub fn apply_operation(
  _txn: Transaction,
  _operation: BitArray,
) -> FormDBResult(#(BitArray, Option(BitArray))) {
  // Mock: Return empty CBOR map {}
  Ok(#(<<0xa0>>, None))
}

/// Get database schema (CBOR-encoded)
pub fn get_schema(_conn: Connection) -> FormDBResult(BitArray) {
  // Mock: Return empty CBOR map
  Ok(<<0xa0>>)
}

/// Get journal entries since a sequence number (CBOR-encoded)
pub fn get_journal(_conn: Connection, _since: Int) -> FormDBResult(BitArray) {
  // Mock: Return empty CBOR array
  Ok(<<0x80>>)
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
