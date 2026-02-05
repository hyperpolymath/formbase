// SPDX-License-Identifier: PMPL-1.0-or-later
// FormDB NIF Implementation in Zig
//
// This implements the C-compatible ABI defined in ../../../src/abi/Foreign.idr
// All functions follow the memory layout guarantees from ../../../src/abi/Layout.idr

const std = @import("std");
const c = @cImport({
    @cInclude("erl_nif.h");
});

// Opaque handle types (matching Idris2 ABI)
const DbHandle = opaque {};
const TxnHandle = opaque {};

// Transaction mode enumeration
const TxnMode = enum(u32) {
    ReadOnly = 0,
    ReadWrite = 1,
};

// Version struct (matching Idris2 Version record)
const Version = extern struct {
    major: u8,
    minor: u8,
    patch: u8,
};

// Block ID (u64)
const BlockId = u64;

// Timestamp (u64 - Unix epoch microseconds)
const Timestamp = u64;

// Global allocator for the NIF
var gpa = std.heap.GeneralPurposeAllocator(.{}){};
const allocator = gpa.allocator();

// Database connection state
const Database = struct {
    path: []const u8,
    allocator: std.mem.Allocator,
    // TODO: Add actual Lithoglyph database handle here
    // For now, this is a placeholder structure
    dummy_field: u64,

    fn init(alloc: std.mem.Allocator, path: []const u8) !*Database {
        const db = try alloc.create(Database);
        db.* = .{
            .path = try alloc.dupe(u8, path),
            .allocator = alloc,
            .dummy_field = 0xDEADBEEF,
        };
        return db;
    }

    fn deinit(self: *Database) void {
        self.allocator.free(self.path);
        self.allocator.destroy(self);
    }
};

// Transaction state
const Transaction = struct {
    db: *Database,
    mode: TxnMode,
    allocator: std.mem.Allocator,
    // TODO: Add actual Lithoglyph transaction handle here
    dummy_field: u64,

    fn init(alloc: std.mem.Allocator, db: *Database, mode: TxnMode) !*Transaction {
        const txn = try alloc.create(Transaction);
        txn.* = .{
            .db = db,
            .mode = mode,
            .allocator = alloc,
            .dummy_field = 0xCAFEBABE,
        };
        return txn;
    }

    fn deinit(self: *Transaction) void {
        self.allocator.destroy(self);
    }
};

// ============================================================================
// Exported C-compatible functions (matching Idris2 Foreign.idr)
// ============================================================================

/// Get NIF version
export fn formdb_nif_version(major: *u8, minor: *u8, patch: *u8) void {
    // FormDB NIF version 0.1.0
    major.* = 0;
    minor.* = 1;
    patch.* = 0;
}

/// Open database connection
/// Returns: DbHandle pointer or NULL on error
export fn formdb_nif_db_open(path: [*:0]const u8) ?*DbHandle {
    const path_slice = std.mem.span(path);

    const db = Database.init(allocator, path_slice) catch {
        return null;
    };

    // Cast to opaque handle
    return @ptrCast(db);
}

/// Close database connection
/// Returns: 0 on success, -1 on error
export fn formdb_nif_db_close(handle: *DbHandle) c_int {
    const db: *Database = @ptrCast(@alignCast(handle));
    db.deinit();
    return 0;
}

/// Begin transaction
/// mode: 0 = ReadOnly, 1 = ReadWrite
/// Returns: TxnHandle pointer or NULL on error
export fn formdb_nif_txn_begin(handle: *DbHandle, mode_int: u32) ?*TxnHandle {
    const db: *Database = @ptrCast(@alignCast(handle));

    const mode: TxnMode = @enumFromInt(mode_int);

    const txn = Transaction.init(allocator, db, mode) catch {
        return null;
    };

    // Cast to opaque handle
    return @ptrCast(txn);
}

/// Commit transaction
/// Returns: 0 on success, -1 on error
export fn formdb_nif_txn_commit(handle: *TxnHandle) c_int {
    const txn: *Transaction = @ptrCast(@alignCast(handle));

    // TODO: Implement actual commit logic

    txn.deinit();
    return 0;
}

/// Abort transaction
/// Returns: 0 on success, -1 on error
export fn formdb_nif_txn_abort(handle: *TxnHandle) c_int {
    const txn: *Transaction = @ptrCast(@alignCast(handle));

    // TODO: Implement actual abort logic

    txn.deinit();
    return 0;
}

