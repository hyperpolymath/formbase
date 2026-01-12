// SPDX-License-Identifier: AGPL-3.0-or-later
// FormDB client - interface to the FormDB database engine

import gleam/option.{type Option, None, Some}
import gleam/result

/// FormDB connection handle
pub opaque type Connection {
  Connection(path: String, handle: Int)
}

/// FormDB error types
pub type FormDBError {
  ConnectionError(message: String)
  QueryError(message: String)
  ValidationError(message: String)
  ProvenanceError(message: String)
  NotFound(entity: String, id: String)
  PermissionDenied(action: String)
}

/// Result type for FormDB operations
pub type FormDBResult(a) =
  Result(a, FormDBError)

/// Open a connection to a FormDB database
/// The path should point to a FormDB directory
pub fn connect(path: String) -> FormDBResult(Connection) {
  // TODO: Call FormDB via Zig FFI
  // For now, return a mock connection
  Ok(Connection(path: path, handle: 1))
}

/// Close a FormDB connection
pub fn disconnect(conn: Connection) -> FormDBResult(Nil) {
  // TODO: Call FormDB via Zig FFI
  let _ = conn
  Ok(Nil)
}

/// Execute an FQL query
pub fn query(conn: Connection, fql: String) -> FormDBResult(QueryResult) {
  // TODO: Call FormDB via Zig FFI
  // Parse FQL, execute against FormDB, return results
  let _ = conn
  let _ = fql
  Ok(QueryResult(rows: [], affected: 0, provenance_id: None))
}

/// Execute an FQL mutation with provenance tracking
pub fn mutate(
  conn: Connection,
  fql: String,
  user_id: String,
  rationale: Option(String),
) -> FormDBResult(MutationResult) {
  // TODO: Call FormDB via Zig FFI
  // All mutations are journaled with provenance
  let _ = conn
  let _ = fql
  let _ = user_id
  let _ = rationale
  Ok(MutationResult(
    affected: 0,
    provenance_id: "prov_" <> "mock",
    journal_entry: 0,
  ))
}

/// Get provenance history for a specific cell
pub fn get_provenance(
  conn: Connection,
  collection: String,
  document_id: String,
  field: String,
) -> FormDBResult(List(ProvenanceEntry)) {
  // TODO: Call FormDB via Zig FFI
  let _ = conn
  let _ = collection
  let _ = document_id
  let _ = field
  Ok([])
}

/// Time travel - view data at a specific point in time
pub fn at_time(
  conn: Connection,
  timestamp: String,
) -> FormDBResult(Connection) {
  // TODO: Call FormDB via Zig FFI
  // Returns a read-only connection at the specified time
  let _ = timestamp
  Ok(conn)
}

/// Get EXPLAIN output for an FQL query
pub fn explain(conn: Connection, fql: String) -> FormDBResult(ExplainResult) {
  // TODO: Call FormDB via Zig FFI
  let _ = conn
  let _ = fql
  Ok(ExplainResult(
    plan: "Sequential Scan",
    estimated_cost: 1.0,
    steps: [],
  ))
}

// Result types

pub type QueryResult {
  QueryResult(
    rows: List(Row),
    affected: Int,
    provenance_id: Option(String),
  )
}

pub type MutationResult {
  MutationResult(
    affected: Int,
    provenance_id: String,
    journal_entry: Int,
  )
}

pub type ProvenanceEntry {
  ProvenanceEntry(
    timestamp: String,
    user_id: String,
    user_name: String,
    operation: String,
    previous_value: Option(String),
    new_value: String,
    rationale: Option(String),
    journal_entry: Int,
  )
}

pub type ExplainResult {
  ExplainResult(
    plan: String,
    estimated_cost: Float,
    steps: List(String),
  )
}

pub type Row {
  Row(fields: List(#(String, String)))
}
