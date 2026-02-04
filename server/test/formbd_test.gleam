// SPDX-License-Identifier: PMPL-1.0-or-later
// SPDX-FileCopyrightText: 2026 Jonathan D.A. Jewell (@hyperpolymath)
//
// FormBD NIF Integration Test

import formbd
import gleam/io
import gleam/string
import gleam/option

pub fn main() {
  io.println("Testing FormBD NIF integration...")

  // Test 1: Initialize FormBD
  case formbd.init() {
    Ok(_) -> io.println("✓ FormBD init successful")
    Error(e) -> {
      io.println("✗ FormBD init failed: " <> string.inspect(e))
      panic as "FormBD init failed"
    }
  }

  // Test 2: Create a test database
  case formbd.create("/tmp/test_formbd.db", 1000) {
    Ok(db) -> {
      io.println("✓ Database created successfully")

      // Test 3: Execute a SELECT query
      case formbd.execute_query(db, "SELECT * FROM evidence", []) {
        Ok(cursor) -> {
          io.println("✓ Query executed successfully")

          // Test 4: Fetch results from cursor
          case formbd.cursor_next(cursor) {
            Ok(option.Some(json_doc)) -> {
              io.println("✓ Cursor fetch successful")
              io.println("  Document: " <> json_doc)
            }
            Ok(option.None) -> io.println("✓ No results (expected for empty database)")
            Error(e) -> io.println("✗ Cursor fetch failed: " <> string.inspect(e))
          }
        }
        Error(e) -> io.println("✗ Query execution failed: " <> string.inspect(e))
      }
    }
    Error(e) -> io.println("✗ Database creation failed: " <> string.inspect(e))
  }

  io.println("\nFormBD NIF test complete!")
}