/// Apply operation to transaction
/// Input: transaction handle, operation CBOR buffer, operation length
/// Output: block_id (u64), has_provenance (bool/u32), provenance_hash (32 bytes)
/// Returns: 0 on success, -1 on error
export fn formdb_nif_apply(
    handle: *TxnHandle,
    op_buffer: [*]const u8,
    op_length: u32,
    block_id_out: *u64,
    has_provenance_out: *u32,
    provenance_buffer: [*]u8,
) c_int {
    const txn: *Transaction = @ptrCast(@alignCast(handle));

    // TODO: Parse CBOR operation and apply to Lithoglyph database

    // For now, return dummy values
    block_id_out.* = 0x123456789ABCDEF0;
    has_provenance_out.* = 1; // true

    // Write dummy provenance hash (32 bytes of 0xAA)
    @memset(provenance_buffer[0..32], 0xAA);

    _ = op_buffer;
    _ = op_length;
    _ = txn;

    return 0;
}

/// Get database schema (CBOR-encoded)
/// Input: database handle, output buffer, max buffer size
/// Returns: actual data length, or 0 on error
export fn formdb_nif_schema(
    handle: *DbHandle,
    buffer: [*]u8,
    max_size: u32,
) u32 {
    const db: *Database = @ptrCast(@alignCast(handle));

    // TODO: Serialize actual schema to CBOR

    // For now, return empty CBOR array []
    const empty_array = [_]u8{ 0x80 }; // CBOR: []

    if (max_size < empty_array.len) {
        return 0; // Buffer too small
    }

    @memcpy(buffer[0..empty_array.len], &empty_array);

    _ = db;

    return @intCast(empty_array.len);
}

/// Get journal entries since timestamp
/// Input: database handle, since timestamp, output buffer, max buffer size
/// Returns: actual data length, or 0 on error
export fn formdb_nif_journal(
    handle: *DbHandle,
    since: u64,
    buffer: [*]u8,
    max_size: u32,
) u32 {
    const db: *Database = @ptrCast(@alignCast(handle));

    // TODO: Query journal from Lithoglyph and serialize to CBOR

    // For now, return empty CBOR array []
    const empty_array = [_]u8{ 0x80 }; // CBOR: []

    if (max_size < empty_array.len) {
        return 0; // Buffer too small
    }

    @memcpy(buffer[0..empty_array.len], &empty_array);

    _ = db;
    _ = since;

    return @intCast(empty_array.len);
}

// ============================================================================
// Erlang NIF initialization (for loading as Erlang NIF)
// ============================================================================

// NIF function table
const nif_funcs = [_]c.ErlNifFunc{
    .{ .name = "version", .arity = 0, .fptr = nif_version, .flags = 0 },
    .{ .name = "db_open", .arity = 1, .fptr = nif_db_open, .flags = 0 },
    .{ .name = "db_close", .arity = 1, .fptr = nif_db_close, .flags = 0 },
    .{ .name = "txn_begin", .arity = 2, .fptr = nif_txn_begin, .flags = 0 },
    .{ .name = "txn_commit", .arity = 1, .fptr = nif_txn_commit, .flags = 0 },
    .{ .name = "txn_abort", .arity = 1, .fptr = nif_txn_abort, .flags = 0 },
    .{ .name = "apply", .arity = 2, .fptr = nif_apply, .flags = 0 },
    .{ .name = "schema", .arity = 1, .fptr = nif_schema, .flags = 0 },
    .{ .name = "journal", .arity = 2, .fptr = nif_journal, .flags = 0 },
};

// Erlang NIF wrapper functions
fn nif_version(env: ?*c.ErlNifEnv, argc: c_int, argv: [*c]const c.ERL_NIF_TERM) callconv(.C) c.ERL_NIF_TERM {
    _ = argc;
    _ = argv;

    var major: u8 = undefined;
    var minor: u8 = undefined;
    var patch: u8 = undefined;

    formdb_nif_version(&major, &minor, &patch);

    return c.enif_make_tuple3(
        env,
        c.enif_make_uint(env, major),
        c.enif_make_uint(env, minor),
        c.enif_make_uint(env, patch),
    );
}

fn nif_db_open(env: ?*c.ErlNifEnv, argc: c_int, argv: [*c]const c.ERL_NIF_TERM) callconv(.C) c.ERL_NIF_TERM {
    _ = argc;

    var path_binary: c.ErlNifBinary = undefined;
    if (c.enif_inspect_binary(env, argv[0], &path_binary) == 0) {
        return c.enif_make_badarg(env);
    }

    // TODO: Convert binary to null-terminated string properly
    // For now, assume path fits in a fixed buffer
    var path_buf: [4096]u8 = undefined;
    const path_len = @min(path_binary.size, path_buf.len - 1);
    @memcpy(path_buf[0..path_len], path_binary.data[0..path_len]);
    path_buf[path_len] = 0; // Null terminate

    const handle = formdb_nif_db_open(@ptrCast(&path_buf));

    if (handle) |h| {
        // TODO: Create resource term for handle
        // For now, return dummy term
        _ = h;
        return c.enif_make_atom(env, "ok");
    } else {
        return c.enif_make_tuple2(
            env,
            c.enif_make_atom(env, "error"),
            c.enif_make_atom(env, "failed_to_open"),
        );
    }
}

