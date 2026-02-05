// SPDX-License-Identifier: PMPL-1.0-or-later
// Build script for FormDB Zig FFI NIF library (Zig 0.15.2+)

const std = @import("std");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    // Link Erlang NIF headers (platform-specific)
    const erts_include = std.process.getEnvVarOwned(
        b.allocator,
        "ERTS_INCLUDE_DIR"
    ) catch "/usr/lib/erlang/usr/include";

    // Add Lithoglyph core-zig as a module dependency
    const lithoglyph_path = std.process.getEnvVarOwned(
        b.allocator,
        "LITHOGLYPH_PATH"
    ) catch "../../../../lithoglyph/formdb/database/core-zig";

    const lithoglyph_core = b.createModule(.{
        .root_source_file = .{ .cwd_relative =
            b.pathJoin(&.{lithoglyph_path, "src/bridge.zig"})
        },
    });

    // Build shared library for Erlang NIF
    const lib = b.addLibrary(.{
        .name = "formdb_nif",
        .linkage = .dynamic,
        .root_module = b.createModule(.{
            .root_source_file = b.path("src/main.zig"),
            .target = target,
            .optimize = optimize,
            .link_libc = true,
            .imports = &.{
                .{ .name = "lithoglyph", .module = lithoglyph_core },
            },
        }),
    });

    lib.addIncludePath(.{ .cwd_relative = erts_include });

    // Install to priv directory for Erlang to find
    const install_artifact = b.addInstallArtifact(lib, .{
        .dest_dir = .{
            .override = .{
                .custom = "../../priv",
            },
        },
    });
    b.getInstallStep().dependOn(&install_artifact.step);

    // Unit tests
    const main_tests = b.addTest(.{
        .root_module = b.createModule(.{
            .root_source_file = b.path("src/main.zig"),
            .target = target,
            .optimize = optimize,
            .imports = &.{
                .{ .name = "lithoglyph", .module = lithoglyph_core },
            },
        }),
    });

    const run_main_tests = b.addRunArtifact(main_tests);
    const test_step = b.step("test", "Run library tests");
    test_step.dependOn(&run_main_tests.step);

    // Integration tests
    const integration_tests = b.addTest(.{
        .root_module = b.createModule(.{
            .root_source_file = b.path("test/integration_test.zig"),
            .target = target,
            .optimize = optimize,
            .imports = &.{
                .{ .name = "main", .module = lib.root_module },
            },
        }),
    });

    const run_integration_tests = b.addRunArtifact(integration_tests);
    const integration_test_step = b.step("test-integration", "Run integration tests");
    integration_test_step.dependOn(&run_integration_tests.step);
}
