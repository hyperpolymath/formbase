// SPDX-License-Identifier: PMPL-1.0-or-later
// Integration tests for FormDB Zig FFI

const std = @import("std");
const testing = std.testing;

// Import the main module
const formdb = @import("../src/main.zig");

test "full database workflow" {
    // Test version
    var major: u8 = undefined;
    var minor: u8 = undefined;
    var patch: u8 = undefined;
    formdb.formdb_nif_version(&major, &minor, &patch);

    try testing.expectEqual(@as(u8, 0), major);
    try testing.expectEqual(@as(u8, 1), minor);
    try testing.expectEqual(@as(u8, 0), patch);

    // Test database open/close
    const db = formdb.formdb_nif_db_open("/tmp/integration_test.db");
    try testing.expect(db != null);
    defer _ = formdb.formdb_nif_db_close(db.?);

    // Test transaction begin/commit
    const txn = formdb.formdb_nif_txn_begin(db.?, 1); // ReadWrite
    try testing.expect(txn != null);

    // Test apply operation
    const dummy_op = [_]u8{ 0x00, 0x01, 0x02 }; // Dummy CBOR
    var block_id: u64 = undefined;
    var has_prov: u32 = undefined;
    var prov_hash: [32]u8 = undefined;

    const apply_result = formdb.formdb_nif_apply(
        txn.?,
        &dummy_op,
        dummy_op.len,
        &block_id,
        &has_prov,
        &prov_hash,
    );
    try testing.expectEqual(@as(c_int, 0), apply_result);
    try testing.expect(block_id != 0);
    try testing.expectEqual(@as(u32, 1), has_prov);

    // Test commit
    const commit_result = formdb.formdb_nif_txn_commit(txn.?);
    try testing.expectEqual(@as(c_int, 0), commit_result);
}

test "schema retrieval" {
    const db = formdb.formdb_nif_db_open("/tmp/schema_test.db");
    try testing.expect(db != null);
    defer _ = formdb.formdb_nif_db_close(db.?);

    var buffer: [1024]u8 = undefined;
    const len = formdb.formdb_nif_schema(db.?, &buffer, buffer.len);

    try testing.expect(len > 0);
    try testing.expect(len <= buffer.len);
}

test "journal retrieval" {
    const db = formdb.formdb_nif_db_open("/tmp/journal_test.db");
    try testing.expect(db != null);
    defer _ = formdb.formdb_nif_db_close(db.?);

    var buffer: [4096]u8 = undefined;
    const since: u64 = 0; // From beginning
    const len = formdb.formdb_nif_journal(db.?, since, &buffer, buffer.len);

    try testing.expect(len > 0);
    try testing.expect(len <= buffer.len);
}

test "transaction abort" {
    const db = formdb.formdb_nif_db_open("/tmp/abort_test.db");
    try testing.expect(db != null);
    defer _ = formdb.formdb_nif_db_close(db.?);

    const txn = formdb.formdb_nif_txn_begin(db.?, 1); // ReadWrite
    try testing.expect(txn != null);

    const abort_result = formdb.formdb_nif_txn_abort(txn.?);
    try testing.expectEqual(@as(c_int, 0), abort_result);
}

test "read-only transaction" {
    const db = formdb.formdb_nif_db_open("/tmp/readonly_test.db");
    try testing.expect(db != null);
    defer _ = formdb.formdb_nif_db_close(db.?);

    const txn = formdb.formdb_nif_txn_begin(db.?, 0); // ReadOnly
    try testing.expect(txn != null);

    const commit_result = formdb.formdb_nif_txn_commit(txn.?);
    try testing.expectEqual(@as(c_int, 0), commit_result);
}
