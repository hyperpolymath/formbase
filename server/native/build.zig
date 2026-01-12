// SPDX-License-Identifier: AGPL-3.0-or-later
// Build configuration for FormDB NIF

const std = @import("std");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    // Find Erlang include directory
    const erl_include = blk: {
        // Try to get from environment
        if (std.process.getEnvVarOwned(b.allocator, "ERL_INCLUDE_PATH")) |path| {
            break :blk path;
        } else |_| {}

        // Try to find via erl command
        const result = std.process.Child.run(.{
            .allocator = b.allocator,
            .argv = &.{ "erl", "-noshell", "-eval", "io:format(\"~s\", [code:root_dir()])", "-s", "init", "stop" },
        }) catch {
            @panic("Failed to find Erlang installation. Set ERL_INCLUDE_PATH.");
        };

        const root_dir = std.mem.trim(u8, result.stdout, &std.ascii.whitespace);
        break :blk b.fmt("{s}/usr/include", .{root_dir});
    };

    // Build the NIF shared library
    const lib = b.addSharedLibrary(.{
        .name = "formdb_nif",
        .root_source_file = b.path("src/formdb_nif.zig"),
        .target = target,
        .optimize = optimize,
    });

    // Add Erlang NIF headers
    lib.addIncludePath(.{ .cwd_relative = erl_include });

    // Link against FormDB
    // In production, this would link against libformdb.so
    // For now, we'll add a stub or expect FormDB to be linked separately
    if (b.option([]const u8, "formdb-path", "Path to FormDB library")) |formdb_path| {
        lib.addLibraryPath(.{ .cwd_relative = formdb_path });
        lib.linkSystemLibrary("formdb");
    }

    // Link libc for system calls
    lib.linkLibC();

    // Install to priv directory
    const install = b.addInstallArtifact(lib, .{
        .dest_dir = .{ .override = .{ .custom = "../priv" } },
    });

    b.getInstallStep().dependOn(&install.step);

    // Tests
    const unit_tests = b.addTest(.{
        .root_source_file = b.path("src/formdb_nif.zig"),
        .target = target,
        .optimize = optimize,
    });

    unit_tests.addIncludePath(.{ .cwd_relative = erl_include });

    const run_unit_tests = b.addRunArtifact(unit_tests);
    const test_step = b.step("test", "Run unit tests");
    test_step.dependOn(&run_unit_tests.step);
}
