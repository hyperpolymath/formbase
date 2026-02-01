# FormBD Integration Guide

## Overview

FormBase uses FormBD as its database backend through an Erlang NIF (Native Implemented Function). The integration architecture is:

```
FormBase (Gleam/BEAM + ReScript UI)
    ↓ (Gleam wrapper: server/src/formbd.gleam)
Erlang NIF (server/native/formbd_nif.c)
    ↓ (C function calls)
libformbd.so (Zig FFI: ../formbd/ffi/zig/zig-out/lib/libformbd.so)
    ↓ (implements ABI)
FormBD Idris2 ABI (../formbd/src/FormBD/*.idr)
    ↓ (uses)
Proven Library (SafeMath, SafePath, SafeJson, etc.)
```

## Building the NIF

### Prerequisites

1. **FormBD library built:**
   ```bash
   cd ~/Documents/hyperpolymath-repos/formbd/ffi/zig
   zig build-lib -dynamic src/bridge.zig -lc -femit-bin=zig-out/lib/libformbd.so
   ```

2. **Erlang/OTP installed** (for NIF headers)

### Build Steps

```bash
cd ~/Documents/hyperpolymath-repos/formbase/server/native
make
```

This compiles `formbd_nif.c` and links it against `libformbd.so`, producing `../priv/formbd_nif.so`.

## Using FormBD from Gleam

### Initialize (once at startup)

```gleam
import formbd

pub fn main() {
  case formbd.init() {
    Ok(_) -> io.println("FormBD initialized")
    Error(e) -> io.println("FormBD init failed")
  }
}
```

### Open or Create Database

```gleam
// Open existing database
case formbd.open("/path/to/database.fdb") {
  Ok(db) -> use_database(db)
  Error(e) -> handle_error(e)
}

// Create new database (1000 blocks = 4MB initial size)
case formbd.create("/path/to/new.fdb", 1000) {
  Ok(db) -> use_database(db)
  Error(e) -> handle_error(e)
}
```

### Execute Queries

```gleam
pub fn fetch_users(db: formbd.Db) {
  case formbd.execute_query(
    db,
    "SELECT * FROM users WHERE age > 18",
    "admin@formbase.app",
    "User listing for dashboard"
  ) {
    Ok(cursor) -> {
      case formbd.cursor_to_list(cursor) {
        Ok(results) -> process_results(results)
        Error(e) -> handle_error(e)
      }
    }
    Error(e) -> handle_error(e)
  }
}
```

### Transactions

```gleam
pub fn transfer_balance(db: formbd.Db, from: String, to: String, amount: Int) {
  case formbd.begin_transaction(db) {
    Ok(txn) -> {
      // Execute queries within transaction
      case do_transfer(db, from, to, amount) {
        Ok(_) -> formbd.commit_transaction(txn)
        Error(e) -> {
          // Transaction auto-rolls back on GC if not committed
          Error(e)
        }
      }
    }
    Error(e) -> Error(e)
  }
}
```

## Provenance Tracking

Every query requires provenance (who, why, when):

```gleam
formbd.execute_query(
  db,
  query_string,
  actor: "user@example.com",      // Who is making this change
  rationale: "Quarterly cleanup"  // Why are they doing it
)
// Timestamp is automatically added by the Gleam wrapper
```

This ensures full audit trail for all database operations.

## API Reference

### Types

- `Db` - Opaque database handle
- `Transaction` - Opaque transaction handle
- `Cursor` - Opaque query result cursor
- `FdbError` - Error enum (InvalidArg, NotFound, IoError, etc.)

### Functions

- `init() -> Result(Nil, FdbError)` - Initialize FormBD
- `open(path) -> Result(Db, FdbError)` - Open existing database
- `create(path, block_count) -> Result(Db, FdbError)` - Create new database
- `begin_transaction(db) -> Result(Transaction, FdbError)` - Begin ACID transaction
- `commit_transaction(txn) -> Result(Nil, FdbError)` - Commit transaction
- `execute_query(db, query, actor, rationale) -> Result(Cursor, FdbError)` - Execute FQL query
- `cursor_next(cursor) -> Result(Option(String), FdbError)` - Fetch next result
- `cursor_to_list(cursor) -> Result(List(String), FdbError)` - Collect all results

## Current Status

**Integration:** 30% → **70%** (NIF complete, needs testing)

**Completed:**
- ✅ Erlang NIF wrapper (formbd_nif.c)
- ✅ Gleam type-safe wrapper (formbd.gleam)
- ✅ Build system (Makefile)
- ✅ Provenance tracking integration
- ✅ Resource management (auto-cleanup on GC)

**Remaining:**
- [ ] Integration tests
- [ ] Error handling improvements
- [ ] Connection pooling (if needed)
- [ ] Replace mock client in existing FormBase code

## Notes

- The NIF uses Erlang resource types for automatic cleanup (RAII-style)
- Transactions auto-rollback if not explicitly committed (prevents dangling transactions)
- All database operations are thread-safe (handled by BEAM scheduler)
- FormBD's append-only journal makes it safe for Dropbox/GDrive sync
