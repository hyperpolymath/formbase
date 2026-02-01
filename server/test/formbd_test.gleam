// SPDX-License-Identifier: PMPL-1.0-or-later
// SPDX-FileCopyrightText: 2026 Jonathan D.A. Jewell (@hyperpolymath)
//
// FormBD NIF Integration Test

import formbd
import gleam/io
import gleam/string

pub fn main() {
  io.println("Testing FormBD NIF integration...")

  // Test 1: Initialize FormBD
  case formbd.init() {
    Ok(_) -> io.println("✓ FormBD init successful")
    Error(e) -> {
      io.println("✗ FormBD init failed: " <> string.inspect(e))
    }
  }

  io.println("\nFormBD NIF test complete!")
}