fn nif_db_close(env: ?*c.ErlNifEnv, argc: c_int, argv: [*c]const c.ERL_NIF_TERM) callconv(.C) c.ERL_NIF_TERM {
    _ = argc;
    _ = argv;
    // TODO: Extract resource handle from argv[0]
    return c.enif_make_atom(env, "ok");
}

fn nif_txn_begin(env: ?*c.ErlNifEnv, argc: c_int, argv: [*c]const c.ERL_NIF_TERM) callconv(.C) c.ERL_NIF_TERM {
    _ = argc;
    _ = argv;
    // TODO: Implement NIF wrapper
    return c.enif_make_atom(env, "ok");
}

fn nif_txn_commit(env: ?*c.ErlNifEnv, argc: c_int, argv: [*c]const c.ERL_NIF_TERM) callconv(.C) c.ERL_NIF_TERM {
    _ = argc;
    _ = argv;
    // TODO: Implement NIF wrapper
    return c.enif_make_atom(env, "ok");
}

fn nif_txn_abort(env: ?*c.ErlNifEnv, argc: c_int, argv: [*c]const c.ERL_NIF_TERM) callconv(.C) c.ERL_NIF_TERM {
    _ = argc;
    _ = argv;
    // TODO: Implement NIF wrapper
    return c.enif_make_atom(env, "ok");
}

fn nif_apply(env: ?*c.ErlNifEnv, argc: c_int, argv: [*c]const c.ERL_NIF_TERM) callconv(.C) c.ERL_NIF_TERM {
    _ = argc;
    _ = argv;
    // TODO: Implement NIF wrapper
    return c.enif_make_atom(env, "ok");
}

fn nif_schema(env: ?*c.ErlNifEnv, argc: c_int, argv: [*c]const c.ERL_NIF_TERM) callconv(.C) c.ERL_NIF_TERM {
    _ = argc;
    _ = argv;
    // TODO: Implement NIF wrapper
    return c.enif_make_atom(env, "ok");
}

fn nif_journal(env: ?*c.ErlNifEnv, argc: c_int, argv: [*c]const c.ERL_NIF_TERM) callconv(.C) c.ERL_NIF_TERM {
    _ = argc;
    _ = argv;
    // TODO: Implement NIF wrapper
    return c.enif_make_atom(env, "ok");
}

// NIF load function
fn nif_load(env: ?*c.ErlNifEnv, priv_data: [*c]?*anyopaque, load_info: c.ERL_NIF_TERM) callconv(.C) c_int {
    _ = env;
    _ = priv_data;
    _ = load_info;
    // TODO: Initialize resource types
    return 0;
}

// NIF unload function
fn nif_unload(env: ?*c.ErlNifEnv, priv_data: ?*anyopaque) callconv(.C) void {
    _ = env;
    _ = priv_data;
    // Cleanup if needed
}

// NIF entry point
export const formdb_nif_entry = c.ErlNifEntry{
    .major = c.ERL_NIF_MAJOR_VERSION,
    .minor = c.ERL_NIF_MINOR_VERSION,
    .name = "formdb_nif",
    .num_of_funcs = nif_funcs.len,
    .funcs = &nif_funcs,
    .load = nif_load,
    .reload = null,
    .upgrade = null,
    .unload = nif_unload,
    .vm_variant = "beam.vanilla",
    .options = 0,
    .sizeof_ErlNifResourceTypeInit = @sizeOf(c.ErlNifResourceTypeInit),
};

// Tests
test "version" {
    var major: u8 = undefined;
    var minor: u8 = undefined;
    var patch: u8 = undefined;

    formdb_nif_version(&major, &minor, &patch);

    try std.testing.expectEqual(@as(u8, 0), major);
    try std.testing.expectEqual(@as(u8, 1), minor);
    try std.testing.expectEqual(@as(u8, 0), patch);
}

test "db lifecycle" {
    const handle = formdb_nif_db_open("/tmp/test.db");
    try std.testing.expect(handle != null);

    const result = formdb_nif_db_close(handle.?);
    try std.testing.expectEqual(@as(c_int, 0), result);
}
