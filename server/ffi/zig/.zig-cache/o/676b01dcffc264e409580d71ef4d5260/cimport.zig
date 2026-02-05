pub const __builtin_bswap16 = @import("std").zig.c_builtins.__builtin_bswap16;
pub const __builtin_bswap32 = @import("std").zig.c_builtins.__builtin_bswap32;
pub const __builtin_bswap64 = @import("std").zig.c_builtins.__builtin_bswap64;
pub const __builtin_signbit = @import("std").zig.c_builtins.__builtin_signbit;
pub const __builtin_signbitf = @import("std").zig.c_builtins.__builtin_signbitf;
pub const __builtin_popcount = @import("std").zig.c_builtins.__builtin_popcount;
pub const __builtin_ctz = @import("std").zig.c_builtins.__builtin_ctz;
pub const __builtin_clz = @import("std").zig.c_builtins.__builtin_clz;
pub const __builtin_sqrt = @import("std").zig.c_builtins.__builtin_sqrt;
pub const __builtin_sqrtf = @import("std").zig.c_builtins.__builtin_sqrtf;
pub const __builtin_sin = @import("std").zig.c_builtins.__builtin_sin;
pub const __builtin_sinf = @import("std").zig.c_builtins.__builtin_sinf;
pub const __builtin_cos = @import("std").zig.c_builtins.__builtin_cos;
pub const __builtin_cosf = @import("std").zig.c_builtins.__builtin_cosf;
pub const __builtin_exp = @import("std").zig.c_builtins.__builtin_exp;
pub const __builtin_expf = @import("std").zig.c_builtins.__builtin_expf;
pub const __builtin_exp2 = @import("std").zig.c_builtins.__builtin_exp2;
pub const __builtin_exp2f = @import("std").zig.c_builtins.__builtin_exp2f;
pub const __builtin_log = @import("std").zig.c_builtins.__builtin_log;
pub const __builtin_logf = @import("std").zig.c_builtins.__builtin_logf;
pub const __builtin_log2 = @import("std").zig.c_builtins.__builtin_log2;
pub const __builtin_log2f = @import("std").zig.c_builtins.__builtin_log2f;
pub const __builtin_log10 = @import("std").zig.c_builtins.__builtin_log10;
pub const __builtin_log10f = @import("std").zig.c_builtins.__builtin_log10f;
pub const __builtin_abs = @import("std").zig.c_builtins.__builtin_abs;
pub const __builtin_labs = @import("std").zig.c_builtins.__builtin_labs;
pub const __builtin_llabs = @import("std").zig.c_builtins.__builtin_llabs;
pub const __builtin_fabs = @import("std").zig.c_builtins.__builtin_fabs;
pub const __builtin_fabsf = @import("std").zig.c_builtins.__builtin_fabsf;
pub const __builtin_floor = @import("std").zig.c_builtins.__builtin_floor;
pub const __builtin_floorf = @import("std").zig.c_builtins.__builtin_floorf;
pub const __builtin_ceil = @import("std").zig.c_builtins.__builtin_ceil;
pub const __builtin_ceilf = @import("std").zig.c_builtins.__builtin_ceilf;
pub const __builtin_trunc = @import("std").zig.c_builtins.__builtin_trunc;
pub const __builtin_truncf = @import("std").zig.c_builtins.__builtin_truncf;
pub const __builtin_round = @import("std").zig.c_builtins.__builtin_round;
pub const __builtin_roundf = @import("std").zig.c_builtins.__builtin_roundf;
pub const __builtin_strlen = @import("std").zig.c_builtins.__builtin_strlen;
pub const __builtin_strcmp = @import("std").zig.c_builtins.__builtin_strcmp;
pub const __builtin_object_size = @import("std").zig.c_builtins.__builtin_object_size;
pub const __builtin___memset_chk = @import("std").zig.c_builtins.__builtin___memset_chk;
pub const __builtin_memset = @import("std").zig.c_builtins.__builtin_memset;
pub const __builtin___memcpy_chk = @import("std").zig.c_builtins.__builtin___memcpy_chk;
pub const __builtin_memcpy = @import("std").zig.c_builtins.__builtin_memcpy;
pub const __builtin_expect = @import("std").zig.c_builtins.__builtin_expect;
pub const __builtin_nanf = @import("std").zig.c_builtins.__builtin_nanf;
pub const __builtin_huge_valf = @import("std").zig.c_builtins.__builtin_huge_valf;
pub const __builtin_inff = @import("std").zig.c_builtins.__builtin_inff;
pub const __builtin_isnan = @import("std").zig.c_builtins.__builtin_isnan;
pub const __builtin_isinf = @import("std").zig.c_builtins.__builtin_isinf;
pub const __builtin_isinf_sign = @import("std").zig.c_builtins.__builtin_isinf_sign;
pub const __has_builtin = @import("std").zig.c_builtins.__has_builtin;
pub const __builtin_assume = @import("std").zig.c_builtins.__builtin_assume;
pub const __builtin_unreachable = @import("std").zig.c_builtins.__builtin_unreachable;
pub const __builtin_constant_p = @import("std").zig.c_builtins.__builtin_constant_p;
pub const __builtin_mul_overflow = @import("std").zig.c_builtins.__builtin_mul_overflow;
pub const ErlDrvSysInfo = extern struct {
    driver_major_version: c_int = @import("std").mem.zeroes(c_int),
    driver_minor_version: c_int = @import("std").mem.zeroes(c_int),
    erts_version: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    otp_release: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    thread_support: c_int = @import("std").mem.zeroes(c_int),
    smp_support: c_int = @import("std").mem.zeroes(c_int),
    async_threads: c_int = @import("std").mem.zeroes(c_int),
    scheduler_threads: c_int = @import("std").mem.zeroes(c_int),
    nif_major_version: c_int = @import("std").mem.zeroes(c_int),
    nif_minor_version: c_int = @import("std").mem.zeroes(c_int),
    dirty_scheduler_support: c_int = @import("std").mem.zeroes(c_int),
};
pub const ErlDrvThreadOpts = extern struct {
    suggested_stack_size: c_int = @import("std").mem.zeroes(c_int),
};
pub const ERL_DIRTY_JOB_CPU_BOUND: c_int = 1;
pub const ERL_DIRTY_JOB_IO_BOUND: c_int = 2;
pub const ErlDirtyJobFlags = c_uint;
pub const ERL_NIF_SELECT_READ: c_int = 1;
pub const ERL_NIF_SELECT_WRITE: c_int = 2;
pub const ERL_NIF_SELECT_STOP: c_int = 4;
pub const ERL_NIF_SELECT_CANCEL: c_int = 8;
pub const ERL_NIF_SELECT_CUSTOM_MSG: c_int = 16;
pub const ERL_NIF_SELECT_ERROR: c_int = 32;
pub const enum_ErlNifSelectFlags = c_uint;
pub const ErlDrvMonitor = extern struct {
    data: [32]u8 = @import("std").mem.zeroes([32]u8),
};
pub const ErlNapiUInt64 = c_ulong;
pub const ErlNapiSInt64 = c_long;
pub const ErlNapiUInt = ErlNapiUInt64;
pub const ErlNapiSInt = ErlNapiSInt64;
pub const __u_char = u8;
pub const __u_short = c_ushort;
pub const __u_int = c_uint;
pub const __u_long = c_ulong;
pub const __int8_t = i8;
pub const __uint8_t = u8;
pub const __int16_t = c_short;
pub const __uint16_t = c_ushort;
pub const __int32_t = c_int;
pub const __uint32_t = c_uint;
pub const __int64_t = c_long;
pub const __uint64_t = c_ulong;
pub const __int_least8_t = __int8_t;
pub const __uint_least8_t = __uint8_t;
pub const __int_least16_t = __int16_t;
pub const __uint_least16_t = __uint16_t;
pub const __int_least32_t = __int32_t;
pub const __uint_least32_t = __uint32_t;
pub const __int_least64_t = __int64_t;
pub const __uint_least64_t = __uint64_t;
pub const __quad_t = c_long;
pub const __u_quad_t = c_ulong;
pub const __intmax_t = c_long;
pub const __uintmax_t = c_ulong;
pub const __dev_t = c_ulong;
pub const __uid_t = c_uint;
pub const __gid_t = c_uint;
pub const __ino_t = c_ulong;
pub const __ino64_t = c_ulong;
pub const __mode_t = c_uint;
pub const __nlink_t = c_ulong;
pub const __off_t = c_long;
pub const __off64_t = c_long;
pub const __pid_t = c_int;
pub const __fsid_t = extern struct {
    __val: [2]c_int = @import("std").mem.zeroes([2]c_int),
};
pub const __clock_t = c_long;
pub const __rlim_t = c_ulong;
pub const __rlim64_t = c_ulong;
pub const __id_t = c_uint;
pub const __time_t = c_long;
pub const __useconds_t = c_uint;
pub const __suseconds_t = c_long;
pub const __suseconds64_t = c_long;
pub const __daddr_t = c_int;
pub const __key_t = c_int;
pub const __clockid_t = c_int;
pub const __timer_t = ?*anyopaque;
pub const __blksize_t = c_long;
pub const __blkcnt_t = c_long;
pub const __blkcnt64_t = c_long;
pub const __fsblkcnt_t = c_ulong;
pub const __fsblkcnt64_t = c_ulong;
pub const __fsfilcnt_t = c_ulong;
pub const __fsfilcnt64_t = c_ulong;
pub const __fsword_t = c_long;
pub const __ssize_t = c_long;
pub const __syscall_slong_t = c_long;
pub const __syscall_ulong_t = c_ulong;
pub const __loff_t = __off64_t;
pub const __caddr_t = [*c]u8;
pub const __intptr_t = c_long;
pub const __socklen_t = c_uint;
pub const __sig_atomic_t = c_int;
pub const u_char = __u_char;
pub const u_short = __u_short;
pub const u_int = __u_int;
pub const u_long = __u_long;
pub const quad_t = __quad_t;
pub const u_quad_t = __u_quad_t;
pub const fsid_t = __fsid_t;
pub const loff_t = __loff_t;
pub const ino_t = __ino_t;
pub const dev_t = __dev_t;
pub const gid_t = __gid_t;
pub const mode_t = __mode_t;
pub const nlink_t = __nlink_t;
pub const uid_t = __uid_t;
pub const off_t = __off_t;
pub const pid_t = __pid_t;
pub const id_t = __id_t;
pub const daddr_t = __daddr_t;
pub const caddr_t = __caddr_t;
pub const key_t = __key_t;
pub const clock_t = __clock_t;
pub const clockid_t = __clockid_t;
pub const time_t = __time_t;
pub const timer_t = __timer_t;
pub const ulong = c_ulong;
pub const ushort = c_ushort;
pub const uint = c_uint;
pub const u_int8_t = __uint8_t;
pub const u_int16_t = __uint16_t;
pub const u_int32_t = __uint32_t;
pub const u_int64_t = __uint64_t;
pub const register_t = c_long;
pub fn __bswap_16(arg___bsx: __uint16_t) callconv(.c) __uint16_t {
    var __bsx = arg___bsx;
    _ = &__bsx;
    return @as(__uint16_t, @bitCast(@as(c_short, @truncate(((@as(c_int, @bitCast(@as(c_uint, __bsx))) >> @intCast(8)) & @as(c_int, 255)) | ((@as(c_int, @bitCast(@as(c_uint, __bsx))) & @as(c_int, 255)) << @intCast(8))))));
}
pub fn __bswap_32(arg___bsx: __uint32_t) callconv(.c) __uint32_t {
    var __bsx = arg___bsx;
    _ = &__bsx;
    return ((((__bsx & @as(c_uint, 4278190080)) >> @intCast(24)) | ((__bsx & @as(c_uint, 16711680)) >> @intCast(8))) | ((__bsx & @as(c_uint, 65280)) << @intCast(8))) | ((__bsx & @as(c_uint, 255)) << @intCast(24));
}
pub fn __bswap_64(arg___bsx: __uint64_t) callconv(.c) __uint64_t {
    var __bsx = arg___bsx;
    _ = &__bsx;
    return @as(__uint64_t, @bitCast(@as(c_ulong, @truncate(((((((((@as(c_ulonglong, @bitCast(@as(c_ulonglong, __bsx))) & @as(c_ulonglong, 18374686479671623680)) >> @intCast(56)) | ((@as(c_ulonglong, @bitCast(@as(c_ulonglong, __bsx))) & @as(c_ulonglong, 71776119061217280)) >> @intCast(40))) | ((@as(c_ulonglong, @bitCast(@as(c_ulonglong, __bsx))) & @as(c_ulonglong, 280375465082880)) >> @intCast(24))) | ((@as(c_ulonglong, @bitCast(@as(c_ulonglong, __bsx))) & @as(c_ulonglong, 1095216660480)) >> @intCast(8))) | ((@as(c_ulonglong, @bitCast(@as(c_ulonglong, __bsx))) & @as(c_ulonglong, 4278190080)) << @intCast(8))) | ((@as(c_ulonglong, @bitCast(@as(c_ulonglong, __bsx))) & @as(c_ulonglong, 16711680)) << @intCast(24))) | ((@as(c_ulonglong, @bitCast(@as(c_ulonglong, __bsx))) & @as(c_ulonglong, 65280)) << @intCast(40))) | ((@as(c_ulonglong, @bitCast(@as(c_ulonglong, __bsx))) & @as(c_ulonglong, 255)) << @intCast(56))))));
}
pub fn __uint16_identity(arg___x: __uint16_t) callconv(.c) __uint16_t {
    var __x = arg___x;
    _ = &__x;
    return __x;
}
pub fn __uint32_identity(arg___x: __uint32_t) callconv(.c) __uint32_t {
    var __x = arg___x;
    _ = &__x;
    return __x;
}
pub fn __uint64_identity(arg___x: __uint64_t) callconv(.c) __uint64_t {
    var __x = arg___x;
    _ = &__x;
    return __x;
}
pub const __sigset_t = extern struct {
    __val: [16]c_ulong = @import("std").mem.zeroes([16]c_ulong),
};
pub const sigset_t = __sigset_t;
pub const struct_timeval = extern struct {
    tv_sec: __time_t = @import("std").mem.zeroes(__time_t),
    tv_usec: __suseconds_t = @import("std").mem.zeroes(__suseconds_t),
};
pub const struct_timespec = extern struct {
    tv_sec: __time_t = @import("std").mem.zeroes(__time_t),
    tv_nsec: __syscall_slong_t = @import("std").mem.zeroes(__syscall_slong_t),
};
pub const suseconds_t = __suseconds_t;
pub const __fd_mask = c_long;
pub const fd_set = extern struct {
    __fds_bits: [16]__fd_mask = @import("std").mem.zeroes([16]__fd_mask),
};
pub const fd_mask = __fd_mask;
pub extern fn select(__nfds: c_int, noalias __readfds: [*c]fd_set, noalias __writefds: [*c]fd_set, noalias __exceptfds: [*c]fd_set, noalias __timeout: [*c]struct_timeval) c_int;
pub extern fn pselect(__nfds: c_int, noalias __readfds: [*c]fd_set, noalias __writefds: [*c]fd_set, noalias __exceptfds: [*c]fd_set, noalias __timeout: [*c]const struct_timespec, noalias __sigmask: [*c]const __sigset_t) c_int;
pub const blksize_t = __blksize_t;
pub const blkcnt_t = __blkcnt_t;
pub const fsblkcnt_t = __fsblkcnt_t;
pub const fsfilcnt_t = __fsfilcnt_t;
const struct_unnamed_1 = extern struct {
    __low: c_uint = @import("std").mem.zeroes(c_uint),
    __high: c_uint = @import("std").mem.zeroes(c_uint),
};
pub const __atomic_wide_counter = extern union {
    __value64: c_ulonglong,
    __value32: struct_unnamed_1,
};
pub const struct___pthread_internal_list = extern struct {
    __prev: [*c]struct___pthread_internal_list = @import("std").mem.zeroes([*c]struct___pthread_internal_list),
    __next: [*c]struct___pthread_internal_list = @import("std").mem.zeroes([*c]struct___pthread_internal_list),
};
pub const __pthread_list_t = struct___pthread_internal_list;
pub const struct___pthread_internal_slist = extern struct {
    __next: [*c]struct___pthread_internal_slist = @import("std").mem.zeroes([*c]struct___pthread_internal_slist),
};
pub const __pthread_slist_t = struct___pthread_internal_slist;
pub const struct___pthread_mutex_s = extern struct {
    __lock: c_int = @import("std").mem.zeroes(c_int),
    __count: c_uint = @import("std").mem.zeroes(c_uint),
    __owner: c_int = @import("std").mem.zeroes(c_int),
    __nusers: c_uint = @import("std").mem.zeroes(c_uint),
    __kind: c_int = @import("std").mem.zeroes(c_int),
    __spins: c_short = @import("std").mem.zeroes(c_short),
    __elision: c_short = @import("std").mem.zeroes(c_short),
    __list: __pthread_list_t = @import("std").mem.zeroes(__pthread_list_t),
};
pub const struct___pthread_rwlock_arch_t = extern struct {
    __readers: c_uint = @import("std").mem.zeroes(c_uint),
    __writers: c_uint = @import("std").mem.zeroes(c_uint),
    __wrphase_futex: c_uint = @import("std").mem.zeroes(c_uint),
    __writers_futex: c_uint = @import("std").mem.zeroes(c_uint),
    __pad3: c_uint = @import("std").mem.zeroes(c_uint),
    __pad4: c_uint = @import("std").mem.zeroes(c_uint),
    __cur_writer: c_int = @import("std").mem.zeroes(c_int),
    __shared: c_int = @import("std").mem.zeroes(c_int),
    __rwelision: i8 = @import("std").mem.zeroes(i8),
    __pad1: [7]u8 = @import("std").mem.zeroes([7]u8),
    __pad2: c_ulong = @import("std").mem.zeroes(c_ulong),
    __flags: c_uint = @import("std").mem.zeroes(c_uint),
};
pub const struct___pthread_cond_s = extern struct {
    __wseq: __atomic_wide_counter = @import("std").mem.zeroes(__atomic_wide_counter),
    __g1_start: __atomic_wide_counter = @import("std").mem.zeroes(__atomic_wide_counter),
    __g_size: [2]c_uint = @import("std").mem.zeroes([2]c_uint),
    __g1_orig_size: c_uint = @import("std").mem.zeroes(c_uint),
    __wrefs: c_uint = @import("std").mem.zeroes(c_uint),
    __g_signals: [2]c_uint = @import("std").mem.zeroes([2]c_uint),
    __unused_initialized_1: c_uint = @import("std").mem.zeroes(c_uint),
    __unused_initialized_2: c_uint = @import("std").mem.zeroes(c_uint),
};
pub const __tss_t = c_uint;
pub const __thrd_t = c_ulong;
pub const __once_flag = extern struct {
    __data: c_int = @import("std").mem.zeroes(c_int),
};
pub const pthread_t = c_ulong;
pub const pthread_mutexattr_t = extern union {
    __size: [4]u8,
    __align: c_int,
};
pub const pthread_condattr_t = extern union {
    __size: [4]u8,
    __align: c_int,
};
pub const pthread_key_t = c_uint;
pub const pthread_once_t = c_int;
pub const union_pthread_attr_t = extern union {
    __size: [56]u8,
    __align: c_long,
};
pub const pthread_attr_t = union_pthread_attr_t;
pub const pthread_mutex_t = extern union {
    __data: struct___pthread_mutex_s,
    __size: [40]u8,
    __align: c_long,
};
pub const pthread_cond_t = extern union {
    __data: struct___pthread_cond_s,
    __size: [48]u8,
    __align: c_longlong,
};
pub const pthread_rwlock_t = extern union {
    __data: struct___pthread_rwlock_arch_t,
    __size: [56]u8,
    __align: c_long,
};
pub const pthread_rwlockattr_t = extern union {
    __size: [8]u8,
    __align: c_long,
};
pub const pthread_spinlock_t = c_int;
pub const pthread_barrier_t = extern union {
    __size: [32]u8,
    __align: c_long,
};
pub const pthread_barrierattr_t = extern union {
    __size: [4]u8,
    __align: c_int,
};
pub const SysIOVec = extern struct {
    iov_base: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    iov_len: usize = @import("std").mem.zeroes(usize),
};
pub const wchar_t = c_int;
// /usr/include/bits/floatn.h:83:24: warning: unsupported type: 'Complex'
pub const __cfloat128 = @compileError("unable to resolve typedef child type");
// /usr/include/bits/floatn.h:83:24
pub const _Float128 = f128;
pub const _Float32 = f32;
pub const _Float64 = f64;
pub const _Float32x = f64;
pub const _Float64x = c_longdouble;
pub const div_t = extern struct {
    quot: c_int = @import("std").mem.zeroes(c_int),
    rem: c_int = @import("std").mem.zeroes(c_int),
};
pub const ldiv_t = extern struct {
    quot: c_long = @import("std").mem.zeroes(c_long),
    rem: c_long = @import("std").mem.zeroes(c_long),
};
pub const lldiv_t = extern struct {
    quot: c_longlong = @import("std").mem.zeroes(c_longlong),
    rem: c_longlong = @import("std").mem.zeroes(c_longlong),
};
pub extern fn __ctype_get_mb_cur_max() usize;
pub extern fn atof(__nptr: [*c]const u8) f64;
pub extern fn atoi(__nptr: [*c]const u8) c_int;
pub extern fn atol(__nptr: [*c]const u8) c_long;
pub extern fn atoll(__nptr: [*c]const u8) c_longlong;
pub extern fn strtod(__nptr: [*c]const u8, __endptr: [*c][*c]u8) f64;
pub extern fn strtof(__nptr: [*c]const u8, __endptr: [*c][*c]u8) f32;
pub extern fn strtold(__nptr: [*c]const u8, __endptr: [*c][*c]u8) c_longdouble;
pub extern fn strtol(__nptr: [*c]const u8, __endptr: [*c][*c]u8, __base: c_int) c_long;
pub extern fn strtoul(__nptr: [*c]const u8, __endptr: [*c][*c]u8, __base: c_int) c_ulong;
pub extern fn strtoq(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8, __base: c_int) c_longlong;
pub extern fn strtouq(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8, __base: c_int) c_ulonglong;
pub extern fn strtoll(__nptr: [*c]const u8, __endptr: [*c][*c]u8, __base: c_int) c_longlong;
pub extern fn strtoull(__nptr: [*c]const u8, __endptr: [*c][*c]u8, __base: c_int) c_ulonglong;
pub extern fn l64a(__n: c_long) [*c]u8;
pub extern fn a64l(__s: [*c]const u8) c_long;
pub extern fn random() c_long;
pub extern fn srandom(__seed: c_uint) void;
pub extern fn initstate(__seed: c_uint, __statebuf: [*c]u8, __statelen: usize) [*c]u8;
pub extern fn setstate(__statebuf: [*c]u8) [*c]u8;
pub const struct_random_data = extern struct {
    fptr: [*c]i32 = @import("std").mem.zeroes([*c]i32),
    rptr: [*c]i32 = @import("std").mem.zeroes([*c]i32),
    state: [*c]i32 = @import("std").mem.zeroes([*c]i32),
    rand_type: c_int = @import("std").mem.zeroes(c_int),
    rand_deg: c_int = @import("std").mem.zeroes(c_int),
    rand_sep: c_int = @import("std").mem.zeroes(c_int),
    end_ptr: [*c]i32 = @import("std").mem.zeroes([*c]i32),
};
pub extern fn random_r(noalias __buf: [*c]struct_random_data, noalias __result: [*c]i32) c_int;
pub extern fn srandom_r(__seed: c_uint, __buf: [*c]struct_random_data) c_int;
pub extern fn initstate_r(__seed: c_uint, noalias __statebuf: [*c]u8, __statelen: usize, noalias __buf: [*c]struct_random_data) c_int;
pub extern fn setstate_r(noalias __statebuf: [*c]u8, noalias __buf: [*c]struct_random_data) c_int;
pub extern fn rand() c_int;
pub extern fn srand(__seed: c_uint) void;
pub extern fn rand_r(__seed: [*c]c_uint) c_int;
pub extern fn drand48() f64;
pub extern fn erand48(__xsubi: [*c]c_ushort) f64;
pub extern fn lrand48() c_long;
pub extern fn nrand48(__xsubi: [*c]c_ushort) c_long;
pub extern fn mrand48() c_long;
pub extern fn jrand48(__xsubi: [*c]c_ushort) c_long;
pub extern fn srand48(__seedval: c_long) void;
pub extern fn seed48(__seed16v: [*c]c_ushort) [*c]c_ushort;
pub extern fn lcong48(__param: [*c]c_ushort) void;
pub const struct_drand48_data = extern struct {
    __x: [3]c_ushort = @import("std").mem.zeroes([3]c_ushort),
    __old_x: [3]c_ushort = @import("std").mem.zeroes([3]c_ushort),
    __c: c_ushort = @import("std").mem.zeroes(c_ushort),
    __init: c_ushort = @import("std").mem.zeroes(c_ushort),
    __a: c_ulonglong = @import("std").mem.zeroes(c_ulonglong),
};
pub extern fn drand48_r(noalias __buffer: [*c]struct_drand48_data, noalias __result: [*c]f64) c_int;
pub extern fn erand48_r(__xsubi: [*c]c_ushort, noalias __buffer: [*c]struct_drand48_data, noalias __result: [*c]f64) c_int;
pub extern fn lrand48_r(noalias __buffer: [*c]struct_drand48_data, noalias __result: [*c]c_long) c_int;
pub extern fn nrand48_r(__xsubi: [*c]c_ushort, noalias __buffer: [*c]struct_drand48_data, noalias __result: [*c]c_long) c_int;
pub extern fn mrand48_r(noalias __buffer: [*c]struct_drand48_data, noalias __result: [*c]c_long) c_int;
pub extern fn jrand48_r(__xsubi: [*c]c_ushort, noalias __buffer: [*c]struct_drand48_data, noalias __result: [*c]c_long) c_int;
pub extern fn srand48_r(__seedval: c_long, __buffer: [*c]struct_drand48_data) c_int;
pub extern fn seed48_r(__seed16v: [*c]c_ushort, __buffer: [*c]struct_drand48_data) c_int;
pub extern fn lcong48_r(__param: [*c]c_ushort, __buffer: [*c]struct_drand48_data) c_int;
pub extern fn arc4random() __uint32_t;
pub extern fn arc4random_buf(__buf: ?*anyopaque, __size: usize) void;
pub extern fn arc4random_uniform(__upper_bound: __uint32_t) __uint32_t;
pub extern fn malloc(__size: c_ulong) ?*anyopaque;
pub extern fn calloc(__nmemb: c_ulong, __size: c_ulong) ?*anyopaque;
pub extern fn realloc(__ptr: ?*anyopaque, __size: c_ulong) ?*anyopaque;
pub extern fn free(__ptr: ?*anyopaque) void;
pub extern fn reallocarray(__ptr: ?*anyopaque, __nmemb: usize, __size: usize) ?*anyopaque;
pub extern fn alloca(__size: c_ulong) ?*anyopaque;
pub extern fn valloc(__size: usize) ?*anyopaque;
pub extern fn posix_memalign(__memptr: [*c]?*anyopaque, __alignment: usize, __size: usize) c_int;
pub extern fn aligned_alloc(__alignment: c_ulong, __size: c_ulong) ?*anyopaque;
pub extern fn abort() noreturn;
pub extern fn atexit(__func: ?*const fn () callconv(.c) void) c_int;
pub extern fn at_quick_exit(__func: ?*const fn () callconv(.c) void) c_int;
pub extern fn on_exit(__func: ?*const fn (c_int, ?*anyopaque) callconv(.c) void, __arg: ?*anyopaque) c_int;
pub extern fn exit(__status: c_int) noreturn;
pub extern fn quick_exit(__status: c_int) noreturn;
pub extern fn _Exit(__status: c_int) noreturn;
pub extern fn getenv(__name: [*c]const u8) [*c]u8;
pub extern fn putenv(__string: [*c]u8) c_int;
pub extern fn setenv(__name: [*c]const u8, __value: [*c]const u8, __replace: c_int) c_int;
pub extern fn unsetenv(__name: [*c]const u8) c_int;
pub extern fn clearenv() c_int;
pub extern fn mktemp(__template: [*c]u8) [*c]u8;
pub extern fn mkstemp(__template: [*c]u8) c_int;
pub extern fn mkstemps(__template: [*c]u8, __suffixlen: c_int) c_int;
pub extern fn mkdtemp(__template: [*c]u8) [*c]u8;
pub extern fn system(__command: [*c]const u8) c_int;
pub extern fn realpath(noalias __name: [*c]const u8, noalias __resolved: [*c]u8) [*c]u8;
pub const __compar_fn_t = ?*const fn (?*const anyopaque, ?*const anyopaque) callconv(.c) c_int;
pub extern fn bsearch(__key: ?*const anyopaque, __base: ?*const anyopaque, __nmemb: usize, __size: usize, __compar: __compar_fn_t) ?*anyopaque;
pub extern fn qsort(__base: ?*anyopaque, __nmemb: usize, __size: usize, __compar: __compar_fn_t) void;
pub extern fn abs(__x: c_int) c_int;
pub extern fn labs(__x: c_long) c_long;
pub extern fn llabs(__x: c_longlong) c_longlong;
pub extern fn div(__numer: c_int, __denom: c_int) div_t;
pub extern fn ldiv(__numer: c_long, __denom: c_long) ldiv_t;
pub extern fn lldiv(__numer: c_longlong, __denom: c_longlong) lldiv_t;
pub extern fn ecvt(__value: f64, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int) [*c]u8;
pub extern fn fcvt(__value: f64, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int) [*c]u8;
pub extern fn gcvt(__value: f64, __ndigit: c_int, __buf: [*c]u8) [*c]u8;
pub extern fn qecvt(__value: c_longdouble, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int) [*c]u8;
pub extern fn qfcvt(__value: c_longdouble, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int) [*c]u8;
pub extern fn qgcvt(__value: c_longdouble, __ndigit: c_int, __buf: [*c]u8) [*c]u8;
pub extern fn ecvt_r(__value: f64, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int, noalias __buf: [*c]u8, __len: usize) c_int;
pub extern fn fcvt_r(__value: f64, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int, noalias __buf: [*c]u8, __len: usize) c_int;
pub extern fn qecvt_r(__value: c_longdouble, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int, noalias __buf: [*c]u8, __len: usize) c_int;
pub extern fn qfcvt_r(__value: c_longdouble, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int, noalias __buf: [*c]u8, __len: usize) c_int;
pub extern fn mblen(__s: [*c]const u8, __n: usize) c_int;
pub extern fn mbtowc(noalias __pwc: [*c]wchar_t, noalias __s: [*c]const u8, __n: usize) c_int;
pub extern fn wctomb(__s: [*c]u8, __wchar: wchar_t) c_int;
pub extern fn mbstowcs(noalias __pwcs: [*c]wchar_t, noalias __s: [*c]const u8, __n: usize) usize;
pub extern fn wcstombs(noalias __s: [*c]u8, noalias __pwcs: [*c]const wchar_t, __n: usize) usize;
pub extern fn rpmatch(__response: [*c]const u8) c_int;
pub extern fn getsubopt(noalias __optionp: [*c][*c]u8, noalias __tokens: [*c]const [*c]u8, noalias __valuep: [*c][*c]u8) c_int;
pub extern fn getloadavg(__loadavg: [*c]f64, __nelem: c_int) c_int;
pub const struct___va_list_tag_2 = extern struct {
    gp_offset: c_uint = @import("std").mem.zeroes(c_uint),
    fp_offset: c_uint = @import("std").mem.zeroes(c_uint),
    overflow_arg_area: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    reg_save_area: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
pub const __builtin_va_list = [1]struct___va_list_tag_2;
pub const __gnuc_va_list = __builtin_va_list;
const union_unnamed_3 = extern union {
    __wch: c_uint,
    __wchb: [4]u8,
};
pub const __mbstate_t = extern struct {
    __count: c_int = @import("std").mem.zeroes(c_int),
    __value: union_unnamed_3 = @import("std").mem.zeroes(union_unnamed_3),
};
pub const struct__G_fpos_t = extern struct {
    __pos: __off_t = @import("std").mem.zeroes(__off_t),
    __state: __mbstate_t = @import("std").mem.zeroes(__mbstate_t),
};
pub const __fpos_t = struct__G_fpos_t;
pub const struct__G_fpos64_t = extern struct {
    __pos: __off64_t = @import("std").mem.zeroes(__off64_t),
    __state: __mbstate_t = @import("std").mem.zeroes(__mbstate_t),
};
pub const __fpos64_t = struct__G_fpos64_t;
pub const struct__IO_marker = opaque {};
// /usr/include/bits/types/struct_FILE.h:75:7: warning: struct demoted to opaque type - has bitfield
pub const struct__IO_FILE = opaque {};
pub const __FILE = struct__IO_FILE;
pub const FILE = struct__IO_FILE;
pub const struct__IO_codecvt = opaque {};
pub const struct__IO_wide_data = opaque {};
pub const _IO_lock_t = anyopaque;
pub const cookie_read_function_t = fn (?*anyopaque, [*c]u8, usize) callconv(.c) __ssize_t;
pub const cookie_write_function_t = fn (?*anyopaque, [*c]const u8, usize) callconv(.c) __ssize_t;
pub const cookie_seek_function_t = fn (?*anyopaque, [*c]__off64_t, c_int) callconv(.c) c_int;
pub const cookie_close_function_t = fn (?*anyopaque) callconv(.c) c_int;
pub const struct__IO_cookie_io_functions_t = extern struct {
    read: ?*const cookie_read_function_t = @import("std").mem.zeroes(?*const cookie_read_function_t),
    write: ?*const cookie_write_function_t = @import("std").mem.zeroes(?*const cookie_write_function_t),
    seek: ?*const cookie_seek_function_t = @import("std").mem.zeroes(?*const cookie_seek_function_t),
    close: ?*const cookie_close_function_t = @import("std").mem.zeroes(?*const cookie_close_function_t),
};
pub const cookie_io_functions_t = struct__IO_cookie_io_functions_t;
pub const va_list = __gnuc_va_list;
pub const fpos_t = __fpos_t;
pub extern var stdin: ?*FILE;
pub extern var stdout: ?*FILE;
pub extern var stderr: ?*FILE;
pub extern fn remove(__filename: [*c]const u8) c_int;
pub extern fn rename(__old: [*c]const u8, __new: [*c]const u8) c_int;
pub extern fn renameat(__oldfd: c_int, __old: [*c]const u8, __newfd: c_int, __new: [*c]const u8) c_int;
pub extern fn fclose(__stream: ?*FILE) c_int;
pub extern fn tmpfile() ?*FILE;
pub extern fn tmpnam([*c]u8) [*c]u8;
pub extern fn tmpnam_r(__s: [*c]u8) [*c]u8;
pub extern fn tempnam(__dir: [*c]const u8, __pfx: [*c]const u8) [*c]u8;
pub extern fn fflush(__stream: ?*FILE) c_int;
pub extern fn fflush_unlocked(__stream: ?*FILE) c_int;
pub extern fn fopen(__filename: [*c]const u8, __modes: [*c]const u8) ?*FILE;
pub extern fn freopen(noalias __filename: [*c]const u8, noalias __modes: [*c]const u8, noalias __stream: ?*FILE) ?*FILE;
pub extern fn fdopen(__fd: c_int, __modes: [*c]const u8) ?*FILE;
pub extern fn fopencookie(noalias __magic_cookie: ?*anyopaque, noalias __modes: [*c]const u8, __io_funcs: cookie_io_functions_t) ?*FILE;
pub extern fn fmemopen(__s: ?*anyopaque, __len: usize, __modes: [*c]const u8) ?*FILE;
pub extern fn open_memstream(__bufloc: [*c][*c]u8, __sizeloc: [*c]usize) ?*FILE;
pub extern fn setbuf(noalias __stream: ?*FILE, noalias __buf: [*c]u8) void;
pub extern fn setvbuf(noalias __stream: ?*FILE, noalias __buf: [*c]u8, __modes: c_int, __n: usize) c_int;
pub extern fn setbuffer(noalias __stream: ?*FILE, noalias __buf: [*c]u8, __size: usize) void;
pub extern fn setlinebuf(__stream: ?*FILE) void;
pub extern fn fprintf(noalias __stream: ?*FILE, noalias __format: [*c]const u8, ...) c_int;
pub extern fn printf(__format: [*c]const u8, ...) c_int;
pub extern fn sprintf(noalias __s: [*c]u8, noalias __format: [*c]const u8, ...) c_int;
pub extern fn vfprintf(noalias __s: ?*FILE, noalias __format: [*c]const u8, __arg: [*c]struct___va_list_tag_2) c_int;
pub extern fn vprintf(noalias __format: [*c]const u8, __arg: [*c]struct___va_list_tag_2) c_int;
pub extern fn vsprintf(noalias __s: [*c]u8, noalias __format: [*c]const u8, __arg: [*c]struct___va_list_tag_2) c_int;
pub extern fn snprintf(noalias __s: [*c]u8, __maxlen: c_ulong, noalias __format: [*c]const u8, ...) c_int;
pub extern fn vsnprintf(noalias __s: [*c]u8, __maxlen: c_ulong, noalias __format: [*c]const u8, __arg: [*c]struct___va_list_tag_2) c_int;
pub extern fn vasprintf(noalias __ptr: [*c][*c]u8, noalias __f: [*c]const u8, __arg: [*c]struct___va_list_tag_2) c_int;
pub extern fn __asprintf(noalias __ptr: [*c][*c]u8, noalias __fmt: [*c]const u8, ...) c_int;
pub extern fn asprintf(noalias __ptr: [*c][*c]u8, noalias __fmt: [*c]const u8, ...) c_int;
pub extern fn vdprintf(__fd: c_int, noalias __fmt: [*c]const u8, __arg: [*c]struct___va_list_tag_2) c_int;
pub extern fn dprintf(__fd: c_int, noalias __fmt: [*c]const u8, ...) c_int;
pub extern fn fscanf(noalias __stream: ?*FILE, noalias __format: [*c]const u8, ...) c_int;
pub extern fn scanf(noalias __format: [*c]const u8, ...) c_int;
pub extern fn sscanf(noalias __s: [*c]const u8, noalias __format: [*c]const u8, ...) c_int;
pub extern fn vfscanf(noalias __s: ?*FILE, noalias __format: [*c]const u8, __arg: [*c]struct___va_list_tag_2) c_int;
pub extern fn vscanf(noalias __format: [*c]const u8, __arg: [*c]struct___va_list_tag_2) c_int;
pub extern fn vsscanf(noalias __s: [*c]const u8, noalias __format: [*c]const u8, __arg: [*c]struct___va_list_tag_2) c_int;
pub extern fn fgetc(__stream: ?*FILE) c_int;
pub extern fn getc(__stream: ?*FILE) c_int;
pub extern fn getchar() c_int;
pub extern fn getc_unlocked(__stream: ?*FILE) c_int;
pub extern fn getchar_unlocked() c_int;
pub extern fn fgetc_unlocked(__stream: ?*FILE) c_int;
pub extern fn fputc(__c: c_int, __stream: ?*FILE) c_int;
pub extern fn putc(__c: c_int, __stream: ?*FILE) c_int;
pub extern fn putchar(__c: c_int) c_int;
pub extern fn fputc_unlocked(__c: c_int, __stream: ?*FILE) c_int;
pub extern fn putc_unlocked(__c: c_int, __stream: ?*FILE) c_int;
pub extern fn putchar_unlocked(__c: c_int) c_int;
pub extern fn getw(__stream: ?*FILE) c_int;
pub extern fn putw(__w: c_int, __stream: ?*FILE) c_int;
pub extern fn fgets(noalias __s: [*c]u8, __n: c_int, noalias __stream: ?*FILE) [*c]u8;
pub extern fn __getdelim(noalias __lineptr: [*c][*c]u8, noalias __n: [*c]usize, __delimiter: c_int, noalias __stream: ?*FILE) __ssize_t;
pub extern fn getdelim(noalias __lineptr: [*c][*c]u8, noalias __n: [*c]usize, __delimiter: c_int, noalias __stream: ?*FILE) __ssize_t;
pub extern fn getline(noalias __lineptr: [*c][*c]u8, noalias __n: [*c]usize, noalias __stream: ?*FILE) __ssize_t;
pub extern fn fputs(noalias __s: [*c]const u8, noalias __stream: ?*FILE) c_int;
pub extern fn puts(__s: [*c]const u8) c_int;
pub extern fn ungetc(__c: c_int, __stream: ?*FILE) c_int;
pub extern fn fread(__ptr: ?*anyopaque, __size: c_ulong, __n: c_ulong, __stream: ?*FILE) c_ulong;
pub extern fn fwrite(__ptr: ?*const anyopaque, __size: c_ulong, __n: c_ulong, __s: ?*FILE) c_ulong;
pub extern fn fread_unlocked(noalias __ptr: ?*anyopaque, __size: usize, __n: usize, noalias __stream: ?*FILE) usize;
pub extern fn fwrite_unlocked(noalias __ptr: ?*const anyopaque, __size: usize, __n: usize, noalias __stream: ?*FILE) usize;
pub extern fn fseek(__stream: ?*FILE, __off: c_long, __whence: c_int) c_int;
pub extern fn ftell(__stream: ?*FILE) c_long;
pub extern fn rewind(__stream: ?*FILE) void;
pub extern fn fseeko(__stream: ?*FILE, __off: __off_t, __whence: c_int) c_int;
pub extern fn ftello(__stream: ?*FILE) __off_t;
pub extern fn fgetpos(noalias __stream: ?*FILE, noalias __pos: [*c]fpos_t) c_int;
pub extern fn fsetpos(__stream: ?*FILE, __pos: [*c]const fpos_t) c_int;
pub extern fn clearerr(__stream: ?*FILE) void;
pub extern fn feof(__stream: ?*FILE) c_int;
pub extern fn ferror(__stream: ?*FILE) c_int;
pub extern fn clearerr_unlocked(__stream: ?*FILE) void;
pub extern fn feof_unlocked(__stream: ?*FILE) c_int;
pub extern fn ferror_unlocked(__stream: ?*FILE) c_int;
pub extern fn perror(__s: [*c]const u8) void;
pub extern fn fileno(__stream: ?*FILE) c_int;
pub extern fn fileno_unlocked(__stream: ?*FILE) c_int;
pub extern fn pclose(__stream: ?*FILE) c_int;
pub extern fn popen(__command: [*c]const u8, __modes: [*c]const u8) ?*FILE;
pub extern fn ctermid(__s: [*c]u8) [*c]u8;
pub extern fn flockfile(__stream: ?*FILE) void;
pub extern fn ftrylockfile(__stream: ?*FILE) c_int;
pub extern fn funlockfile(__stream: ?*FILE) void;
pub extern fn __uflow(?*FILE) c_int;
pub extern fn __overflow(?*FILE, c_int) c_int;
pub extern fn memcpy(__dest: ?*anyopaque, __src: ?*const anyopaque, __n: c_ulong) ?*anyopaque;
pub extern fn memmove(__dest: ?*anyopaque, __src: ?*const anyopaque, __n: c_ulong) ?*anyopaque;
pub extern fn memccpy(__dest: ?*anyopaque, __src: ?*const anyopaque, __c: c_int, __n: c_ulong) ?*anyopaque;
pub extern fn memset(__s: ?*anyopaque, __c: c_int, __n: c_ulong) ?*anyopaque;
pub extern fn memcmp(__s1: ?*const anyopaque, __s2: ?*const anyopaque, __n: c_ulong) c_int;
pub extern fn __memcmpeq(__s1: ?*const anyopaque, __s2: ?*const anyopaque, __n: usize) c_int;
pub extern fn memchr(__s: ?*const anyopaque, __c: c_int, __n: c_ulong) ?*anyopaque;
pub extern fn strcpy(__dest: [*c]u8, __src: [*c]const u8) [*c]u8;
pub extern fn strncpy(__dest: [*c]u8, __src: [*c]const u8, __n: c_ulong) [*c]u8;
pub extern fn strcat(__dest: [*c]u8, __src: [*c]const u8) [*c]u8;
pub extern fn strncat(__dest: [*c]u8, __src: [*c]const u8, __n: c_ulong) [*c]u8;
pub extern fn strcmp(__s1: [*c]const u8, __s2: [*c]const u8) c_int;
pub extern fn strncmp(__s1: [*c]const u8, __s2: [*c]const u8, __n: c_ulong) c_int;
pub extern fn strcoll(__s1: [*c]const u8, __s2: [*c]const u8) c_int;
pub extern fn strxfrm(__dest: [*c]u8, __src: [*c]const u8, __n: c_ulong) c_ulong;
pub const struct___locale_data_4 = opaque {};
pub const struct___locale_struct = extern struct {
    __locales: [13]?*struct___locale_data_4 = @import("std").mem.zeroes([13]?*struct___locale_data_4),
    __ctype_b: [*c]const c_ushort = @import("std").mem.zeroes([*c]const c_ushort),
    __ctype_tolower: [*c]const c_int = @import("std").mem.zeroes([*c]const c_int),
    __ctype_toupper: [*c]const c_int = @import("std").mem.zeroes([*c]const c_int),
    __names: [13][*c]const u8 = @import("std").mem.zeroes([13][*c]const u8),
};
pub const __locale_t = [*c]struct___locale_struct;
pub const locale_t = __locale_t;
pub extern fn strcoll_l(__s1: [*c]const u8, __s2: [*c]const u8, __l: locale_t) c_int;
pub extern fn strxfrm_l(__dest: [*c]u8, __src: [*c]const u8, __n: usize, __l: locale_t) usize;
pub extern fn strdup(__s: [*c]const u8) [*c]u8;
pub extern fn strndup(__string: [*c]const u8, __n: c_ulong) [*c]u8;
pub extern fn strchr(__s: [*c]const u8, __c: c_int) [*c]u8;
pub extern fn strrchr(__s: [*c]const u8, __c: c_int) [*c]u8;
pub extern fn strchrnul(__s: [*c]const u8, __c: c_int) [*c]u8;
pub extern fn strcspn(__s: [*c]const u8, __reject: [*c]const u8) c_ulong;
pub extern fn strspn(__s: [*c]const u8, __accept: [*c]const u8) c_ulong;
pub extern fn strpbrk(__s: [*c]const u8, __accept: [*c]const u8) [*c]u8;
pub extern fn strstr(__haystack: [*c]const u8, __needle: [*c]const u8) [*c]u8;
pub extern fn strtok(__s: [*c]u8, __delim: [*c]const u8) [*c]u8;
pub extern fn __strtok_r(noalias __s: [*c]u8, noalias __delim: [*c]const u8, noalias __save_ptr: [*c][*c]u8) [*c]u8;
pub extern fn strtok_r(noalias __s: [*c]u8, noalias __delim: [*c]const u8, noalias __save_ptr: [*c][*c]u8) [*c]u8;
pub extern fn strcasestr(__haystack: [*c]const u8, __needle: [*c]const u8) [*c]u8;
pub extern fn memmem(__haystack: ?*const anyopaque, __haystacklen: usize, __needle: ?*const anyopaque, __needlelen: usize) ?*anyopaque;
pub extern fn __mempcpy(noalias __dest: ?*anyopaque, noalias __src: ?*const anyopaque, __n: usize) ?*anyopaque;
pub extern fn mempcpy(__dest: ?*anyopaque, __src: ?*const anyopaque, __n: c_ulong) ?*anyopaque;
pub extern fn strlen(__s: [*c]const u8) c_ulong;
pub extern fn strnlen(__string: [*c]const u8, __maxlen: usize) usize;
pub extern fn strerror(__errnum: c_int) [*c]u8;
pub extern fn strerror_r(__errnum: c_int, __buf: [*c]u8, __buflen: usize) c_int;
pub extern fn strerror_l(__errnum: c_int, __l: locale_t) [*c]u8;
pub extern fn bcmp(__s1: ?*const anyopaque, __s2: ?*const anyopaque, __n: c_ulong) c_int;
pub extern fn bcopy(__src: ?*const anyopaque, __dest: ?*anyopaque, __n: c_ulong) void;
pub extern fn bzero(__s: ?*anyopaque, __n: c_ulong) void;
pub extern fn index(__s: [*c]const u8, __c: c_int) [*c]u8;
pub extern fn rindex(__s: [*c]const u8, __c: c_int) [*c]u8;
pub extern fn ffs(__i: c_int) c_int;
pub extern fn ffsl(__l: c_long) c_int;
pub extern fn ffsll(__ll: c_longlong) c_int;
pub extern fn strcasecmp(__s1: [*c]const u8, __s2: [*c]const u8) c_int;
pub extern fn strncasecmp(__s1: [*c]const u8, __s2: [*c]const u8, __n: c_ulong) c_int;
pub extern fn strcasecmp_l(__s1: [*c]const u8, __s2: [*c]const u8, __loc: locale_t) c_int;
pub extern fn strncasecmp_l(__s1: [*c]const u8, __s2: [*c]const u8, __n: usize, __loc: locale_t) c_int;
pub extern fn explicit_bzero(__s: ?*anyopaque, __n: usize) void;
pub extern fn strsep(noalias __stringp: [*c][*c]u8, noalias __delim: [*c]const u8) [*c]u8;
pub extern fn strsignal(__sig: c_int) [*c]u8;
pub extern fn __stpcpy(noalias __dest: [*c]u8, noalias __src: [*c]const u8) [*c]u8;
pub extern fn stpcpy(__dest: [*c]u8, __src: [*c]const u8) [*c]u8;
pub extern fn __stpncpy(noalias __dest: [*c]u8, noalias __src: [*c]const u8, __n: usize) [*c]u8;
pub extern fn stpncpy(__dest: [*c]u8, __src: [*c]const u8, __n: c_ulong) [*c]u8;
pub extern fn strlcpy(__dest: [*c]u8, __src: [*c]const u8, __n: c_ulong) c_ulong;
pub extern fn strlcat(__dest: [*c]u8, __src: [*c]const u8, __n: c_ulong) c_ulong;
pub const ErlNifUInt64 = ErlNapiUInt64;
pub const ErlNifSInt64 = ErlNapiSInt64;
pub const ErlNifUInt = ErlNapiUInt;
pub const ErlNifSInt = ErlNapiSInt;
pub const ERL_NIF_TERM = ErlNifUInt;
pub const ERL_NIF_UINT = ERL_NIF_TERM;
pub const ErlNifTime = ErlNifSInt64;
pub const ERL_NIF_SEC: c_int = 0;
pub const ERL_NIF_MSEC: c_int = 1;
pub const ERL_NIF_USEC: c_int = 2;
pub const ERL_NIF_NSEC: c_int = 3;
pub const ErlNifTimeUnit = c_uint;
pub const struct_enif_environment_t = opaque {};
pub const ErlNifEnv = struct_enif_environment_t;
pub const struct_enif_func_t = extern struct {
    name: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    arity: c_uint = @import("std").mem.zeroes(c_uint),
    fptr: ?*const fn (?*ErlNifEnv, c_int, [*c]const ERL_NIF_TERM) callconv(.c) ERL_NIF_TERM = @import("std").mem.zeroes(?*const fn (?*ErlNifEnv, c_int, [*c]const ERL_NIF_TERM) callconv(.c) ERL_NIF_TERM),
    flags: c_uint = @import("std").mem.zeroes(c_uint),
};
pub const ErlNifFunc = struct_enif_func_t;
pub const struct_enif_entry_t = extern struct {
    major: c_int = @import("std").mem.zeroes(c_int),
    minor: c_int = @import("std").mem.zeroes(c_int),
    name: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    num_of_funcs: c_int = @import("std").mem.zeroes(c_int),
    funcs: [*c]ErlNifFunc = @import("std").mem.zeroes([*c]ErlNifFunc),
    load: ?*const fn (?*ErlNifEnv, [*c]?*anyopaque, ERL_NIF_TERM) callconv(.c) c_int = @import("std").mem.zeroes(?*const fn (?*ErlNifEnv, [*c]?*anyopaque, ERL_NIF_TERM) callconv(.c) c_int),
    reload: ?*const fn (?*ErlNifEnv, [*c]?*anyopaque, ERL_NIF_TERM) callconv(.c) c_int = @import("std").mem.zeroes(?*const fn (?*ErlNifEnv, [*c]?*anyopaque, ERL_NIF_TERM) callconv(.c) c_int),
    upgrade: ?*const fn (?*ErlNifEnv, [*c]?*anyopaque, [*c]?*anyopaque, ERL_NIF_TERM) callconv(.c) c_int = @import("std").mem.zeroes(?*const fn (?*ErlNifEnv, [*c]?*anyopaque, [*c]?*anyopaque, ERL_NIF_TERM) callconv(.c) c_int),
    unload: ?*const fn (?*ErlNifEnv, ?*anyopaque) callconv(.c) void = @import("std").mem.zeroes(?*const fn (?*ErlNifEnv, ?*anyopaque) callconv(.c) void),
    vm_variant: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    options: c_uint = @import("std").mem.zeroes(c_uint),
    sizeof_ErlNifResourceTypeInit: usize = @import("std").mem.zeroes(usize),
    min_erts: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
};
pub const ErlNifEntry = struct_enif_entry_t;
pub const ErlNifBinary = extern struct {
    size: usize = @import("std").mem.zeroes(usize),
    data: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    ref_bin: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    __spare__: [2]?*anyopaque = @import("std").mem.zeroes([2]?*anyopaque),
};
pub const ErlNifEvent = c_int;
pub const ERL_NIF_RT_CREATE: c_int = 1;
pub const ERL_NIF_RT_TAKEOVER: c_int = 2;
pub const ErlNifResourceFlags = c_uint;
pub const ERL_NIF_LATIN1: c_int = 1;
pub const ERL_NIF_UTF8: c_int = 2;
pub const ErlNifCharEncoding = c_uint;
pub const ErlNifPid = extern struct {
    pid: ERL_NIF_TERM = @import("std").mem.zeroes(ERL_NIF_TERM),
};
pub const ErlNifPort = extern struct {
    port_id: ERL_NIF_TERM = @import("std").mem.zeroes(ERL_NIF_TERM),
};
pub const ErlNifMonitor = ErlDrvMonitor;
pub const ErlNifOnHaltCallback = fn (?*anyopaque) callconv(.c) void;
pub const ErlNifOnUnloadThreadCallback = fn (?*anyopaque) callconv(.c) void;
pub const struct_enif_resource_type_t = opaque {};
pub const ErlNifResourceType = struct_enif_resource_type_t;
pub const ErlNifResourceDtor = fn (?*ErlNifEnv, ?*anyopaque) callconv(.c) void;
pub const ErlNifResourceStop = fn (?*ErlNifEnv, ?*anyopaque, ErlNifEvent, c_int) callconv(.c) void;
pub const ErlNifResourceDown = fn (?*ErlNifEnv, ?*anyopaque, [*c]ErlNifPid, [*c]ErlNifMonitor) callconv(.c) void;
pub const ErlNifResourceDynCall = fn (?*ErlNifEnv, ?*anyopaque, ?*anyopaque) callconv(.c) void;
pub const ErlNifResourceTypeInit = extern struct {
    dtor: ?*const ErlNifResourceDtor = @import("std").mem.zeroes(?*const ErlNifResourceDtor),
    stop: ?*const ErlNifResourceStop = @import("std").mem.zeroes(?*const ErlNifResourceStop),
    down: ?*const ErlNifResourceDown = @import("std").mem.zeroes(?*const ErlNifResourceDown),
    members: c_int = @import("std").mem.zeroes(c_int),
    dyncall: ?*const ErlNifResourceDynCall = @import("std").mem.zeroes(?*const ErlNifResourceDynCall),
};
pub const ErlNifSysInfo = ErlDrvSysInfo;
pub const struct_ErlDrvTid_ = opaque {};
pub const ErlNifTid = ?*struct_ErlDrvTid_;
pub const struct_ErlDrvMutex_ = opaque {};
pub const ErlNifMutex = struct_ErlDrvMutex_;
pub const struct_ErlDrvCond_ = opaque {};
pub const ErlNifCond = struct_ErlDrvCond_;
pub const struct_ErlDrvRWLock_ = opaque {};
pub const ErlNifRWLock = struct_ErlDrvRWLock_;
pub const ErlNifTSDKey = c_int;
pub const ErlNifThreadOpts = ErlDrvThreadOpts;
pub const ERL_NIF_DIRTY_JOB_CPU_BOUND: c_int = 1;
pub const ERL_NIF_DIRTY_JOB_IO_BOUND: c_int = 2;
pub const ErlNifDirtyTaskFlags = c_uint;
const struct_unnamed_6 = extern struct {
    ks: [*c]ERL_NIF_TERM = @import("std").mem.zeroes([*c]ERL_NIF_TERM),
    vs: [*c]ERL_NIF_TERM = @import("std").mem.zeroes([*c]ERL_NIF_TERM),
};
pub const struct_ErtsDynamicWStack__8 = opaque {};
const struct_unnamed_7 = extern struct {
    wstack: ?*struct_ErtsDynamicWStack__8 = @import("std").mem.zeroes(?*struct_ErtsDynamicWStack__8),
    kv: [*c]ERL_NIF_TERM = @import("std").mem.zeroes([*c]ERL_NIF_TERM),
};
const union_unnamed_5 = extern union {
    flat: struct_unnamed_6,
    hash: struct_unnamed_7,
};
pub const ErlNifMapIterator = extern struct {
    map: ERL_NIF_TERM = @import("std").mem.zeroes(ERL_NIF_TERM),
    size: ERL_NIF_UINT = @import("std").mem.zeroes(ERL_NIF_UINT),
    idx: ERL_NIF_UINT = @import("std").mem.zeroes(ERL_NIF_UINT),
    u: union_unnamed_5 = @import("std").mem.zeroes(union_unnamed_5),
    __spare__: [2]?*anyopaque = @import("std").mem.zeroes([2]?*anyopaque),
};
pub const ERL_NIF_MAP_ITERATOR_FIRST: c_int = 1;
pub const ERL_NIF_MAP_ITERATOR_LAST: c_int = 2;
pub const ERL_NIF_MAP_ITERATOR_HEAD: c_int = 1;
pub const ERL_NIF_MAP_ITERATOR_TAIL: c_int = 2;
pub const ErlNifMapIteratorEntry = c_uint;
pub const ERL_NIF_UNIQUE_POSITIVE: c_int = 1;
pub const ERL_NIF_UNIQUE_MONOTONIC: c_int = 2;
pub const ErlNifUniqueInteger = c_uint;
pub const ERL_NIF_BIN2TERM_SAFE: c_int = 536870912;
pub const ErlNifBinaryToTerm = c_uint;
pub const ERL_NIF_INTERNAL_HASH: c_int = 1;
pub const ERL_NIF_PHASH2: c_int = 2;
pub const ErlNifHash = c_uint;
pub const struct_erl_nif_io_vec = extern struct {
    iovcnt: c_int = @import("std").mem.zeroes(c_int),
    size: usize = @import("std").mem.zeroes(usize),
    iov: [*c]SysIOVec = @import("std").mem.zeroes([*c]SysIOVec),
    ref_bins: [*c]?*anyopaque = @import("std").mem.zeroes([*c]?*anyopaque),
    flags: c_int = @import("std").mem.zeroes(c_int),
    small_iov: [16]SysIOVec = @import("std").mem.zeroes([16]SysIOVec),
    small_ref_bin: [16]?*anyopaque = @import("std").mem.zeroes([16]?*anyopaque),
};
pub const ErlNifIOVec = struct_erl_nif_io_vec;
pub const struct_erts_io_queue = opaque {};
pub const ErlNifIOQueue = struct_erts_io_queue;
pub const ERL_NIF_IOQ_NORMAL: c_int = 1;
pub const ErlNifIOQueueOpts = c_uint;
pub const ERL_NIF_TERM_TYPE_ATOM: c_int = 1;
pub const ERL_NIF_TERM_TYPE_BITSTRING: c_int = 2;
pub const ERL_NIF_TERM_TYPE_FLOAT: c_int = 3;
pub const ERL_NIF_TERM_TYPE_FUN: c_int = 4;
pub const ERL_NIF_TERM_TYPE_INTEGER: c_int = 5;
pub const ERL_NIF_TERM_TYPE_LIST: c_int = 6;
pub const ERL_NIF_TERM_TYPE_MAP: c_int = 7;
pub const ERL_NIF_TERM_TYPE_PID: c_int = 8;
pub const ERL_NIF_TERM_TYPE_PORT: c_int = 9;
pub const ERL_NIF_TERM_TYPE_REFERENCE: c_int = 10;
pub const ERL_NIF_TERM_TYPE_TUPLE: c_int = 11;
pub const ERL_NIF_TERM_TYPE__MISSING_DEFAULT_CASE__READ_THE_MANUAL: c_int = -1;
pub const ErlNifTermType = c_int;
pub const ERL_NIF_OPT_DELAY_HALT: c_int = 1;
pub const ERL_NIF_OPT_ON_HALT: c_int = 2;
pub const ERL_NIF_OPT_ON_UNLOAD_THREAD: c_int = 3;
pub const ErlNifOption = c_uint;
pub extern fn enif_free(ptr: ?*anyopaque) void;
pub extern fn enif_mutex_destroy(mtx: ?*ErlNifMutex) void;
pub extern fn enif_cond_destroy(cnd: ?*ErlNifCond) void;
pub extern fn enif_rwlock_destroy(rwlck: ?*ErlNifRWLock) void;
pub extern fn enif_thread_opts_destroy(opts: [*c]ErlNifThreadOpts) void;
pub extern fn enif_ioq_destroy(q: ?*ErlNifIOQueue) void;
pub extern fn enif_priv_data(?*ErlNifEnv) ?*anyopaque;
pub extern fn enif_alloc(size: usize) ?*anyopaque;
pub extern fn enif_is_atom(?*ErlNifEnv, term: ERL_NIF_TERM) c_int;
pub extern fn enif_is_binary(?*ErlNifEnv, term: ERL_NIF_TERM) c_int;
pub extern fn enif_is_ref(?*ErlNifEnv, term: ERL_NIF_TERM) c_int;
pub extern fn enif_inspect_binary(?*ErlNifEnv, bin_term: ERL_NIF_TERM, bin: [*c]ErlNifBinary) c_int;
pub extern fn enif_alloc_binary(size: usize, bin: [*c]ErlNifBinary) c_int;
pub extern fn enif_realloc_binary(bin: [*c]ErlNifBinary, size: usize) c_int;
pub extern fn enif_release_binary(bin: [*c]ErlNifBinary) void;
pub extern fn enif_get_int(?*ErlNifEnv, term: ERL_NIF_TERM, ip: [*c]c_int) c_int;
pub extern fn enif_get_ulong(?*ErlNifEnv, term: ERL_NIF_TERM, ip: [*c]c_ulong) c_int;
pub extern fn enif_get_double(?*ErlNifEnv, term: ERL_NIF_TERM, dp: [*c]f64) c_int;
pub extern fn enif_get_list_cell(env: ?*ErlNifEnv, term: ERL_NIF_TERM, head: [*c]ERL_NIF_TERM, tail: [*c]ERL_NIF_TERM) c_int;
pub extern fn enif_get_tuple(env: ?*ErlNifEnv, tpl: ERL_NIF_TERM, arity: [*c]c_int, array: [*c][*c]const ERL_NIF_TERM) c_int;
pub extern fn enif_is_identical(lhs: ERL_NIF_TERM, rhs: ERL_NIF_TERM) c_int;
pub extern fn enif_compare(lhs: ERL_NIF_TERM, rhs: ERL_NIF_TERM) c_int;
pub extern fn enif_make_binary(env: ?*ErlNifEnv, bin: [*c]ErlNifBinary) ERL_NIF_TERM;
pub extern fn enif_make_badarg(env: ?*ErlNifEnv) ERL_NIF_TERM;
pub extern fn enif_make_int(env: ?*ErlNifEnv, i: c_int) ERL_NIF_TERM;
pub extern fn enif_make_ulong(env: ?*ErlNifEnv, i: c_ulong) ERL_NIF_TERM;
pub extern fn enif_make_double(env: ?*ErlNifEnv, d: f64) ERL_NIF_TERM;
pub extern fn enif_make_atom(env: ?*ErlNifEnv, name: [*c]const u8) ERL_NIF_TERM;
pub extern fn enif_make_existing_atom(env: ?*ErlNifEnv, name: [*c]const u8, atom: [*c]ERL_NIF_TERM, ErlNifCharEncoding) c_int;
pub extern fn enif_make_tuple(env: ?*ErlNifEnv, cnt: c_uint, ...) ERL_NIF_TERM;
pub extern fn enif_make_list(env: ?*ErlNifEnv, cnt: c_uint, ...) ERL_NIF_TERM;
pub extern fn enif_make_list_cell(env: ?*ErlNifEnv, car: ERL_NIF_TERM, cdr: ERL_NIF_TERM) ERL_NIF_TERM;
pub extern fn enif_make_string(env: ?*ErlNifEnv, string: [*c]const u8, ErlNifCharEncoding) ERL_NIF_TERM;
pub extern fn enif_make_ref(env: ?*ErlNifEnv) ERL_NIF_TERM;
pub extern fn enif_mutex_create(name: [*c]u8) ?*ErlNifMutex;
pub extern fn enif_mutex_trylock(mtx: ?*ErlNifMutex) c_int;
pub extern fn enif_mutex_lock(mtx: ?*ErlNifMutex) void;
pub extern fn enif_mutex_unlock(mtx: ?*ErlNifMutex) void;
pub extern fn enif_cond_create(name: [*c]u8) ?*ErlNifCond;
pub extern fn enif_cond_signal(cnd: ?*ErlNifCond) void;
pub extern fn enif_cond_broadcast(cnd: ?*ErlNifCond) void;
pub extern fn enif_cond_wait(cnd: ?*ErlNifCond, mtx: ?*ErlNifMutex) void;
pub extern fn enif_rwlock_create(name: [*c]u8) ?*ErlNifRWLock;
pub extern fn enif_rwlock_tryrlock(rwlck: ?*ErlNifRWLock) c_int;
pub extern fn enif_rwlock_rlock(rwlck: ?*ErlNifRWLock) void;
pub extern fn enif_rwlock_runlock(rwlck: ?*ErlNifRWLock) void;
pub extern fn enif_rwlock_tryrwlock(rwlck: ?*ErlNifRWLock) c_int;
pub extern fn enif_rwlock_rwlock(rwlck: ?*ErlNifRWLock) void;
pub extern fn enif_rwlock_rwunlock(rwlck: ?*ErlNifRWLock) void;
pub extern fn enif_tsd_key_create(name: [*c]u8, key: [*c]ErlNifTSDKey) c_int;
pub extern fn enif_tsd_key_destroy(key: ErlNifTSDKey) void;
pub extern fn enif_tsd_set(key: ErlNifTSDKey, data: ?*anyopaque) void;
pub extern fn enif_tsd_get(key: ErlNifTSDKey) ?*anyopaque;
pub extern fn enif_thread_opts_create(name: [*c]u8) [*c]ErlNifThreadOpts;
pub extern fn enif_thread_create(name: [*c]u8, tid: [*c]ErlNifTid, func: ?*const fn (?*anyopaque) callconv(.c) ?*anyopaque, args: ?*anyopaque, opts: [*c]ErlNifThreadOpts) c_int;
pub extern fn enif_thread_self() ErlNifTid;
pub extern fn enif_equal_tids(tid1: ErlNifTid, tid2: ErlNifTid) c_int;
pub extern fn enif_thread_exit(resp: ?*anyopaque) void;
pub extern fn enif_thread_join(ErlNifTid, respp: [*c]?*anyopaque) c_int;
pub extern fn enif_realloc(ptr: ?*anyopaque, size: usize) ?*anyopaque;
pub extern fn enif_system_info(sip: [*c]ErlNifSysInfo, si_size: usize) void;
pub extern fn enif_fprintf(filep: ?*FILE, format: [*c]const u8, ...) c_int;
pub extern fn enif_inspect_iolist_as_binary(?*ErlNifEnv, term: ERL_NIF_TERM, bin: [*c]ErlNifBinary) c_int;
pub extern fn enif_make_sub_binary(?*ErlNifEnv, bin_term: ERL_NIF_TERM, pos: usize, size: usize) ERL_NIF_TERM;
pub extern fn enif_get_string(?*ErlNifEnv, list: ERL_NIF_TERM, buf: [*c]u8, len: c_uint, ErlNifCharEncoding) c_int;
pub extern fn enif_get_atom(?*ErlNifEnv, atom: ERL_NIF_TERM, buf: [*c]u8, len: c_uint, ErlNifCharEncoding) c_int;
pub extern fn enif_is_fun(?*ErlNifEnv, term: ERL_NIF_TERM) c_int;
pub extern fn enif_is_pid(?*ErlNifEnv, term: ERL_NIF_TERM) c_int;
pub extern fn enif_is_port(?*ErlNifEnv, term: ERL_NIF_TERM) c_int;
pub extern fn enif_get_uint(?*ErlNifEnv, term: ERL_NIF_TERM, ip: [*c]c_uint) c_int;
pub extern fn enif_get_long(?*ErlNifEnv, term: ERL_NIF_TERM, ip: [*c]c_long) c_int;
pub extern fn enif_make_uint(?*ErlNifEnv, i: c_uint) ERL_NIF_TERM;
pub extern fn enif_make_long(?*ErlNifEnv, i: c_long) ERL_NIF_TERM;
pub extern fn enif_make_tuple_from_array(?*ErlNifEnv, arr: [*c]const ERL_NIF_TERM, cnt: c_uint) ERL_NIF_TERM;
pub extern fn enif_make_list_from_array(?*ErlNifEnv, arr: [*c]const ERL_NIF_TERM, cnt: c_uint) ERL_NIF_TERM;
pub extern fn enif_is_empty_list(?*ErlNifEnv, term: ERL_NIF_TERM) c_int;
pub extern fn enif_open_resource_type(?*ErlNifEnv, module_str: [*c]const u8, name_str: [*c]const u8, dtor: ?*const fn (?*ErlNifEnv, ?*anyopaque) callconv(.c) void, flags: ErlNifResourceFlags, tried: [*c]ErlNifResourceFlags) ?*ErlNifResourceType;
pub extern fn enif_alloc_resource(@"type": ?*ErlNifResourceType, size: usize) ?*anyopaque;
pub extern fn enif_release_resource(obj: ?*anyopaque) void;
pub extern fn enif_make_resource(?*ErlNifEnv, obj: ?*anyopaque) ERL_NIF_TERM;
pub extern fn enif_get_resource(?*ErlNifEnv, term: ERL_NIF_TERM, @"type": ?*ErlNifResourceType, objp: [*c]?*anyopaque) c_int;
pub extern fn enif_sizeof_resource(obj: ?*anyopaque) usize;
pub extern fn enif_make_new_binary(?*ErlNifEnv, size: usize, termp: [*c]ERL_NIF_TERM) [*c]u8;
pub extern fn enif_is_list(?*ErlNifEnv, term: ERL_NIF_TERM) c_int;
pub extern fn enif_is_tuple(?*ErlNifEnv, term: ERL_NIF_TERM) c_int;
pub extern fn enif_get_atom_length(?*ErlNifEnv, atom: ERL_NIF_TERM, len: [*c]c_uint, ErlNifCharEncoding) c_int;
pub extern fn enif_get_list_length(env: ?*ErlNifEnv, term: ERL_NIF_TERM, len: [*c]c_uint) c_int;
pub extern fn enif_make_atom_len(env: ?*ErlNifEnv, name: [*c]const u8, len: usize) ERL_NIF_TERM;
pub extern fn enif_make_existing_atom_len(env: ?*ErlNifEnv, name: [*c]const u8, len: usize, atom: [*c]ERL_NIF_TERM, ErlNifCharEncoding) c_int;
pub extern fn enif_make_string_len(env: ?*ErlNifEnv, string: [*c]const u8, len: usize, ErlNifCharEncoding) ERL_NIF_TERM;
pub extern fn enif_alloc_env() ?*ErlNifEnv;
pub extern fn enif_free_env(env: ?*ErlNifEnv) void;
pub extern fn enif_clear_env(env: ?*ErlNifEnv) void;
pub extern fn enif_send(env: ?*ErlNifEnv, to_pid: [*c]const ErlNifPid, msg_env: ?*ErlNifEnv, msg: ERL_NIF_TERM) c_int;
pub extern fn enif_make_copy(dst_env: ?*ErlNifEnv, src_term: ERL_NIF_TERM) ERL_NIF_TERM;
pub extern fn enif_self(caller_env: ?*ErlNifEnv, pid: [*c]ErlNifPid) [*c]ErlNifPid;
pub extern fn enif_get_local_pid(env: ?*ErlNifEnv, ERL_NIF_TERM, pid: [*c]ErlNifPid) c_int;
pub extern fn enif_keep_resource(obj: ?*anyopaque) void;
pub extern fn enif_make_resource_binary(?*ErlNifEnv, obj: ?*anyopaque, data: ?*const anyopaque, size: usize) ERL_NIF_TERM;
pub extern fn enif_is_exception(?*ErlNifEnv, term: ERL_NIF_TERM) c_int;
pub extern fn enif_make_reverse_list(?*ErlNifEnv, term: ERL_NIF_TERM, list: [*c]ERL_NIF_TERM) c_int;
pub extern fn enif_is_number(?*ErlNifEnv, term: ERL_NIF_TERM) c_int;
pub extern fn enif_dlopen(lib: [*c]const u8, err_handler: ?*const fn (?*anyopaque, [*c]const u8) callconv(.c) void, err_arg: ?*anyopaque) ?*anyopaque;
pub extern fn enif_dlsym(handle: ?*anyopaque, symbol: [*c]const u8, err_handler: ?*const fn (?*anyopaque, [*c]const u8) callconv(.c) void, err_arg: ?*anyopaque) ?*anyopaque;
pub extern fn enif_consume_timeslice(?*ErlNifEnv, percent: c_int) c_int;
pub extern fn enif_is_map(env: ?*ErlNifEnv, term: ERL_NIF_TERM) c_int;
pub extern fn enif_get_map_size(env: ?*ErlNifEnv, term: ERL_NIF_TERM, size: [*c]usize) c_int;
pub extern fn enif_make_new_map(env: ?*ErlNifEnv) ERL_NIF_TERM;
pub extern fn enif_make_map_put(env: ?*ErlNifEnv, map_in: ERL_NIF_TERM, key: ERL_NIF_TERM, value: ERL_NIF_TERM, map_out: [*c]ERL_NIF_TERM) c_int;
pub extern fn enif_get_map_value(env: ?*ErlNifEnv, map: ERL_NIF_TERM, key: ERL_NIF_TERM, value: [*c]ERL_NIF_TERM) c_int;
pub extern fn enif_make_map_update(env: ?*ErlNifEnv, map_in: ERL_NIF_TERM, key: ERL_NIF_TERM, value: ERL_NIF_TERM, map_out: [*c]ERL_NIF_TERM) c_int;
pub extern fn enif_make_map_remove(env: ?*ErlNifEnv, map_in: ERL_NIF_TERM, key: ERL_NIF_TERM, map_out: [*c]ERL_NIF_TERM) c_int;
pub extern fn enif_map_iterator_create(env: ?*ErlNifEnv, map: ERL_NIF_TERM, iter: [*c]ErlNifMapIterator, entry: ErlNifMapIteratorEntry) c_int;
pub extern fn enif_map_iterator_destroy(env: ?*ErlNifEnv, iter: [*c]ErlNifMapIterator) void;
pub extern fn enif_map_iterator_is_head(env: ?*ErlNifEnv, iter: [*c]ErlNifMapIterator) c_int;
pub extern fn enif_map_iterator_is_tail(env: ?*ErlNifEnv, iter: [*c]ErlNifMapIterator) c_int;
pub extern fn enif_map_iterator_next(env: ?*ErlNifEnv, iter: [*c]ErlNifMapIterator) c_int;
pub extern fn enif_map_iterator_prev(env: ?*ErlNifEnv, iter: [*c]ErlNifMapIterator) c_int;
pub extern fn enif_map_iterator_get_pair(env: ?*ErlNifEnv, iter: [*c]ErlNifMapIterator, key: [*c]ERL_NIF_TERM, value: [*c]ERL_NIF_TERM) c_int;
pub extern fn enif_schedule_nif(?*ErlNifEnv, [*c]const u8, c_int, ?*const fn (?*ErlNifEnv, c_int, [*c]const ERL_NIF_TERM) callconv(.c) ERL_NIF_TERM, c_int, [*c]const ERL_NIF_TERM) ERL_NIF_TERM;
pub extern fn enif_has_pending_exception(env: ?*ErlNifEnv, reason: [*c]ERL_NIF_TERM) c_int;
pub extern fn enif_raise_exception(env: ?*ErlNifEnv, reason: ERL_NIF_TERM) ERL_NIF_TERM;
pub extern fn enif_getenv(key: [*c]const u8, value: [*c]u8, value_size: [*c]usize) c_int;
pub extern fn enif_monotonic_time(ErlNifTimeUnit) ErlNifTime;
pub extern fn enif_time_offset(ErlNifTimeUnit) ErlNifTime;
pub extern fn enif_convert_time_unit(ErlNifTime, ErlNifTimeUnit, ErlNifTimeUnit) ErlNifTime;
pub extern fn enif_now_time(env: ?*ErlNifEnv) ERL_NIF_TERM;
pub extern fn enif_cpu_time(env: ?*ErlNifEnv) ERL_NIF_TERM;
pub extern fn enif_make_unique_integer(env: ?*ErlNifEnv, properties: ErlNifUniqueInteger) ERL_NIF_TERM;
pub extern fn enif_is_current_process_alive(env: ?*ErlNifEnv) c_int;
pub extern fn enif_is_process_alive(env: ?*ErlNifEnv, pid: [*c]ErlNifPid) c_int;
pub extern fn enif_is_port_alive(env: ?*ErlNifEnv, port_id: [*c]ErlNifPort) c_int;
pub extern fn enif_get_local_port(env: ?*ErlNifEnv, ERL_NIF_TERM, port_id: [*c]ErlNifPort) c_int;
pub extern fn enif_term_to_binary(env: ?*ErlNifEnv, term: ERL_NIF_TERM, bin: [*c]ErlNifBinary) c_int;
pub extern fn enif_binary_to_term(env: ?*ErlNifEnv, data: [*c]const u8, sz: usize, term: [*c]ERL_NIF_TERM, opts: c_uint) usize;
pub extern fn enif_port_command(env: ?*ErlNifEnv, to_port: [*c]const ErlNifPort, msg_env: ?*ErlNifEnv, msg: ERL_NIF_TERM) c_int;
pub extern fn enif_thread_type() c_int;
pub extern fn enif_snprintf(buffer: [*c]u8, size: usize, format: [*c]const u8, ...) c_int;
pub extern fn enif_select(env: ?*ErlNifEnv, e: ErlNifEvent, flags: enum_ErlNifSelectFlags, obj: ?*anyopaque, pid: [*c]const ErlNifPid, ref: ERL_NIF_TERM) c_int;
pub extern fn enif_open_resource_type_x(?*ErlNifEnv, name_str: [*c]const u8, [*c]const ErlNifResourceTypeInit, flags: ErlNifResourceFlags, tried: [*c]ErlNifResourceFlags) ?*ErlNifResourceType;
pub extern fn enif_monitor_process(?*ErlNifEnv, obj: ?*anyopaque, [*c]const ErlNifPid, monitor: [*c]ErlNifMonitor) c_int;
pub extern fn enif_demonitor_process(?*ErlNifEnv, obj: ?*anyopaque, monitor: [*c]const ErlNifMonitor) c_int;
pub extern fn enif_compare_monitors([*c]const ErlNifMonitor, [*c]const ErlNifMonitor) c_int;
pub extern fn enif_hash(@"type": ErlNifHash, term: ERL_NIF_TERM, salt: ErlNifUInt64) ErlNifUInt64;
pub extern fn enif_whereis_pid(env: ?*ErlNifEnv, name: ERL_NIF_TERM, pid: [*c]ErlNifPid) c_int;
pub extern fn enif_whereis_port(env: ?*ErlNifEnv, name: ERL_NIF_TERM, port: [*c]ErlNifPort) c_int;
pub extern fn enif_ioq_create(opts: ErlNifIOQueueOpts) ?*ErlNifIOQueue;
pub extern fn enif_ioq_enq_binary(q: ?*ErlNifIOQueue, bin: [*c]ErlNifBinary, skip: usize) c_int;
pub extern fn enif_ioq_enqv(q: ?*ErlNifIOQueue, iov: [*c]ErlNifIOVec, skip: usize) c_int;
pub extern fn enif_ioq_size(q: ?*ErlNifIOQueue) usize;
pub extern fn enif_ioq_deq(q: ?*ErlNifIOQueue, count: usize, size: [*c]usize) c_int;
pub extern fn enif_ioq_peek(q: ?*ErlNifIOQueue, iovlen: [*c]c_int) [*c]SysIOVec;
pub extern fn enif_inspect_iovec(env: ?*ErlNifEnv, max_length: usize, iovec_term: ERL_NIF_TERM, tail: [*c]ERL_NIF_TERM, iovec: [*c][*c]ErlNifIOVec) c_int;
pub extern fn enif_free_iovec(iov: [*c]ErlNifIOVec) void;
pub extern fn enif_ioq_peek_head(env: ?*ErlNifEnv, q: ?*ErlNifIOQueue, size: [*c]usize, head: [*c]ERL_NIF_TERM) c_int;
pub extern fn enif_mutex_name(?*ErlNifMutex) [*c]u8;
pub extern fn enif_cond_name(?*ErlNifCond) [*c]u8;
pub extern fn enif_rwlock_name(?*ErlNifRWLock) [*c]u8;
pub extern fn enif_thread_name(ErlNifTid) [*c]u8;
pub extern fn enif_vfprintf(?*FILE, fmt: [*c]const u8, [*c]struct___va_list_tag_2) c_int;
pub extern fn enif_vsnprintf([*c]u8, usize, fmt: [*c]const u8, [*c]struct___va_list_tag_2) c_int;
pub extern fn enif_make_map_from_arrays(env: ?*ErlNifEnv, keys: [*c]ERL_NIF_TERM, values: [*c]ERL_NIF_TERM, cnt: usize, map_out: [*c]ERL_NIF_TERM) c_int;
pub extern fn enif_select_x(env: ?*ErlNifEnv, e: ErlNifEvent, flags: enum_ErlNifSelectFlags, obj: ?*anyopaque, pid: [*c]const ErlNifPid, msg: ERL_NIF_TERM, msg_env: ?*ErlNifEnv) c_int;
pub extern fn enif_make_monitor_term(env: ?*ErlNifEnv, [*c]const ErlNifMonitor) ERL_NIF_TERM;
pub extern fn enif_set_pid_undefined(pid: [*c]ErlNifPid) void;
pub extern fn enif_is_pid_undefined(pid: [*c]const ErlNifPid) c_int;
pub extern fn enif_term_type(env: ?*ErlNifEnv, term: ERL_NIF_TERM) ErlNifTermType;
pub extern fn enif_init_resource_type(?*ErlNifEnv, name_str: [*c]const u8, [*c]const ErlNifResourceTypeInit, flags: ErlNifResourceFlags, tried: [*c]ErlNifResourceFlags) ?*ErlNifResourceType;
pub extern fn enif_dynamic_resource_call(?*ErlNifEnv, mod: ERL_NIF_TERM, name: ERL_NIF_TERM, rsrc: ERL_NIF_TERM, call_data: ?*anyopaque) c_int;
pub extern fn enif_get_string_length(env: ?*ErlNifEnv, list: ERL_NIF_TERM, len: [*c]c_uint, encoding: ErlNifCharEncoding) c_int;
pub extern fn enif_make_new_atom(env: ?*ErlNifEnv, name: [*c]const u8, atom: [*c]ERL_NIF_TERM, encoding: ErlNifCharEncoding) c_int;
pub extern fn enif_make_new_atom_len(env: ?*ErlNifEnv, name: [*c]const u8, len: usize, atom: [*c]ERL_NIF_TERM, encoding: ErlNifCharEncoding) c_int;
pub extern fn enif_set_option(env: ?*ErlNifEnv, opt: ErlNifOption, ...) c_int;
pub fn enif_make_tuple1(arg_env: ?*ErlNifEnv, arg_e1: ERL_NIF_TERM) callconv(.c) ERL_NIF_TERM {
    var env = arg_env;
    _ = &env;
    var e1 = arg_e1;
    _ = &e1;
    return enif_make_tuple(env, @as(c_uint, @bitCast(@as(c_int, 1))), e1);
}
pub fn enif_make_tuple2(arg_env: ?*ErlNifEnv, arg_e1: ERL_NIF_TERM, arg_e2: ERL_NIF_TERM) callconv(.c) ERL_NIF_TERM {
    var env = arg_env;
    _ = &env;
    var e1 = arg_e1;
    _ = &e1;
    var e2 = arg_e2;
    _ = &e2;
    return enif_make_tuple(env, @as(c_uint, @bitCast(@as(c_int, 2))), e1, e2);
}
pub fn enif_make_tuple3(arg_env: ?*ErlNifEnv, arg_e1: ERL_NIF_TERM, arg_e2: ERL_NIF_TERM, arg_e3: ERL_NIF_TERM) callconv(.c) ERL_NIF_TERM {
    var env = arg_env;
    _ = &env;
    var e1 = arg_e1;
    _ = &e1;
    var e2 = arg_e2;
    _ = &e2;
    var e3 = arg_e3;
    _ = &e3;
    return enif_make_tuple(env, @as(c_uint, @bitCast(@as(c_int, 3))), e1, e2, e3);
}
pub fn enif_make_tuple4(arg_env: ?*ErlNifEnv, arg_e1: ERL_NIF_TERM, arg_e2: ERL_NIF_TERM, arg_e3: ERL_NIF_TERM, arg_e4: ERL_NIF_TERM) callconv(.c) ERL_NIF_TERM {
    var env = arg_env;
    _ = &env;
    var e1 = arg_e1;
    _ = &e1;
    var e2 = arg_e2;
    _ = &e2;
    var e3 = arg_e3;
    _ = &e3;
    var e4 = arg_e4;
    _ = &e4;
    return enif_make_tuple(env, @as(c_uint, @bitCast(@as(c_int, 4))), e1, e2, e3, e4);
}
pub fn enif_make_tuple5(arg_env: ?*ErlNifEnv, arg_e1: ERL_NIF_TERM, arg_e2: ERL_NIF_TERM, arg_e3: ERL_NIF_TERM, arg_e4: ERL_NIF_TERM, arg_e5: ERL_NIF_TERM) callconv(.c) ERL_NIF_TERM {
    var env = arg_env;
    _ = &env;
    var e1 = arg_e1;
    _ = &e1;
    var e2 = arg_e2;
    _ = &e2;
    var e3 = arg_e3;
    _ = &e3;
    var e4 = arg_e4;
    _ = &e4;
    var e5 = arg_e5;
    _ = &e5;
    return enif_make_tuple(env, @as(c_uint, @bitCast(@as(c_int, 5))), e1, e2, e3, e4, e5);
}
pub fn enif_make_tuple6(arg_env: ?*ErlNifEnv, arg_e1: ERL_NIF_TERM, arg_e2: ERL_NIF_TERM, arg_e3: ERL_NIF_TERM, arg_e4: ERL_NIF_TERM, arg_e5: ERL_NIF_TERM, arg_e6: ERL_NIF_TERM) callconv(.c) ERL_NIF_TERM {
    var env = arg_env;
    _ = &env;
    var e1 = arg_e1;
    _ = &e1;
    var e2 = arg_e2;
    _ = &e2;
    var e3 = arg_e3;
    _ = &e3;
    var e4 = arg_e4;
    _ = &e4;
    var e5 = arg_e5;
    _ = &e5;
    var e6 = arg_e6;
    _ = &e6;
    return enif_make_tuple(env, @as(c_uint, @bitCast(@as(c_int, 6))), e1, e2, e3, e4, e5, e6);
}
pub fn enif_make_tuple7(arg_env: ?*ErlNifEnv, arg_e1: ERL_NIF_TERM, arg_e2: ERL_NIF_TERM, arg_e3: ERL_NIF_TERM, arg_e4: ERL_NIF_TERM, arg_e5: ERL_NIF_TERM, arg_e6: ERL_NIF_TERM, arg_e7: ERL_NIF_TERM) callconv(.c) ERL_NIF_TERM {
    var env = arg_env;
    _ = &env;
    var e1 = arg_e1;
    _ = &e1;
    var e2 = arg_e2;
    _ = &e2;
    var e3 = arg_e3;
    _ = &e3;
    var e4 = arg_e4;
    _ = &e4;
    var e5 = arg_e5;
    _ = &e5;
    var e6 = arg_e6;
    _ = &e6;
    var e7 = arg_e7;
    _ = &e7;
    return enif_make_tuple(env, @as(c_uint, @bitCast(@as(c_int, 7))), e1, e2, e3, e4, e5, e6, e7);
}
pub fn enif_make_tuple8(arg_env: ?*ErlNifEnv, arg_e1: ERL_NIF_TERM, arg_e2: ERL_NIF_TERM, arg_e3: ERL_NIF_TERM, arg_e4: ERL_NIF_TERM, arg_e5: ERL_NIF_TERM, arg_e6: ERL_NIF_TERM, arg_e7: ERL_NIF_TERM, arg_e8: ERL_NIF_TERM) callconv(.c) ERL_NIF_TERM {
    var env = arg_env;
    _ = &env;
    var e1 = arg_e1;
    _ = &e1;
    var e2 = arg_e2;
    _ = &e2;
    var e3 = arg_e3;
    _ = &e3;
    var e4 = arg_e4;
    _ = &e4;
    var e5 = arg_e5;
    _ = &e5;
    var e6 = arg_e6;
    _ = &e6;
    var e7 = arg_e7;
    _ = &e7;
    var e8 = arg_e8;
    _ = &e8;
    return enif_make_tuple(env, @as(c_uint, @bitCast(@as(c_int, 8))), e1, e2, e3, e4, e5, e6, e7, e8);
}
pub fn enif_make_tuple9(arg_env: ?*ErlNifEnv, arg_e1: ERL_NIF_TERM, arg_e2: ERL_NIF_TERM, arg_e3: ERL_NIF_TERM, arg_e4: ERL_NIF_TERM, arg_e5: ERL_NIF_TERM, arg_e6: ERL_NIF_TERM, arg_e7: ERL_NIF_TERM, arg_e8: ERL_NIF_TERM, arg_e9: ERL_NIF_TERM) callconv(.c) ERL_NIF_TERM {
    var env = arg_env;
    _ = &env;
    var e1 = arg_e1;
    _ = &e1;
    var e2 = arg_e2;
    _ = &e2;
    var e3 = arg_e3;
    _ = &e3;
    var e4 = arg_e4;
    _ = &e4;
    var e5 = arg_e5;
    _ = &e5;
    var e6 = arg_e6;
    _ = &e6;
    var e7 = arg_e7;
    _ = &e7;
    var e8 = arg_e8;
    _ = &e8;
    var e9 = arg_e9;
    _ = &e9;
    return enif_make_tuple(env, @as(c_uint, @bitCast(@as(c_int, 9))), e1, e2, e3, e4, e5, e6, e7, e8, e9);
}
pub fn enif_make_list1(arg_env: ?*ErlNifEnv, arg_e1: ERL_NIF_TERM) callconv(.c) ERL_NIF_TERM {
    var env = arg_env;
    _ = &env;
    var e1 = arg_e1;
    _ = &e1;
    return enif_make_list(env, @as(c_uint, @bitCast(@as(c_int, 1))), e1);
}
pub fn enif_make_list2(arg_env: ?*ErlNifEnv, arg_e1: ERL_NIF_TERM, arg_e2: ERL_NIF_TERM) callconv(.c) ERL_NIF_TERM {
    var env = arg_env;
    _ = &env;
    var e1 = arg_e1;
    _ = &e1;
    var e2 = arg_e2;
    _ = &e2;
    return enif_make_list(env, @as(c_uint, @bitCast(@as(c_int, 2))), e1, e2);
}
pub fn enif_make_list3(arg_env: ?*ErlNifEnv, arg_e1: ERL_NIF_TERM, arg_e2: ERL_NIF_TERM, arg_e3: ERL_NIF_TERM) callconv(.c) ERL_NIF_TERM {
    var env = arg_env;
    _ = &env;
    var e1 = arg_e1;
    _ = &e1;
    var e2 = arg_e2;
    _ = &e2;
    var e3 = arg_e3;
    _ = &e3;
    return enif_make_list(env, @as(c_uint, @bitCast(@as(c_int, 3))), e1, e2, e3);
}
pub fn enif_make_list4(arg_env: ?*ErlNifEnv, arg_e1: ERL_NIF_TERM, arg_e2: ERL_NIF_TERM, arg_e3: ERL_NIF_TERM, arg_e4: ERL_NIF_TERM) callconv(.c) ERL_NIF_TERM {
    var env = arg_env;
    _ = &env;
    var e1 = arg_e1;
    _ = &e1;
    var e2 = arg_e2;
    _ = &e2;
    var e3 = arg_e3;
    _ = &e3;
    var e4 = arg_e4;
    _ = &e4;
    return enif_make_list(env, @as(c_uint, @bitCast(@as(c_int, 4))), e1, e2, e3, e4);
}
pub fn enif_make_list5(arg_env: ?*ErlNifEnv, arg_e1: ERL_NIF_TERM, arg_e2: ERL_NIF_TERM, arg_e3: ERL_NIF_TERM, arg_e4: ERL_NIF_TERM, arg_e5: ERL_NIF_TERM) callconv(.c) ERL_NIF_TERM {
    var env = arg_env;
    _ = &env;
    var e1 = arg_e1;
    _ = &e1;
    var e2 = arg_e2;
    _ = &e2;
    var e3 = arg_e3;
    _ = &e3;
    var e4 = arg_e4;
    _ = &e4;
    var e5 = arg_e5;
    _ = &e5;
    return enif_make_list(env, @as(c_uint, @bitCast(@as(c_int, 5))), e1, e2, e3, e4, e5);
}
pub fn enif_make_list6(arg_env: ?*ErlNifEnv, arg_e1: ERL_NIF_TERM, arg_e2: ERL_NIF_TERM, arg_e3: ERL_NIF_TERM, arg_e4: ERL_NIF_TERM, arg_e5: ERL_NIF_TERM, arg_e6: ERL_NIF_TERM) callconv(.c) ERL_NIF_TERM {
    var env = arg_env;
    _ = &env;
    var e1 = arg_e1;
    _ = &e1;
    var e2 = arg_e2;
    _ = &e2;
    var e3 = arg_e3;
    _ = &e3;
    var e4 = arg_e4;
    _ = &e4;
    var e5 = arg_e5;
    _ = &e5;
    var e6 = arg_e6;
    _ = &e6;
    return enif_make_list(env, @as(c_uint, @bitCast(@as(c_int, 6))), e1, e2, e3, e4, e5, e6);
}
pub fn enif_make_list7(arg_env: ?*ErlNifEnv, arg_e1: ERL_NIF_TERM, arg_e2: ERL_NIF_TERM, arg_e3: ERL_NIF_TERM, arg_e4: ERL_NIF_TERM, arg_e5: ERL_NIF_TERM, arg_e6: ERL_NIF_TERM, arg_e7: ERL_NIF_TERM) callconv(.c) ERL_NIF_TERM {
    var env = arg_env;
    _ = &env;
    var e1 = arg_e1;
    _ = &e1;
    var e2 = arg_e2;
    _ = &e2;
    var e3 = arg_e3;
    _ = &e3;
    var e4 = arg_e4;
    _ = &e4;
    var e5 = arg_e5;
    _ = &e5;
    var e6 = arg_e6;
    _ = &e6;
    var e7 = arg_e7;
    _ = &e7;
    return enif_make_list(env, @as(c_uint, @bitCast(@as(c_int, 7))), e1, e2, e3, e4, e5, e6, e7);
}
pub fn enif_make_list8(arg_env: ?*ErlNifEnv, arg_e1: ERL_NIF_TERM, arg_e2: ERL_NIF_TERM, arg_e3: ERL_NIF_TERM, arg_e4: ERL_NIF_TERM, arg_e5: ERL_NIF_TERM, arg_e6: ERL_NIF_TERM, arg_e7: ERL_NIF_TERM, arg_e8: ERL_NIF_TERM) callconv(.c) ERL_NIF_TERM {
    var env = arg_env;
    _ = &env;
    var e1 = arg_e1;
    _ = &e1;
    var e2 = arg_e2;
    _ = &e2;
    var e3 = arg_e3;
    _ = &e3;
    var e4 = arg_e4;
    _ = &e4;
    var e5 = arg_e5;
    _ = &e5;
    var e6 = arg_e6;
    _ = &e6;
    var e7 = arg_e7;
    _ = &e7;
    var e8 = arg_e8;
    _ = &e8;
    return enif_make_list(env, @as(c_uint, @bitCast(@as(c_int, 8))), e1, e2, e3, e4, e5, e6, e7, e8);
}
pub fn enif_make_list9(arg_env: ?*ErlNifEnv, arg_e1: ERL_NIF_TERM, arg_e2: ERL_NIF_TERM, arg_e3: ERL_NIF_TERM, arg_e4: ERL_NIF_TERM, arg_e5: ERL_NIF_TERM, arg_e6: ERL_NIF_TERM, arg_e7: ERL_NIF_TERM, arg_e8: ERL_NIF_TERM, arg_e9: ERL_NIF_TERM) callconv(.c) ERL_NIF_TERM {
    var env = arg_env;
    _ = &env;
    var e1 = arg_e1;
    _ = &e1;
    var e2 = arg_e2;
    _ = &e2;
    var e3 = arg_e3;
    _ = &e3;
    var e4 = arg_e4;
    _ = &e4;
    var e5 = arg_e5;
    _ = &e5;
    var e6 = arg_e6;
    _ = &e6;
    var e7 = arg_e7;
    _ = &e7;
    var e8 = arg_e8;
    _ = &e8;
    var e9 = arg_e9;
    _ = &e9;
    return enif_make_list(env, @as(c_uint, @bitCast(@as(c_int, 9))), e1, e2, e3, e4, e5, e6, e7, e8, e9);
}
pub const __llvm__ = @as(c_int, 1);
pub const __clang__ = @as(c_int, 1);
pub const __clang_major__ = @as(c_int, 20);
pub const __clang_minor__ = @as(c_int, 1);
pub const __clang_patchlevel__ = @as(c_int, 2);
pub const __clang_version__ = "20.1.2 (https://github.com/ziglang/zig-bootstrap 7ef74e656cf8ddbd6bf891a8475892aa1afa6891)";
pub const __GNUC__ = @as(c_int, 4);
pub const __GNUC_MINOR__ = @as(c_int, 2);
pub const __GNUC_PATCHLEVEL__ = @as(c_int, 1);
pub const __GXX_ABI_VERSION = @as(c_int, 1002);
pub const __ATOMIC_RELAXED = @as(c_int, 0);
pub const __ATOMIC_CONSUME = @as(c_int, 1);
pub const __ATOMIC_ACQUIRE = @as(c_int, 2);
pub const __ATOMIC_RELEASE = @as(c_int, 3);
pub const __ATOMIC_ACQ_REL = @as(c_int, 4);
pub const __ATOMIC_SEQ_CST = @as(c_int, 5);
pub const __MEMORY_SCOPE_SYSTEM = @as(c_int, 0);
pub const __MEMORY_SCOPE_DEVICE = @as(c_int, 1);
pub const __MEMORY_SCOPE_WRKGRP = @as(c_int, 2);
pub const __MEMORY_SCOPE_WVFRNT = @as(c_int, 3);
pub const __MEMORY_SCOPE_SINGLE = @as(c_int, 4);
pub const __OPENCL_MEMORY_SCOPE_WORK_ITEM = @as(c_int, 0);
pub const __OPENCL_MEMORY_SCOPE_WORK_GROUP = @as(c_int, 1);
pub const __OPENCL_MEMORY_SCOPE_DEVICE = @as(c_int, 2);
pub const __OPENCL_MEMORY_SCOPE_ALL_SVM_DEVICES = @as(c_int, 3);
pub const __OPENCL_MEMORY_SCOPE_SUB_GROUP = @as(c_int, 4);
pub const __FPCLASS_SNAN = @as(c_int, 0x0001);
pub const __FPCLASS_QNAN = @as(c_int, 0x0002);
pub const __FPCLASS_NEGINF = @as(c_int, 0x0004);
pub const __FPCLASS_NEGNORMAL = @as(c_int, 0x0008);
pub const __FPCLASS_NEGSUBNORMAL = @as(c_int, 0x0010);
pub const __FPCLASS_NEGZERO = @as(c_int, 0x0020);
pub const __FPCLASS_POSZERO = @as(c_int, 0x0040);
pub const __FPCLASS_POSSUBNORMAL = @as(c_int, 0x0080);
pub const __FPCLASS_POSNORMAL = @as(c_int, 0x0100);
pub const __FPCLASS_POSINF = @as(c_int, 0x0200);
pub const __PRAGMA_REDEFINE_EXTNAME = @as(c_int, 1);
pub const __VERSION__ = "Clang 20.1.2 (https://github.com/ziglang/zig-bootstrap 7ef74e656cf8ddbd6bf891a8475892aa1afa6891)";
pub const __OBJC_BOOL_IS_BOOL = @as(c_int, 0);
pub const __CONSTANT_CFSTRINGS__ = @as(c_int, 1);
pub const __clang_literal_encoding__ = "UTF-8";
pub const __clang_wide_literal_encoding__ = "UTF-32";
pub const __ORDER_LITTLE_ENDIAN__ = @as(c_int, 1234);
pub const __ORDER_BIG_ENDIAN__ = @as(c_int, 4321);
pub const __ORDER_PDP_ENDIAN__ = @as(c_int, 3412);
pub const __BYTE_ORDER__ = __ORDER_LITTLE_ENDIAN__;
pub const __LITTLE_ENDIAN__ = @as(c_int, 1);
pub const _LP64 = @as(c_int, 1);
pub const __LP64__ = @as(c_int, 1);
pub const __CHAR_BIT__ = @as(c_int, 8);
pub const __BOOL_WIDTH__ = @as(c_int, 1);
pub const __SHRT_WIDTH__ = @as(c_int, 16);
pub const __INT_WIDTH__ = @as(c_int, 32);
pub const __LONG_WIDTH__ = @as(c_int, 64);
pub const __LLONG_WIDTH__ = @as(c_int, 64);
pub const __BITINT_MAXWIDTH__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 8388608, .decimal);
pub const __SCHAR_MAX__ = @as(c_int, 127);
pub const __SHRT_MAX__ = @as(c_int, 32767);
pub const __INT_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __LONG_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __LONG_LONG_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __WCHAR_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __WCHAR_WIDTH__ = @as(c_int, 32);
pub const __WINT_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __WINT_WIDTH__ = @as(c_int, 32);
pub const __INTMAX_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INTMAX_WIDTH__ = @as(c_int, 64);
pub const __SIZE_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __SIZE_WIDTH__ = @as(c_int, 64);
pub const __UINTMAX_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINTMAX_WIDTH__ = @as(c_int, 64);
pub const __PTRDIFF_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __PTRDIFF_WIDTH__ = @as(c_int, 64);
pub const __INTPTR_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INTPTR_WIDTH__ = @as(c_int, 64);
pub const __UINTPTR_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINTPTR_WIDTH__ = @as(c_int, 64);
pub const __SIZEOF_DOUBLE__ = @as(c_int, 8);
pub const __SIZEOF_FLOAT__ = @as(c_int, 4);
pub const __SIZEOF_INT__ = @as(c_int, 4);
pub const __SIZEOF_LONG__ = @as(c_int, 8);
pub const __SIZEOF_LONG_DOUBLE__ = @as(c_int, 16);
pub const __SIZEOF_LONG_LONG__ = @as(c_int, 8);
pub const __SIZEOF_POINTER__ = @as(c_int, 8);
pub const __SIZEOF_SHORT__ = @as(c_int, 2);
pub const __SIZEOF_PTRDIFF_T__ = @as(c_int, 8);
pub const __SIZEOF_SIZE_T__ = @as(c_int, 8);
pub const __SIZEOF_WCHAR_T__ = @as(c_int, 4);
pub const __SIZEOF_WINT_T__ = @as(c_int, 4);
pub const __SIZEOF_INT128__ = @as(c_int, 16);
pub const __INTMAX_TYPE__ = c_long;
pub const __INTMAX_FMTd__ = "ld";
pub const __INTMAX_FMTi__ = "li";
pub const __INTMAX_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `L`");
// (no file):95:9
pub const __INTMAX_C = @import("std").zig.c_translation.Macros.L_SUFFIX;
pub const __UINTMAX_TYPE__ = c_ulong;
pub const __UINTMAX_FMTo__ = "lo";
pub const __UINTMAX_FMTu__ = "lu";
pub const __UINTMAX_FMTx__ = "lx";
pub const __UINTMAX_FMTX__ = "lX";
pub const __UINTMAX_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `UL`");
// (no file):102:9
pub const __UINTMAX_C = @import("std").zig.c_translation.Macros.UL_SUFFIX;
pub const __PTRDIFF_TYPE__ = c_long;
pub const __PTRDIFF_FMTd__ = "ld";
pub const __PTRDIFF_FMTi__ = "li";
pub const __INTPTR_TYPE__ = c_long;
pub const __INTPTR_FMTd__ = "ld";
pub const __INTPTR_FMTi__ = "li";
pub const __SIZE_TYPE__ = c_ulong;
pub const __SIZE_FMTo__ = "lo";
pub const __SIZE_FMTu__ = "lu";
pub const __SIZE_FMTx__ = "lx";
pub const __SIZE_FMTX__ = "lX";
pub const __WCHAR_TYPE__ = c_int;
pub const __WINT_TYPE__ = c_uint;
pub const __SIG_ATOMIC_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __SIG_ATOMIC_WIDTH__ = @as(c_int, 32);
pub const __CHAR16_TYPE__ = c_ushort;
pub const __CHAR32_TYPE__ = c_uint;
pub const __UINTPTR_TYPE__ = c_ulong;
pub const __UINTPTR_FMTo__ = "lo";
pub const __UINTPTR_FMTu__ = "lu";
pub const __UINTPTR_FMTx__ = "lx";
pub const __UINTPTR_FMTX__ = "lX";
pub const __FLT16_DENORM_MIN__ = @as(f16, 5.9604644775390625e-8);
pub const __FLT16_NORM_MAX__ = @as(f16, 6.5504e+4);
pub const __FLT16_HAS_DENORM__ = @as(c_int, 1);
pub const __FLT16_DIG__ = @as(c_int, 3);
pub const __FLT16_DECIMAL_DIG__ = @as(c_int, 5);
pub const __FLT16_EPSILON__ = @as(f16, 9.765625e-4);
pub const __FLT16_HAS_INFINITY__ = @as(c_int, 1);
pub const __FLT16_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __FLT16_MANT_DIG__ = @as(c_int, 11);
pub const __FLT16_MAX_10_EXP__ = @as(c_int, 4);
pub const __FLT16_MAX_EXP__ = @as(c_int, 16);
pub const __FLT16_MAX__ = @as(f16, 6.5504e+4);
pub const __FLT16_MIN_10_EXP__ = -@as(c_int, 4);
pub const __FLT16_MIN_EXP__ = -@as(c_int, 13);
pub const __FLT16_MIN__ = @as(f16, 6.103515625e-5);
pub const __FLT_DENORM_MIN__ = @as(f32, 1.40129846e-45);
pub const __FLT_NORM_MAX__ = @as(f32, 3.40282347e+38);
pub const __FLT_HAS_DENORM__ = @as(c_int, 1);
pub const __FLT_DIG__ = @as(c_int, 6);
pub const __FLT_DECIMAL_DIG__ = @as(c_int, 9);
pub const __FLT_EPSILON__ = @as(f32, 1.19209290e-7);
pub const __FLT_HAS_INFINITY__ = @as(c_int, 1);
pub const __FLT_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __FLT_MANT_DIG__ = @as(c_int, 24);
pub const __FLT_MAX_10_EXP__ = @as(c_int, 38);
pub const __FLT_MAX_EXP__ = @as(c_int, 128);
pub const __FLT_MAX__ = @as(f32, 3.40282347e+38);
pub const __FLT_MIN_10_EXP__ = -@as(c_int, 37);
pub const __FLT_MIN_EXP__ = -@as(c_int, 125);
pub const __FLT_MIN__ = @as(f32, 1.17549435e-38);
pub const __DBL_DENORM_MIN__ = @as(f64, 4.9406564584124654e-324);
pub const __DBL_NORM_MAX__ = @as(f64, 1.7976931348623157e+308);
pub const __DBL_HAS_DENORM__ = @as(c_int, 1);
pub const __DBL_DIG__ = @as(c_int, 15);
pub const __DBL_DECIMAL_DIG__ = @as(c_int, 17);
pub const __DBL_EPSILON__ = @as(f64, 2.2204460492503131e-16);
pub const __DBL_HAS_INFINITY__ = @as(c_int, 1);
pub const __DBL_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __DBL_MANT_DIG__ = @as(c_int, 53);
pub const __DBL_MAX_10_EXP__ = @as(c_int, 308);
pub const __DBL_MAX_EXP__ = @as(c_int, 1024);
pub const __DBL_MAX__ = @as(f64, 1.7976931348623157e+308);
pub const __DBL_MIN_10_EXP__ = -@as(c_int, 307);
pub const __DBL_MIN_EXP__ = -@as(c_int, 1021);
pub const __DBL_MIN__ = @as(f64, 2.2250738585072014e-308);
pub const __LDBL_DENORM_MIN__ = @as(c_longdouble, 3.64519953188247460253e-4951);
pub const __LDBL_NORM_MAX__ = @as(c_longdouble, 1.18973149535723176502e+4932);
pub const __LDBL_HAS_DENORM__ = @as(c_int, 1);
pub const __LDBL_DIG__ = @as(c_int, 18);
pub const __LDBL_DECIMAL_DIG__ = @as(c_int, 21);
pub const __LDBL_EPSILON__ = @as(c_longdouble, 1.08420217248550443401e-19);
pub const __LDBL_HAS_INFINITY__ = @as(c_int, 1);
pub const __LDBL_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __LDBL_MANT_DIG__ = @as(c_int, 64);
pub const __LDBL_MAX_10_EXP__ = @as(c_int, 4932);
pub const __LDBL_MAX_EXP__ = @as(c_int, 16384);
pub const __LDBL_MAX__ = @as(c_longdouble, 1.18973149535723176502e+4932);
pub const __LDBL_MIN_10_EXP__ = -@as(c_int, 4931);
pub const __LDBL_MIN_EXP__ = -@as(c_int, 16381);
pub const __LDBL_MIN__ = @as(c_longdouble, 3.36210314311209350626e-4932);
pub const __POINTER_WIDTH__ = @as(c_int, 64);
pub const __BIGGEST_ALIGNMENT__ = @as(c_int, 16);
pub const __WINT_UNSIGNED__ = @as(c_int, 1);
pub const __INT8_TYPE__ = i8;
pub const __INT8_FMTd__ = "hhd";
pub const __INT8_FMTi__ = "hhi";
pub const __INT8_C_SUFFIX__ = "";
pub inline fn __INT8_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub const __INT16_TYPE__ = c_short;
pub const __INT16_FMTd__ = "hd";
pub const __INT16_FMTi__ = "hi";
pub const __INT16_C_SUFFIX__ = "";
pub inline fn __INT16_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub const __INT32_TYPE__ = c_int;
pub const __INT32_FMTd__ = "d";
pub const __INT32_FMTi__ = "i";
pub const __INT32_C_SUFFIX__ = "";
pub inline fn __INT32_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub const __INT64_TYPE__ = c_long;
pub const __INT64_FMTd__ = "ld";
pub const __INT64_FMTi__ = "li";
pub const __INT64_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `L`");
// (no file):207:9
pub const __INT64_C = @import("std").zig.c_translation.Macros.L_SUFFIX;
pub const __UINT8_TYPE__ = u8;
pub const __UINT8_FMTo__ = "hho";
pub const __UINT8_FMTu__ = "hhu";
pub const __UINT8_FMTx__ = "hhx";
pub const __UINT8_FMTX__ = "hhX";
pub const __UINT8_C_SUFFIX__ = "";
pub inline fn __UINT8_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub const __UINT8_MAX__ = @as(c_int, 255);
pub const __INT8_MAX__ = @as(c_int, 127);
pub const __UINT16_TYPE__ = c_ushort;
pub const __UINT16_FMTo__ = "ho";
pub const __UINT16_FMTu__ = "hu";
pub const __UINT16_FMTx__ = "hx";
pub const __UINT16_FMTX__ = "hX";
pub const __UINT16_C_SUFFIX__ = "";
pub inline fn __UINT16_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub const __UINT16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __INT16_MAX__ = @as(c_int, 32767);
pub const __UINT32_TYPE__ = c_uint;
pub const __UINT32_FMTo__ = "o";
pub const __UINT32_FMTu__ = "u";
pub const __UINT32_FMTx__ = "x";
pub const __UINT32_FMTX__ = "X";
pub const __UINT32_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `U`");
// (no file):232:9
pub const __UINT32_C = @import("std").zig.c_translation.Macros.U_SUFFIX;
pub const __UINT32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __INT32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __UINT64_TYPE__ = c_ulong;
pub const __UINT64_FMTo__ = "lo";
pub const __UINT64_FMTu__ = "lu";
pub const __UINT64_FMTx__ = "lx";
pub const __UINT64_FMTX__ = "lX";
pub const __UINT64_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `UL`");
// (no file):241:9
pub const __UINT64_C = @import("std").zig.c_translation.Macros.UL_SUFFIX;
pub const __UINT64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __INT64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INT_LEAST8_TYPE__ = i8;
pub const __INT_LEAST8_MAX__ = @as(c_int, 127);
pub const __INT_LEAST8_WIDTH__ = @as(c_int, 8);
pub const __INT_LEAST8_FMTd__ = "hhd";
pub const __INT_LEAST8_FMTi__ = "hhi";
pub const __UINT_LEAST8_TYPE__ = u8;
pub const __UINT_LEAST8_MAX__ = @as(c_int, 255);
pub const __UINT_LEAST8_FMTo__ = "hho";
pub const __UINT_LEAST8_FMTu__ = "hhu";
pub const __UINT_LEAST8_FMTx__ = "hhx";
pub const __UINT_LEAST8_FMTX__ = "hhX";
pub const __INT_LEAST16_TYPE__ = c_short;
pub const __INT_LEAST16_MAX__ = @as(c_int, 32767);
pub const __INT_LEAST16_WIDTH__ = @as(c_int, 16);
pub const __INT_LEAST16_FMTd__ = "hd";
pub const __INT_LEAST16_FMTi__ = "hi";
pub const __UINT_LEAST16_TYPE__ = c_ushort;
pub const __UINT_LEAST16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __UINT_LEAST16_FMTo__ = "ho";
pub const __UINT_LEAST16_FMTu__ = "hu";
pub const __UINT_LEAST16_FMTx__ = "hx";
pub const __UINT_LEAST16_FMTX__ = "hX";
pub const __INT_LEAST32_TYPE__ = c_int;
pub const __INT_LEAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_LEAST32_WIDTH__ = @as(c_int, 32);
pub const __INT_LEAST32_FMTd__ = "d";
pub const __INT_LEAST32_FMTi__ = "i";
pub const __UINT_LEAST32_TYPE__ = c_uint;
pub const __UINT_LEAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __UINT_LEAST32_FMTo__ = "o";
pub const __UINT_LEAST32_FMTu__ = "u";
pub const __UINT_LEAST32_FMTx__ = "x";
pub const __UINT_LEAST32_FMTX__ = "X";
pub const __INT_LEAST64_TYPE__ = c_long;
pub const __INT_LEAST64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INT_LEAST64_WIDTH__ = @as(c_int, 64);
pub const __INT_LEAST64_FMTd__ = "ld";
pub const __INT_LEAST64_FMTi__ = "li";
pub const __UINT_LEAST64_TYPE__ = c_ulong;
pub const __UINT_LEAST64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINT_LEAST64_FMTo__ = "lo";
pub const __UINT_LEAST64_FMTu__ = "lu";
pub const __UINT_LEAST64_FMTx__ = "lx";
pub const __UINT_LEAST64_FMTX__ = "lX";
pub const __INT_FAST8_TYPE__ = i8;
pub const __INT_FAST8_MAX__ = @as(c_int, 127);
pub const __INT_FAST8_WIDTH__ = @as(c_int, 8);
pub const __INT_FAST8_FMTd__ = "hhd";
pub const __INT_FAST8_FMTi__ = "hhi";
pub const __UINT_FAST8_TYPE__ = u8;
pub const __UINT_FAST8_MAX__ = @as(c_int, 255);
pub const __UINT_FAST8_FMTo__ = "hho";
pub const __UINT_FAST8_FMTu__ = "hhu";
pub const __UINT_FAST8_FMTx__ = "hhx";
pub const __UINT_FAST8_FMTX__ = "hhX";
pub const __INT_FAST16_TYPE__ = c_short;
pub const __INT_FAST16_MAX__ = @as(c_int, 32767);
pub const __INT_FAST16_WIDTH__ = @as(c_int, 16);
pub const __INT_FAST16_FMTd__ = "hd";
pub const __INT_FAST16_FMTi__ = "hi";
pub const __UINT_FAST16_TYPE__ = c_ushort;
pub const __UINT_FAST16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __UINT_FAST16_FMTo__ = "ho";
pub const __UINT_FAST16_FMTu__ = "hu";
pub const __UINT_FAST16_FMTx__ = "hx";
pub const __UINT_FAST16_FMTX__ = "hX";
pub const __INT_FAST32_TYPE__ = c_int;
pub const __INT_FAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_FAST32_WIDTH__ = @as(c_int, 32);
pub const __INT_FAST32_FMTd__ = "d";
pub const __INT_FAST32_FMTi__ = "i";
pub const __UINT_FAST32_TYPE__ = c_uint;
pub const __UINT_FAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __UINT_FAST32_FMTo__ = "o";
pub const __UINT_FAST32_FMTu__ = "u";
pub const __UINT_FAST32_FMTx__ = "x";
pub const __UINT_FAST32_FMTX__ = "X";
pub const __INT_FAST64_TYPE__ = c_long;
pub const __INT_FAST64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INT_FAST64_WIDTH__ = @as(c_int, 64);
pub const __INT_FAST64_FMTd__ = "ld";
pub const __INT_FAST64_FMTi__ = "li";
pub const __UINT_FAST64_TYPE__ = c_ulong;
pub const __UINT_FAST64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINT_FAST64_FMTo__ = "lo";
pub const __UINT_FAST64_FMTu__ = "lu";
pub const __UINT_FAST64_FMTx__ = "lx";
pub const __UINT_FAST64_FMTX__ = "lX";
pub const __USER_LABEL_PREFIX__ = "";
pub const __FINITE_MATH_ONLY__ = @as(c_int, 0);
pub const __GNUC_STDC_INLINE__ = @as(c_int, 1);
pub const __GCC_ATOMIC_TEST_AND_SET_TRUEVAL = @as(c_int, 1);
pub const __GCC_DESTRUCTIVE_SIZE = @as(c_int, 64);
pub const __GCC_CONSTRUCTIVE_SIZE = @as(c_int, 64);
pub const __CLANG_ATOMIC_BOOL_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR16_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR32_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_WCHAR_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_SHORT_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_INT_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_LONG_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_LLONG_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_POINTER_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_BOOL_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR16_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR32_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_WCHAR_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_SHORT_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_INT_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_LONG_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_LLONG_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_POINTER_LOCK_FREE = @as(c_int, 2);
pub const __NO_INLINE__ = @as(c_int, 1);
pub const __PIC__ = @as(c_int, 2);
pub const __pic__ = @as(c_int, 2);
pub const __FLT_RADIX__ = @as(c_int, 2);
pub const __DECIMAL_DIG__ = __LDBL_DECIMAL_DIG__;
pub const __ELF__ = @as(c_int, 1);
pub const __GCC_ASM_FLAG_OUTPUTS__ = @as(c_int, 1);
pub const __code_model_small__ = @as(c_int, 1);
pub const __amd64__ = @as(c_int, 1);
pub const __amd64 = @as(c_int, 1);
pub const __x86_64 = @as(c_int, 1);
pub const __x86_64__ = @as(c_int, 1);
pub const __SEG_GS = @as(c_int, 1);
pub const __SEG_FS = @as(c_int, 1);
pub const __seg_gs = @compileError("unable to translate macro: undefined identifier `address_space`");
// (no file):375:9
pub const __seg_fs = @compileError("unable to translate macro: undefined identifier `address_space`");
// (no file):376:9
pub const __corei7 = @as(c_int, 1);
pub const __corei7__ = @as(c_int, 1);
pub const __tune_corei7__ = @as(c_int, 1);
pub const __REGISTER_PREFIX__ = "";
pub const __NO_MATH_INLINES = @as(c_int, 1);
pub const __AES__ = @as(c_int, 1);
pub const __PCLMUL__ = @as(c_int, 1);
pub const __LAHF_SAHF__ = @as(c_int, 1);
pub const __LZCNT__ = @as(c_int, 1);
pub const __RDRND__ = @as(c_int, 1);
pub const __FSGSBASE__ = @as(c_int, 1);
pub const __BMI__ = @as(c_int, 1);
pub const __BMI2__ = @as(c_int, 1);
pub const __POPCNT__ = @as(c_int, 1);
pub const __PRFCHW__ = @as(c_int, 1);
pub const __RDSEED__ = @as(c_int, 1);
pub const __ADX__ = @as(c_int, 1);
pub const __MOVBE__ = @as(c_int, 1);
pub const __FMA__ = @as(c_int, 1);
pub const __F16C__ = @as(c_int, 1);
pub const __FXSR__ = @as(c_int, 1);
pub const __XSAVE__ = @as(c_int, 1);
pub const __XSAVEOPT__ = @as(c_int, 1);
pub const __XSAVEC__ = @as(c_int, 1);
pub const __XSAVES__ = @as(c_int, 1);
pub const __CLFLUSHOPT__ = @as(c_int, 1);
pub const __SGX__ = @as(c_int, 1);
pub const __INVPCID__ = @as(c_int, 1);
pub const __CRC32__ = @as(c_int, 1);
pub const __AVX2__ = @as(c_int, 1);
pub const __AVX__ = @as(c_int, 1);
pub const __SSE4_2__ = @as(c_int, 1);
pub const __SSE4_1__ = @as(c_int, 1);
pub const __SSSE3__ = @as(c_int, 1);
pub const __SSE3__ = @as(c_int, 1);
pub const __SSE2__ = @as(c_int, 1);
pub const __SSE2_MATH__ = @as(c_int, 1);
pub const __SSE__ = @as(c_int, 1);
pub const __SSE_MATH__ = @as(c_int, 1);
pub const __MMX__ = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_16 = @as(c_int, 1);
pub const __SIZEOF_FLOAT128__ = @as(c_int, 16);
pub const unix = @as(c_int, 1);
pub const __unix = @as(c_int, 1);
pub const __unix__ = @as(c_int, 1);
pub const linux = @as(c_int, 1);
pub const __linux = @as(c_int, 1);
pub const __linux__ = @as(c_int, 1);
pub const __gnu_linux__ = @as(c_int, 1);
pub const __FLOAT128__ = @as(c_int, 1);
pub const __STDC__ = @as(c_int, 1);
pub const __STDC_HOSTED__ = @as(c_int, 1);
pub const __STDC_VERSION__ = @as(c_long, 201710);
pub const __STDC_UTF_16__ = @as(c_int, 1);
pub const __STDC_UTF_32__ = @as(c_int, 1);
pub const __STDC_EMBED_NOT_FOUND__ = @as(c_int, 0);
pub const __STDC_EMBED_FOUND__ = @as(c_int, 1);
pub const __STDC_EMBED_EMPTY__ = @as(c_int, 2);
pub const __GLIBC_MINOR__ = @as(c_int, 42);
pub const __GCC_HAVE_DWARF2_CFI_ASM = @as(c_int, 1);
pub const __ERL_NIF_H__ = "";
pub const __ERL_DRV_NIF_H__ = "";
pub const SIZEOF_CHAR = @as(c_int, 1);
pub const SIZEOF_SHORT = @as(c_int, 2);
pub const SIZEOF_INT = @as(c_int, 4);
pub const SIZEOF_LONG = @as(c_int, 8);
pub const SIZEOF_LONG_LONG = @as(c_int, 8);
pub const SIZEOF_VOID_P = @as(c_int, 8);
pub const ERL_NAPI_SINT64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const ERL_NAPI_SINT64_MIN__ = -ERL_NAPI_SINT64_MAX__ - @as(c_long, 1);
pub const ERTS_NAPI_TIME_ERROR__ = ERL_NAPI_SINT64_MIN__;
pub const ERTS_NAPI_SEC__ = @as(c_int, 0);
pub const ERTS_NAPI_MSEC__ = @as(c_int, 1);
pub const ERTS_NAPI_USEC__ = @as(c_int, 2);
pub const ERTS_NAPI_NSEC__ = @as(c_int, 3);
pub const _SYS_TYPES_H = @as(c_int, 1);
pub const _FEATURES_H = @as(c_int, 1);
pub const __KERNEL_STRICT_NAMES = "";
pub inline fn __GNUC_PREREQ(maj: anytype, min: anytype) @TypeOf(((__GNUC__ << @as(c_int, 16)) + __GNUC_MINOR__) >= ((maj << @as(c_int, 16)) + min)) {
    _ = &maj;
    _ = &min;
    return ((__GNUC__ << @as(c_int, 16)) + __GNUC_MINOR__) >= ((maj << @as(c_int, 16)) + min);
}
pub inline fn __glibc_clang_prereq(maj: anytype, min: anytype) @TypeOf(((__clang_major__ << @as(c_int, 16)) + __clang_minor__) >= ((maj << @as(c_int, 16)) + min)) {
    _ = &maj;
    _ = &min;
    return ((__clang_major__ << @as(c_int, 16)) + __clang_minor__) >= ((maj << @as(c_int, 16)) + min);
}
pub const __GLIBC_USE = @compileError("unable to translate macro: undefined identifier `__GLIBC_USE_`");
// /usr/include/features.h:191:9
pub const _DEFAULT_SOURCE = @as(c_int, 1);
pub const __GLIBC_USE_ISOC2Y = @as(c_int, 0);
pub const __GLIBC_USE_ISOC23 = @as(c_int, 0);
pub const __USE_ISOC11 = @as(c_int, 1);
pub const __USE_ISOC99 = @as(c_int, 1);
pub const __USE_ISOC95 = @as(c_int, 1);
pub const __USE_POSIX_IMPLICITLY = @as(c_int, 1);
pub const _POSIX_SOURCE = @as(c_int, 1);
pub const _POSIX_C_SOURCE = @as(c_long, 200809);
pub const __USE_POSIX = @as(c_int, 1);
pub const __USE_POSIX2 = @as(c_int, 1);
pub const __USE_POSIX199309 = @as(c_int, 1);
pub const __USE_POSIX199506 = @as(c_int, 1);
pub const __USE_XOPEN2K = @as(c_int, 1);
pub const __USE_XOPEN2K8 = @as(c_int, 1);
pub const _ATFILE_SOURCE = @as(c_int, 1);
pub const __WORDSIZE = @as(c_int, 64);
pub const __WORDSIZE_TIME64_COMPAT32 = @as(c_int, 1);
pub const __SYSCALL_WORDSIZE = @as(c_int, 64);
pub const __TIMESIZE = __WORDSIZE;
pub const __USE_TIME_BITS64 = @as(c_int, 1);
pub const __USE_MISC = @as(c_int, 1);
pub const __USE_ATFILE = @as(c_int, 1);
pub const __USE_FORTIFY_LEVEL = @as(c_int, 0);
pub const __GLIBC_USE_DEPRECATED_GETS = @as(c_int, 0);
pub const __GLIBC_USE_DEPRECATED_SCANF = @as(c_int, 0);
pub const __GLIBC_USE_C23_STRTOL = @as(c_int, 0);
pub const _STDC_PREDEF_H = @as(c_int, 1);
pub const __STDC_IEC_559__ = @as(c_int, 1);
pub const __STDC_IEC_60559_BFP__ = @as(c_long, 201404);
pub const __STDC_IEC_559_COMPLEX__ = @as(c_int, 1);
pub const __STDC_IEC_60559_COMPLEX__ = @as(c_long, 201404);
pub const __STDC_ISO_10646__ = @as(c_long, 201706);
pub const __GNU_LIBRARY__ = @as(c_int, 6);
pub const __GLIBC__ = @as(c_int, 2);
pub inline fn __GLIBC_PREREQ(maj: anytype, min: anytype) @TypeOf(((__GLIBC__ << @as(c_int, 16)) + __GLIBC_MINOR__) >= ((maj << @as(c_int, 16)) + min)) {
    _ = &maj;
    _ = &min;
    return ((__GLIBC__ << @as(c_int, 16)) + __GLIBC_MINOR__) >= ((maj << @as(c_int, 16)) + min);
}
pub const _SYS_CDEFS_H = @as(c_int, 1);
pub const __glibc_has_attribute = @compileError("unable to translate macro: undefined identifier `__has_attribute`");
// /usr/include/sys/cdefs.h:45:10
pub inline fn __glibc_has_builtin(name: anytype) @TypeOf(__has_builtin(name)) {
    _ = &name;
    return __has_builtin(name);
}
pub const __glibc_has_extension = @compileError("unable to translate macro: undefined identifier `__has_extension`");
// /usr/include/sys/cdefs.h:55:10
pub const __LEAF = "";
pub const __LEAF_ATTR = "";
pub const __THROW = @compileError("unable to translate macro: undefined identifier `__nothrow__`");
// /usr/include/sys/cdefs.h:79:11
pub const __THROWNL = @compileError("unable to translate macro: undefined identifier `__nothrow__`");
// /usr/include/sys/cdefs.h:80:11
pub const __NTH = @compileError("unable to translate macro: undefined identifier `__nothrow__`");
// /usr/include/sys/cdefs.h:81:11
pub const __NTHNL = @compileError("unable to translate macro: undefined identifier `__nothrow__`");
// /usr/include/sys/cdefs.h:82:11
pub const __COLD = @compileError("unable to translate macro: undefined identifier `__cold__`");
// /usr/include/sys/cdefs.h:102:11
pub inline fn __P(args: anytype) @TypeOf(args) {
    _ = &args;
    return args;
}
pub inline fn __PMT(args: anytype) @TypeOf(args) {
    _ = &args;
    return args;
}
pub const __CONCAT = @compileError("unable to translate C expr: unexpected token '##'");
// /usr/include/sys/cdefs.h:131:9
pub const __STRING = @compileError("unable to translate C expr: unexpected token '#'");
// /usr/include/sys/cdefs.h:132:9
pub const __ptr_t = ?*anyopaque;
pub const __BEGIN_DECLS = "";
pub const __END_DECLS = "";
pub const __attribute_overloadable__ = @compileError("unable to translate macro: undefined identifier `__overloadable__`");
// /usr/include/sys/cdefs.h:151:10
pub inline fn __bos(ptr: anytype) @TypeOf(__builtin_object_size(ptr, __USE_FORTIFY_LEVEL > @as(c_int, 1))) {
    _ = &ptr;
    return __builtin_object_size(ptr, __USE_FORTIFY_LEVEL > @as(c_int, 1));
}
pub inline fn __bos0(ptr: anytype) @TypeOf(__builtin_object_size(ptr, @as(c_int, 0))) {
    _ = &ptr;
    return __builtin_object_size(ptr, @as(c_int, 0));
}
pub inline fn __glibc_objsize0(__o: anytype) @TypeOf(__bos0(__o)) {
    _ = &__o;
    return __bos0(__o);
}
pub inline fn __glibc_objsize(__o: anytype) @TypeOf(__bos(__o)) {
    _ = &__o;
    return __bos(__o);
}
pub const __warnattr = @compileError("unable to translate C expr: unexpected token ''");
// /usr/include/sys/cdefs.h:370:10
pub const __errordecl = @compileError("unable to translate C expr: unexpected token 'extern'");
// /usr/include/sys/cdefs.h:371:10
pub const __flexarr = @compileError("unable to translate C expr: unexpected token '['");
// /usr/include/sys/cdefs.h:379:10
pub const __glibc_c99_flexarr_available = @as(c_int, 1);
pub const __REDIRECT = @compileError("unable to translate C expr: unexpected token '__asm__'");
// /usr/include/sys/cdefs.h:410:10
pub const __REDIRECT_NTH = @compileError("unable to translate C expr: unexpected token '__asm__'");
// /usr/include/sys/cdefs.h:417:11
pub const __REDIRECT_NTHNL = @compileError("unable to translate C expr: unexpected token '__asm__'");
// /usr/include/sys/cdefs.h:419:11
pub const __ASMNAME = @compileError("unable to translate C expr: unexpected token ','");
// /usr/include/sys/cdefs.h:422:10
pub inline fn __ASMNAME2(prefix: anytype, cname: anytype) @TypeOf(__STRING(prefix) ++ cname) {
    _ = &prefix;
    _ = &cname;
    return __STRING(prefix) ++ cname;
}
pub const __REDIRECT_FORTIFY = __REDIRECT;
pub const __REDIRECT_FORTIFY_NTH = __REDIRECT_NTH;
pub const __attribute_malloc__ = @compileError("unable to translate macro: undefined identifier `__malloc__`");
// /usr/include/sys/cdefs.h:452:10
pub const __attribute_alloc_size__ = @compileError("unable to translate C expr: unexpected token ''");
// /usr/include/sys/cdefs.h:463:10
pub const __attribute_alloc_align__ = @compileError("unable to translate macro: undefined identifier `__alloc_align__`");
// /usr/include/sys/cdefs.h:469:10
pub const __attribute_pure__ = @compileError("unable to translate macro: undefined identifier `__pure__`");
// /usr/include/sys/cdefs.h:479:10
pub const __attribute_const__ = @compileError("unable to translate C expr: unexpected token '__attribute__'");
// /usr/include/sys/cdefs.h:486:10
pub const __attribute_maybe_unused__ = @compileError("unable to translate macro: undefined identifier `__unused__`");
// /usr/include/sys/cdefs.h:492:10
pub const __attribute_used__ = @compileError("unable to translate macro: undefined identifier `__used__`");
// /usr/include/sys/cdefs.h:501:10
pub const __attribute_noinline__ = @compileError("unable to translate macro: undefined identifier `__noinline__`");
// /usr/include/sys/cdefs.h:502:10
pub const __attribute_deprecated__ = @compileError("unable to translate macro: undefined identifier `__deprecated__`");
// /usr/include/sys/cdefs.h:510:10
pub const __attribute_deprecated_msg__ = @compileError("unable to translate macro: undefined identifier `__deprecated__`");
// /usr/include/sys/cdefs.h:520:10
pub const __attribute_format_arg__ = @compileError("unable to translate macro: undefined identifier `__format_arg__`");
// /usr/include/sys/cdefs.h:533:10
pub const __attribute_format_strfmon__ = @compileError("unable to translate macro: undefined identifier `__format__`");
// /usr/include/sys/cdefs.h:543:10
pub const __attribute_nonnull__ = @compileError("unable to translate macro: undefined identifier `__nonnull__`");
// /usr/include/sys/cdefs.h:555:11
pub inline fn __nonnull(params: anytype) @TypeOf(__attribute_nonnull__(params)) {
    _ = &params;
    return __attribute_nonnull__(params);
}
pub const __returns_nonnull = @compileError("unable to translate macro: undefined identifier `__returns_nonnull__`");
// /usr/include/sys/cdefs.h:568:10
pub const __attribute_warn_unused_result__ = @compileError("unable to translate macro: undefined identifier `__warn_unused_result__`");
// /usr/include/sys/cdefs.h:577:10
pub const __wur = "";
pub const __always_inline = @compileError("unable to translate macro: undefined identifier `__always_inline__`");
// /usr/include/sys/cdefs.h:595:10
pub const __attribute_artificial__ = @compileError("unable to translate macro: undefined identifier `__artificial__`");
// /usr/include/sys/cdefs.h:604:10
pub const __extern_inline = @compileError("unable to translate macro: undefined identifier `__gnu_inline__`");
// /usr/include/sys/cdefs.h:622:11
pub const __extern_always_inline = @compileError("unable to translate macro: undefined identifier `__gnu_inline__`");
// /usr/include/sys/cdefs.h:623:11
pub const __fortify_function = __extern_always_inline ++ __attribute_artificial__;
pub const __restrict_arr = @compileError("unable to translate C expr: unexpected token '__restrict'");
// /usr/include/sys/cdefs.h:666:10
pub inline fn __glibc_unlikely(cond: anytype) @TypeOf(__builtin_expect(cond, @as(c_int, 0))) {
    _ = &cond;
    return __builtin_expect(cond, @as(c_int, 0));
}
pub inline fn __glibc_likely(cond: anytype) @TypeOf(__builtin_expect(cond, @as(c_int, 1))) {
    _ = &cond;
    return __builtin_expect(cond, @as(c_int, 1));
}
pub const __attribute_nonstring__ = "";
pub const __attribute_copy__ = @compileError("unable to translate C expr: unexpected token ''");
// /usr/include/sys/cdefs.h:715:10
pub const __LDOUBLE_REDIRECTS_TO_FLOAT128_ABI = @as(c_int, 0);
pub inline fn __LDBL_REDIR1(name: anytype, proto: anytype, alias: anytype) @TypeOf(name ++ proto) {
    _ = &name;
    _ = &proto;
    _ = &alias;
    return name ++ proto;
}
pub inline fn __LDBL_REDIR(name: anytype, proto: anytype) @TypeOf(name ++ proto) {
    _ = &name;
    _ = &proto;
    return name ++ proto;
}
pub inline fn __LDBL_REDIR1_NTH(name: anytype, proto: anytype, alias: anytype) @TypeOf(name ++ proto ++ __THROW) {
    _ = &name;
    _ = &proto;
    _ = &alias;
    return name ++ proto ++ __THROW;
}
pub inline fn __LDBL_REDIR_NTH(name: anytype, proto: anytype) @TypeOf(name ++ proto ++ __THROW) {
    _ = &name;
    _ = &proto;
    return name ++ proto ++ __THROW;
}
pub const __LDBL_REDIR2_DECL = @compileError("unable to translate C expr: unexpected token ''");
// /usr/include/sys/cdefs.h:792:10
pub const __LDBL_REDIR_DECL = @compileError("unable to translate C expr: unexpected token ''");
// /usr/include/sys/cdefs.h:793:10
pub inline fn __REDIRECT_LDBL(name: anytype, proto: anytype, alias: anytype) @TypeOf(__REDIRECT(name, proto, alias)) {
    _ = &name;
    _ = &proto;
    _ = &alias;
    return __REDIRECT(name, proto, alias);
}
pub inline fn __REDIRECT_NTH_LDBL(name: anytype, proto: anytype, alias: anytype) @TypeOf(__REDIRECT_NTH(name, proto, alias)) {
    _ = &name;
    _ = &proto;
    _ = &alias;
    return __REDIRECT_NTH(name, proto, alias);
}
pub const __glibc_macro_warning1 = @compileError("unable to translate macro: undefined identifier `_Pragma`");
// /usr/include/sys/cdefs.h:807:10
pub const __glibc_macro_warning = @compileError("unable to translate macro: undefined identifier `GCC`");
// /usr/include/sys/cdefs.h:808:10
pub const __HAVE_GENERIC_SELECTION = @as(c_int, 1);
pub const __fortified_attr_access = @compileError("unable to translate C expr: unexpected token ''");
// /usr/include/sys/cdefs.h:853:11
pub const __attr_access = @compileError("unable to translate C expr: unexpected token ''");
// /usr/include/sys/cdefs.h:854:11
pub const __attr_access_none = @compileError("unable to translate C expr: unexpected token ''");
// /usr/include/sys/cdefs.h:855:11
pub const __attr_dealloc = @compileError("unable to translate C expr: unexpected token ''");
// /usr/include/sys/cdefs.h:865:10
pub const __attr_dealloc_free = "";
pub const __attribute_returns_twice__ = @compileError("unable to translate macro: undefined identifier `__returns_twice__`");
// /usr/include/sys/cdefs.h:872:10
pub const __attribute_struct_may_alias__ = @compileError("unable to translate macro: undefined identifier `__may_alias__`");
// /usr/include/sys/cdefs.h:881:10
pub const __stub___compat_bdflush = "";
pub const __stub_chflags = "";
pub const __stub_fchflags = "";
pub const __stub_gtty = "";
pub const __stub_revoke = "";
pub const __stub_setlogin = "";
pub const __stub_sigreturn = "";
pub const __stub_stty = "";
pub const _BITS_TYPES_H = @as(c_int, 1);
pub const __S16_TYPE = c_short;
pub const __U16_TYPE = c_ushort;
pub const __S32_TYPE = c_int;
pub const __U32_TYPE = c_uint;
pub const __SLONGWORD_TYPE = c_long;
pub const __ULONGWORD_TYPE = c_ulong;
pub const __SQUAD_TYPE = c_long;
pub const __UQUAD_TYPE = c_ulong;
pub const __SWORD_TYPE = c_long;
pub const __UWORD_TYPE = c_ulong;
pub const __SLONG32_TYPE = c_int;
pub const __ULONG32_TYPE = c_uint;
pub const __S64_TYPE = c_long;
pub const __U64_TYPE = c_ulong;
pub const __STD_TYPE = @compileError("unable to translate C expr: unexpected token 'typedef'");
// /usr/include/bits/types.h:137:10
pub const _BITS_TYPESIZES_H = @as(c_int, 1);
pub const __SYSCALL_SLONG_TYPE = __SLONGWORD_TYPE;
pub const __SYSCALL_ULONG_TYPE = __ULONGWORD_TYPE;
pub const __DEV_T_TYPE = __UQUAD_TYPE;
pub const __UID_T_TYPE = __U32_TYPE;
pub const __GID_T_TYPE = __U32_TYPE;
pub const __INO_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __INO64_T_TYPE = __UQUAD_TYPE;
pub const __MODE_T_TYPE = __U32_TYPE;
pub const __NLINK_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __FSWORD_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __OFF_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __OFF64_T_TYPE = __SQUAD_TYPE;
pub const __PID_T_TYPE = __S32_TYPE;
pub const __RLIM_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __RLIM64_T_TYPE = __UQUAD_TYPE;
pub const __BLKCNT_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __BLKCNT64_T_TYPE = __SQUAD_TYPE;
pub const __FSBLKCNT_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __FSBLKCNT64_T_TYPE = __UQUAD_TYPE;
pub const __FSFILCNT_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __FSFILCNT64_T_TYPE = __UQUAD_TYPE;
pub const __ID_T_TYPE = __U32_TYPE;
pub const __CLOCK_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __TIME_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __USECONDS_T_TYPE = __U32_TYPE;
pub const __SUSECONDS_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __SUSECONDS64_T_TYPE = __SQUAD_TYPE;
pub const __DADDR_T_TYPE = __S32_TYPE;
pub const __KEY_T_TYPE = __S32_TYPE;
pub const __CLOCKID_T_TYPE = __S32_TYPE;
pub const __TIMER_T_TYPE = ?*anyopaque;
pub const __BLKSIZE_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __FSID_T_TYPE = @compileError("unable to translate macro: undefined identifier `__val`");
// /usr/include/bits/typesizes.h:73:9
pub const __SSIZE_T_TYPE = __SWORD_TYPE;
pub const __CPU_MASK_TYPE = __SYSCALL_ULONG_TYPE;
pub const __OFF_T_MATCHES_OFF64_T = @as(c_int, 1);
pub const __INO_T_MATCHES_INO64_T = @as(c_int, 1);
pub const __RLIM_T_MATCHES_RLIM64_T = @as(c_int, 1);
pub const __STATFS_MATCHES_STATFS64 = @as(c_int, 1);
pub const __KERNEL_OLD_TIMEVAL_MATCHES_TIMEVAL64 = @as(c_int, 1);
pub const __FD_SETSIZE = @as(c_int, 1024);
pub const _BITS_TIME64_H = @as(c_int, 1);
pub const __TIME64_T_TYPE = __TIME_T_TYPE;
pub const __u_char_defined = "";
pub const __ino_t_defined = "";
pub const __dev_t_defined = "";
pub const __gid_t_defined = "";
pub const __mode_t_defined = "";
pub const __nlink_t_defined = "";
pub const __uid_t_defined = "";
pub const __off_t_defined = "";
pub const __pid_t_defined = "";
pub const __id_t_defined = "";
pub const __ssize_t_defined = "";
pub const __daddr_t_defined = "";
pub const __key_t_defined = "";
pub const __clock_t_defined = @as(c_int, 1);
pub const __clockid_t_defined = @as(c_int, 1);
pub const __time_t_defined = @as(c_int, 1);
pub const __timer_t_defined = @as(c_int, 1);
pub const __need_size_t = "";
pub const _SIZE_T = "";
pub const _BITS_STDINT_INTN_H = @as(c_int, 1);
pub const __BIT_TYPES_DEFINED__ = @as(c_int, 1);
pub const _ENDIAN_H = @as(c_int, 1);
pub const _BITS_ENDIAN_H = @as(c_int, 1);
pub const __LITTLE_ENDIAN = @as(c_int, 1234);
pub const __BIG_ENDIAN = @as(c_int, 4321);
pub const __PDP_ENDIAN = @as(c_int, 3412);
pub const _BITS_ENDIANNESS_H = @as(c_int, 1);
pub const __BYTE_ORDER = __LITTLE_ENDIAN;
pub const __FLOAT_WORD_ORDER = __BYTE_ORDER;
pub inline fn __LONG_LONG_PAIR(HI: anytype, LO: anytype) @TypeOf(HI) {
    _ = &HI;
    _ = &LO;
    return blk: {
        _ = &LO;
        break :blk HI;
    };
}
pub const LITTLE_ENDIAN = __LITTLE_ENDIAN;
pub const BIG_ENDIAN = __BIG_ENDIAN;
pub const PDP_ENDIAN = __PDP_ENDIAN;
pub const BYTE_ORDER = __BYTE_ORDER;
pub const _BITS_BYTESWAP_H = @as(c_int, 1);
pub inline fn __bswap_constant_16(x: anytype) __uint16_t {
    _ = &x;
    return @import("std").zig.c_translation.cast(__uint16_t, ((x >> @as(c_int, 8)) & @as(c_int, 0xff)) | ((x & @as(c_int, 0xff)) << @as(c_int, 8)));
}
pub inline fn __bswap_constant_32(x: anytype) @TypeOf(((((x & @import("std").zig.c_translation.promoteIntLiteral(c_uint, 0xff000000, .hex)) >> @as(c_int, 24)) | ((x & @import("std").zig.c_translation.promoteIntLiteral(c_uint, 0x00ff0000, .hex)) >> @as(c_int, 8))) | ((x & @as(c_uint, 0x0000ff00)) << @as(c_int, 8))) | ((x & @as(c_uint, 0x000000ff)) << @as(c_int, 24))) {
    _ = &x;
    return ((((x & @import("std").zig.c_translation.promoteIntLiteral(c_uint, 0xff000000, .hex)) >> @as(c_int, 24)) | ((x & @import("std").zig.c_translation.promoteIntLiteral(c_uint, 0x00ff0000, .hex)) >> @as(c_int, 8))) | ((x & @as(c_uint, 0x0000ff00)) << @as(c_int, 8))) | ((x & @as(c_uint, 0x000000ff)) << @as(c_int, 24));
}
pub inline fn __bswap_constant_64(x: anytype) @TypeOf(((((((((x & @as(c_ulonglong, 0xff00000000000000)) >> @as(c_int, 56)) | ((x & @as(c_ulonglong, 0x00ff000000000000)) >> @as(c_int, 40))) | ((x & @as(c_ulonglong, 0x0000ff0000000000)) >> @as(c_int, 24))) | ((x & @as(c_ulonglong, 0x000000ff00000000)) >> @as(c_int, 8))) | ((x & @as(c_ulonglong, 0x00000000ff000000)) << @as(c_int, 8))) | ((x & @as(c_ulonglong, 0x0000000000ff0000)) << @as(c_int, 24))) | ((x & @as(c_ulonglong, 0x000000000000ff00)) << @as(c_int, 40))) | ((x & @as(c_ulonglong, 0x00000000000000ff)) << @as(c_int, 56))) {
    _ = &x;
    return ((((((((x & @as(c_ulonglong, 0xff00000000000000)) >> @as(c_int, 56)) | ((x & @as(c_ulonglong, 0x00ff000000000000)) >> @as(c_int, 40))) | ((x & @as(c_ulonglong, 0x0000ff0000000000)) >> @as(c_int, 24))) | ((x & @as(c_ulonglong, 0x000000ff00000000)) >> @as(c_int, 8))) | ((x & @as(c_ulonglong, 0x00000000ff000000)) << @as(c_int, 8))) | ((x & @as(c_ulonglong, 0x0000000000ff0000)) << @as(c_int, 24))) | ((x & @as(c_ulonglong, 0x000000000000ff00)) << @as(c_int, 40))) | ((x & @as(c_ulonglong, 0x00000000000000ff)) << @as(c_int, 56));
}
pub const _BITS_UINTN_IDENTITY_H = @as(c_int, 1);
pub inline fn htobe16(x: anytype) @TypeOf(__bswap_16(x)) {
    _ = &x;
    return __bswap_16(x);
}
pub inline fn htole16(x: anytype) @TypeOf(__uint16_identity(x)) {
    _ = &x;
    return __uint16_identity(x);
}
pub inline fn be16toh(x: anytype) @TypeOf(__bswap_16(x)) {
    _ = &x;
    return __bswap_16(x);
}
pub inline fn le16toh(x: anytype) @TypeOf(__uint16_identity(x)) {
    _ = &x;
    return __uint16_identity(x);
}
pub inline fn htobe32(x: anytype) @TypeOf(__bswap_32(x)) {
    _ = &x;
    return __bswap_32(x);
}
pub inline fn htole32(x: anytype) @TypeOf(__uint32_identity(x)) {
    _ = &x;
    return __uint32_identity(x);
}
pub inline fn be32toh(x: anytype) @TypeOf(__bswap_32(x)) {
    _ = &x;
    return __bswap_32(x);
}
pub inline fn le32toh(x: anytype) @TypeOf(__uint32_identity(x)) {
    _ = &x;
    return __uint32_identity(x);
}
pub inline fn htobe64(x: anytype) @TypeOf(__bswap_64(x)) {
    _ = &x;
    return __bswap_64(x);
}
pub inline fn htole64(x: anytype) @TypeOf(__uint64_identity(x)) {
    _ = &x;
    return __uint64_identity(x);
}
pub inline fn be64toh(x: anytype) @TypeOf(__bswap_64(x)) {
    _ = &x;
    return __bswap_64(x);
}
pub inline fn le64toh(x: anytype) @TypeOf(__uint64_identity(x)) {
    _ = &x;
    return __uint64_identity(x);
}
pub const _SYS_SELECT_H = @as(c_int, 1);
pub const __FD_ZERO = @compileError("unable to translate macro: undefined identifier `__i`");
// /usr/include/bits/select.h:25:9
pub const __FD_SET = @compileError("unable to translate C expr: expected ')' instead got '|='");
// /usr/include/bits/select.h:32:9
pub const __FD_CLR = @compileError("unable to translate C expr: expected ')' instead got '&='");
// /usr/include/bits/select.h:34:9
pub inline fn __FD_ISSET(d: anytype, s: anytype) @TypeOf((__FDS_BITS(s)[@as(usize, @intCast(__FD_ELT(d)))] & __FD_MASK(d)) != @as(c_int, 0)) {
    _ = &d;
    _ = &s;
    return (__FDS_BITS(s)[@as(usize, @intCast(__FD_ELT(d)))] & __FD_MASK(d)) != @as(c_int, 0);
}
pub const __sigset_t_defined = @as(c_int, 1);
pub const ____sigset_t_defined = "";
pub const _SIGSET_NWORDS = @import("std").zig.c_translation.MacroArithmetic.div(@as(c_int, 1024), @as(c_int, 8) * @import("std").zig.c_translation.sizeof(c_ulong));
pub const __timeval_defined = @as(c_int, 1);
pub const _STRUCT_TIMESPEC = @as(c_int, 1);
pub const __suseconds_t_defined = "";
pub const __NFDBITS = @as(c_int, 8) * @import("std").zig.c_translation.cast(c_int, @import("std").zig.c_translation.sizeof(__fd_mask));
pub inline fn __FD_ELT(d: anytype) @TypeOf(@import("std").zig.c_translation.MacroArithmetic.div(d, __NFDBITS)) {
    _ = &d;
    return @import("std").zig.c_translation.MacroArithmetic.div(d, __NFDBITS);
}
pub inline fn __FD_MASK(d: anytype) __fd_mask {
    _ = &d;
    return @import("std").zig.c_translation.cast(__fd_mask, @as(c_ulong, 1) << @import("std").zig.c_translation.MacroArithmetic.rem(d, __NFDBITS));
}
pub inline fn __FDS_BITS(set: anytype) @TypeOf(set.*.__fds_bits) {
    _ = &set;
    return set.*.__fds_bits;
}
pub const FD_SETSIZE = __FD_SETSIZE;
pub const NFDBITS = __NFDBITS;
pub inline fn FD_SET(fd: anytype, fdsetp: anytype) @TypeOf(__FD_SET(fd, fdsetp)) {
    _ = &fd;
    _ = &fdsetp;
    return __FD_SET(fd, fdsetp);
}
pub inline fn FD_CLR(fd: anytype, fdsetp: anytype) @TypeOf(__FD_CLR(fd, fdsetp)) {
    _ = &fd;
    _ = &fdsetp;
    return __FD_CLR(fd, fdsetp);
}
pub inline fn FD_ISSET(fd: anytype, fdsetp: anytype) @TypeOf(__FD_ISSET(fd, fdsetp)) {
    _ = &fd;
    _ = &fdsetp;
    return __FD_ISSET(fd, fdsetp);
}
pub inline fn FD_ZERO(fdsetp: anytype) @TypeOf(__FD_ZERO(fdsetp)) {
    _ = &fdsetp;
    return __FD_ZERO(fdsetp);
}
pub const __blksize_t_defined = "";
pub const __blkcnt_t_defined = "";
pub const __fsblkcnt_t_defined = "";
pub const __fsfilcnt_t_defined = "";
pub const _BITS_PTHREADTYPES_COMMON_H = @as(c_int, 1);
pub const _THREAD_SHARED_TYPES_H = @as(c_int, 1);
pub const _BITS_PTHREADTYPES_ARCH_H = @as(c_int, 1);
pub const __SIZEOF_PTHREAD_MUTEX_T = @as(c_int, 40);
pub const __SIZEOF_PTHREAD_ATTR_T = @as(c_int, 56);
pub const __SIZEOF_PTHREAD_RWLOCK_T = @as(c_int, 56);
pub const __SIZEOF_PTHREAD_BARRIER_T = @as(c_int, 32);
pub const __SIZEOF_PTHREAD_MUTEXATTR_T = @as(c_int, 4);
pub const __SIZEOF_PTHREAD_COND_T = @as(c_int, 48);
pub const __SIZEOF_PTHREAD_CONDATTR_T = @as(c_int, 4);
pub const __SIZEOF_PTHREAD_RWLOCKATTR_T = @as(c_int, 8);
pub const __SIZEOF_PTHREAD_BARRIERATTR_T = @as(c_int, 4);
pub const __LOCK_ALIGNMENT = "";
pub const __ONCE_ALIGNMENT = "";
pub const _BITS_ATOMIC_WIDE_COUNTER_H = "";
pub const _THREAD_MUTEX_INTERNAL_H = @as(c_int, 1);
pub const __PTHREAD_MUTEX_HAVE_PREV = @as(c_int, 1);
pub const __PTHREAD_MUTEX_INITIALIZER = @compileError("unable to translate C expr: unexpected token '{'");
// /usr/include/bits/struct_mutex.h:56:10
pub const _RWLOCK_INTERNAL_H = "";
pub const __PTHREAD_RWLOCK_ELISION_EXTRA = @compileError("unable to translate C expr: unexpected token '{'");
// /usr/include/bits/struct_rwlock.h:40:11
pub inline fn __PTHREAD_RWLOCK_INITIALIZER(__flags: anytype) @TypeOf(__flags) {
    _ = &__flags;
    return blk: {
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = &__PTHREAD_RWLOCK_ELISION_EXTRA;
        _ = @as(c_int, 0);
        break :blk __flags;
    };
}
pub const __ONCE_FLAG_INIT = @compileError("unable to translate C expr: unexpected token '{'");
// /usr/include/bits/thread-shared-types.h:114:9
pub const __have_pthread_attr_t = @as(c_int, 1);
pub const ERL_NAPI_ATTR_WUR = "";
pub const ERL_NAPI_ATTR_ALLOC_SIZE = @compileError("unable to translate C expr: unexpected token ''");
// /home/hyper/.asdf/installs/erlang/28.3.1/erts-16.2/include/erl_drv_nif.h:174:9
pub const ERL_NAPI_ATTR_MALLOC_U = "";
pub const ERL_NAPI_ATTR_MALLOC_US = @compileError("unable to translate C expr: unexpected token ''");
// /home/hyper/.asdf/installs/erlang/28.3.1/erts-16.2/include/erl_drv_nif.h:176:9
pub const ERL_NAPI_ATTR_MALLOC_UD = @compileError("unable to translate C expr: unexpected token ''");
// /home/hyper/.asdf/installs/erlang/28.3.1/erts-16.2/include/erl_drv_nif.h:177:9
pub const ERL_NAPI_ATTR_MALLOC_USD = @compileError("unable to translate C expr: unexpected token ''");
// /home/hyper/.asdf/installs/erlang/28.3.1/erts-16.2/include/erl_drv_nif.h:178:9
pub const ERL_NAPI_ATTR_MALLOC_D = @compileError("unable to translate C expr: unexpected token ''");
// /home/hyper/.asdf/installs/erlang/28.3.1/erts-16.2/include/erl_drv_nif.h:179:9
pub const ERL_NIF_MAJOR_VERSION = @as(c_int, 2);
pub const ERL_NIF_MINOR_VERSION = @as(c_int, 17);
pub const ERL_NIF_MIN_ERTS_VERSION = "erts-14.0";
pub const ERL_NIF_MIN_REQUIRED_MAJOR_VERSION_ON_LOAD = @as(c_int, 2);
pub const __GLIBC_INTERNAL_STARTING_HEADER_IMPLEMENTATION = "";
pub const __GLIBC_USE_LIB_EXT2 = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_BFP_EXT = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_BFP_EXT_C23 = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_EXT = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_FUNCS_EXT = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_FUNCS_EXT_C23 = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_TYPES_EXT = @as(c_int, 0);
pub const __need_wchar_t = "";
pub const __need_NULL = "";
pub const _WCHAR_T = "";
pub const NULL = @import("std").zig.c_translation.cast(?*anyopaque, @as(c_int, 0));
pub const _STDLIB_H = @as(c_int, 1);
pub const WNOHANG = @as(c_int, 1);
pub const WUNTRACED = @as(c_int, 2);
pub const WSTOPPED = @as(c_int, 2);
pub const WEXITED = @as(c_int, 4);
pub const WCONTINUED = @as(c_int, 8);
pub const WNOWAIT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x01000000, .hex);
pub const __WNOTHREAD = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x20000000, .hex);
pub const __WALL = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x40000000, .hex);
pub const __WCLONE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x80000000, .hex);
pub inline fn __WEXITSTATUS(status: anytype) @TypeOf((status & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff00, .hex)) >> @as(c_int, 8)) {
    _ = &status;
    return (status & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff00, .hex)) >> @as(c_int, 8);
}
pub inline fn __WTERMSIG(status: anytype) @TypeOf(status & @as(c_int, 0x7f)) {
    _ = &status;
    return status & @as(c_int, 0x7f);
}
pub inline fn __WSTOPSIG(status: anytype) @TypeOf(__WEXITSTATUS(status)) {
    _ = &status;
    return __WEXITSTATUS(status);
}
pub inline fn __WIFEXITED(status: anytype) @TypeOf(__WTERMSIG(status) == @as(c_int, 0)) {
    _ = &status;
    return __WTERMSIG(status) == @as(c_int, 0);
}
pub inline fn __WIFSIGNALED(status: anytype) @TypeOf((@import("std").zig.c_translation.cast(i8, (status & @as(c_int, 0x7f)) + @as(c_int, 1)) >> @as(c_int, 1)) > @as(c_int, 0)) {
    _ = &status;
    return (@import("std").zig.c_translation.cast(i8, (status & @as(c_int, 0x7f)) + @as(c_int, 1)) >> @as(c_int, 1)) > @as(c_int, 0);
}
pub inline fn __WIFSTOPPED(status: anytype) @TypeOf((status & @as(c_int, 0xff)) == @as(c_int, 0x7f)) {
    _ = &status;
    return (status & @as(c_int, 0xff)) == @as(c_int, 0x7f);
}
pub inline fn __WIFCONTINUED(status: anytype) @TypeOf(status == __W_CONTINUED) {
    _ = &status;
    return status == __W_CONTINUED;
}
pub inline fn __WCOREDUMP(status: anytype) @TypeOf(status & __WCOREFLAG) {
    _ = &status;
    return status & __WCOREFLAG;
}
pub inline fn __W_EXITCODE(ret: anytype, sig: anytype) @TypeOf((ret << @as(c_int, 8)) | sig) {
    _ = &ret;
    _ = &sig;
    return (ret << @as(c_int, 8)) | sig;
}
pub inline fn __W_STOPCODE(sig: anytype) @TypeOf((sig << @as(c_int, 8)) | @as(c_int, 0x7f)) {
    _ = &sig;
    return (sig << @as(c_int, 8)) | @as(c_int, 0x7f);
}
pub const __W_CONTINUED = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffff, .hex);
pub const __WCOREFLAG = @as(c_int, 0x80);
pub inline fn WEXITSTATUS(status: anytype) @TypeOf(__WEXITSTATUS(status)) {
    _ = &status;
    return __WEXITSTATUS(status);
}
pub inline fn WTERMSIG(status: anytype) @TypeOf(__WTERMSIG(status)) {
    _ = &status;
    return __WTERMSIG(status);
}
pub inline fn WSTOPSIG(status: anytype) @TypeOf(__WSTOPSIG(status)) {
    _ = &status;
    return __WSTOPSIG(status);
}
pub inline fn WIFEXITED(status: anytype) @TypeOf(__WIFEXITED(status)) {
    _ = &status;
    return __WIFEXITED(status);
}
pub inline fn WIFSIGNALED(status: anytype) @TypeOf(__WIFSIGNALED(status)) {
    _ = &status;
    return __WIFSIGNALED(status);
}
pub inline fn WIFSTOPPED(status: anytype) @TypeOf(__WIFSTOPPED(status)) {
    _ = &status;
    return __WIFSTOPPED(status);
}
pub inline fn WIFCONTINUED(status: anytype) @TypeOf(__WIFCONTINUED(status)) {
    _ = &status;
    return __WIFCONTINUED(status);
}
pub const _BITS_FLOATN_H = "";
pub const __HAVE_FLOAT128 = @as(c_int, 1);
pub const __HAVE_DISTINCT_FLOAT128 = @as(c_int, 1);
pub const __HAVE_FLOAT64X = @as(c_int, 1);
pub const __HAVE_FLOAT64X_LONG_DOUBLE = @as(c_int, 1);
pub const __f128 = @compileError("unable to translate macro: undefined identifier `q`");
// /usr/include/bits/floatn.h:70:12
pub const __CFLOAT128 = __cfloat128;
pub const __builtin_signbitf128 = @compileError("unable to translate macro: undefined identifier `__signbitf128`");
// /usr/include/bits/floatn.h:124:12
pub const _BITS_FLOATN_COMMON_H = "";
pub const __HAVE_FLOAT16 = @as(c_int, 0);
pub const __HAVE_FLOAT32 = @as(c_int, 1);
pub const __HAVE_FLOAT64 = @as(c_int, 1);
pub const __HAVE_FLOAT32X = @as(c_int, 1);
pub const __HAVE_FLOAT128X = @as(c_int, 0);
pub const __HAVE_DISTINCT_FLOAT16 = __HAVE_FLOAT16;
pub const __HAVE_DISTINCT_FLOAT32 = @as(c_int, 0);
pub const __HAVE_DISTINCT_FLOAT64 = @as(c_int, 0);
pub const __HAVE_DISTINCT_FLOAT32X = @as(c_int, 0);
pub const __HAVE_DISTINCT_FLOAT64X = @as(c_int, 0);
pub const __HAVE_DISTINCT_FLOAT128X = __HAVE_FLOAT128X;
pub const __HAVE_FLOAT128_UNLIKE_LDBL = (__HAVE_DISTINCT_FLOAT128 != 0) and (__LDBL_MANT_DIG__ != @as(c_int, 113));
pub const __HAVE_FLOATN_NOT_TYPEDEF = @as(c_int, 0);
pub const __f32 = @import("std").zig.c_translation.Macros.F_SUFFIX;
pub inline fn __f64(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __f32x(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub const __f64x = @import("std").zig.c_translation.Macros.L_SUFFIX;
pub const __CFLOAT32 = @compileError("unable to translate: TODO _Complex");
// /usr/include/bits/floatn-common.h:149:12
pub const __CFLOAT64 = @compileError("unable to translate: TODO _Complex");
// /usr/include/bits/floatn-common.h:160:13
pub const __CFLOAT32X = @compileError("unable to translate: TODO _Complex");
// /usr/include/bits/floatn-common.h:169:12
pub const __CFLOAT64X = @compileError("unable to translate: TODO _Complex");
// /usr/include/bits/floatn-common.h:178:13
pub inline fn __builtin_huge_valf32() @TypeOf(__builtin_huge_valf()) {
    return __builtin_huge_valf();
}
pub inline fn __builtin_inff32() @TypeOf(__builtin_inff()) {
    return __builtin_inff();
}
pub inline fn __builtin_nanf32(x: anytype) @TypeOf(__builtin_nanf(x)) {
    _ = &x;
    return __builtin_nanf(x);
}
pub const __builtin_nansf32 = @compileError("unable to translate macro: undefined identifier `__builtin_nansf`");
// /usr/include/bits/floatn-common.h:221:12
pub const __builtin_huge_valf64 = @compileError("unable to translate macro: undefined identifier `__builtin_huge_val`");
// /usr/include/bits/floatn-common.h:255:13
pub const __builtin_inff64 = @compileError("unable to translate macro: undefined identifier `__builtin_inf`");
// /usr/include/bits/floatn-common.h:256:13
pub const __builtin_nanf64 = @compileError("unable to translate macro: undefined identifier `__builtin_nan`");
// /usr/include/bits/floatn-common.h:257:13
pub const __builtin_nansf64 = @compileError("unable to translate macro: undefined identifier `__builtin_nans`");
// /usr/include/bits/floatn-common.h:258:13
pub const __builtin_huge_valf32x = @compileError("unable to translate macro: undefined identifier `__builtin_huge_val`");
// /usr/include/bits/floatn-common.h:272:12
pub const __builtin_inff32x = @compileError("unable to translate macro: undefined identifier `__builtin_inf`");
// /usr/include/bits/floatn-common.h:273:12
pub const __builtin_nanf32x = @compileError("unable to translate macro: undefined identifier `__builtin_nan`");
// /usr/include/bits/floatn-common.h:274:12
pub const __builtin_nansf32x = @compileError("unable to translate macro: undefined identifier `__builtin_nans`");
// /usr/include/bits/floatn-common.h:275:12
pub const __builtin_huge_valf64x = @compileError("unable to translate macro: undefined identifier `__builtin_huge_vall`");
// /usr/include/bits/floatn-common.h:289:13
pub const __builtin_inff64x = @compileError("unable to translate macro: undefined identifier `__builtin_infl`");
// /usr/include/bits/floatn-common.h:290:13
pub const __builtin_nanf64x = @compileError("unable to translate macro: undefined identifier `__builtin_nanl`");
// /usr/include/bits/floatn-common.h:291:13
pub const __builtin_nansf64x = @compileError("unable to translate macro: undefined identifier `__builtin_nansl`");
// /usr/include/bits/floatn-common.h:292:13
pub const __ldiv_t_defined = @as(c_int, 1);
pub const __lldiv_t_defined = @as(c_int, 1);
pub const RAND_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const EXIT_FAILURE = @as(c_int, 1);
pub const EXIT_SUCCESS = @as(c_int, 0);
pub const MB_CUR_MAX = __ctype_get_mb_cur_max();
pub const _ALLOCA_H = @as(c_int, 1);
pub const __COMPAR_FN_T = "";
pub const _STDIO_H = @as(c_int, 1);
pub const __need___va_list = "";
pub const __GNUC_VA_LIST = "";
pub const _____fpos_t_defined = @as(c_int, 1);
pub const ____mbstate_t_defined = @as(c_int, 1);
pub const _____fpos64_t_defined = @as(c_int, 1);
pub const ____FILE_defined = @as(c_int, 1);
pub const __FILE_defined = @as(c_int, 1);
pub const __struct_FILE_defined = @as(c_int, 1);
pub const __getc_unlocked_body = @compileError("TODO postfix inc/dec expr");
// /usr/include/bits/types/struct_FILE.h:113:9
pub const __putc_unlocked_body = @compileError("TODO postfix inc/dec expr");
// /usr/include/bits/types/struct_FILE.h:117:9
pub const _IO_EOF_SEEN = @as(c_int, 0x0010);
pub inline fn __feof_unlocked_body(_fp: anytype) @TypeOf((_fp.*._flags & _IO_EOF_SEEN) != @as(c_int, 0)) {
    _ = &_fp;
    return (_fp.*._flags & _IO_EOF_SEEN) != @as(c_int, 0);
}
pub const _IO_ERR_SEEN = @as(c_int, 0x0020);
pub inline fn __ferror_unlocked_body(_fp: anytype) @TypeOf((_fp.*._flags & _IO_ERR_SEEN) != @as(c_int, 0)) {
    _ = &_fp;
    return (_fp.*._flags & _IO_ERR_SEEN) != @as(c_int, 0);
}
pub const _IO_USER_LOCK = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8000, .hex);
pub const __cookie_io_functions_t_defined = @as(c_int, 1);
pub const _VA_LIST_DEFINED = "";
pub const _IOFBF = @as(c_int, 0);
pub const _IOLBF = @as(c_int, 1);
pub const _IONBF = @as(c_int, 2);
pub const BUFSIZ = @as(c_int, 8192);
pub const EOF = -@as(c_int, 1);
pub const SEEK_SET = @as(c_int, 0);
pub const SEEK_CUR = @as(c_int, 1);
pub const SEEK_END = @as(c_int, 2);
pub const P_tmpdir = "/tmp";
pub const L_tmpnam = @as(c_int, 20);
pub const TMP_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 238328, .decimal);
pub const _BITS_STDIO_LIM_H = @as(c_int, 1);
pub const FILENAME_MAX = @as(c_int, 4096);
pub const L_ctermid = @as(c_int, 9);
pub const FOPEN_MAX = @as(c_int, 16);
pub const __attr_dealloc_fclose = __attr_dealloc(fclose, @as(c_int, 1));
pub const __need_va_list = "";
pub const __need_va_arg = "";
pub const __need___va_copy = "";
pub const __need_va_copy = "";
pub const __STDARG_H = "";
pub const _VA_LIST = "";
pub const va_start = @compileError("unable to translate macro: undefined identifier `__builtin_va_start`");
// /var/home/hyper/.asdf/installs/zig/0.15.2/lib/include/__stdarg_va_arg.h:17:9
pub const va_end = @compileError("unable to translate macro: undefined identifier `__builtin_va_end`");
// /var/home/hyper/.asdf/installs/zig/0.15.2/lib/include/__stdarg_va_arg.h:19:9
pub const va_arg = @compileError("unable to translate C expr: unexpected token 'an identifier'");
// /var/home/hyper/.asdf/installs/zig/0.15.2/lib/include/__stdarg_va_arg.h:20:9
pub const __va_copy = @compileError("unable to translate macro: undefined identifier `__builtin_va_copy`");
// /var/home/hyper/.asdf/installs/zig/0.15.2/lib/include/__stdarg___va_copy.h:11:9
pub const va_copy = @compileError("unable to translate macro: undefined identifier `__builtin_va_copy`");
// /var/home/hyper/.asdf/installs/zig/0.15.2/lib/include/__stdarg_va_copy.h:11:9
pub const _STRING_H = @as(c_int, 1);
pub const _BITS_TYPES_LOCALE_T_H = @as(c_int, 1);
pub const _BITS_TYPES___LOCALE_T_H = @as(c_int, 1);
pub const _STRINGS_H = @as(c_int, 1);
pub const ERL_NIF_VM_VARIANT = "beam.vanilla";
pub const ERL_NIF_TIME_ERROR = @import("std").zig.c_translation.cast(ErlNifSInt64, ERTS_NAPI_TIME_ERROR__);
pub const ERL_NIF_SELECT_STOP_CALLED = @as(c_int, 1) << @as(c_int, 0);
pub const ERL_NIF_SELECT_STOP_SCHEDULED = @as(c_int, 1) << @as(c_int, 1);
pub const ERL_NIF_SELECT_INVALID_EVENT = @as(c_int, 1) << @as(c_int, 2);
pub const ERL_NIF_SELECT_FAILED = @as(c_int, 1) << @as(c_int, 3);
pub const ERL_NIF_SELECT_READ_CANCELLED = @as(c_int, 1) << @as(c_int, 4);
pub const ERL_NIF_SELECT_WRITE_CANCELLED = @as(c_int, 1) << @as(c_int, 5);
pub const ERL_NIF_SELECT_ERROR_CANCELLED = @as(c_int, 1) << @as(c_int, 6);
pub const ERL_NIF_SELECT_NOTSUP = @as(c_int, 1) << @as(c_int, 7);
pub const ERL_NIF_IOVEC_SIZE = @as(c_int, 16);
pub const ERL_NIF_THR_UNDEFINED = @as(c_int, 0);
pub const ERL_NIF_THR_NORMAL_SCHEDULER = @as(c_int, 1);
pub const ERL_NIF_THR_DIRTY_CPU_SCHEDULER = @as(c_int, 2);
pub const ERL_NIF_THR_DIRTY_IO_SCHEDULER = @as(c_int, 3);
pub const ERL_NIF_API_FUNC_DECL = @compileError("unable to translate C expr: unexpected token 'extern'");
// /home/hyper/.asdf/installs/erlang/28.3.1/erts-16.2/include/erl_nif.h:374:11
pub const ERL_NIF_INLINE = @compileError("unable to translate C expr: unexpected token '__inline__'");
// /home/hyper/.asdf/installs/erlang/28.3.1/erts-16.2/include/erl_nif_api_funcs.h:440:11
pub const enif_make_pid = @compileError("unable to translate C expr: unexpected token 'const'");
// /home/hyper/.asdf/installs/erlang/28.3.1/erts-16.2/include/erl_nif_api_funcs.h:651:11
pub inline fn enif_compare_pids(A: anytype, B: anytype) @TypeOf(enif_compare(A.*.pid, B.*.pid)) {
    _ = &A;
    _ = &B;
    return enif_compare(A.*.pid, B.*.pid);
}
pub inline fn enif_select_read(ENV: anytype, E: anytype, OBJ: anytype, PID: anytype, MSG: anytype, MSG_ENV: anytype) @TypeOf(enif_select_x(ENV, E, @import("std").zig.c_translation.cast(enum_ErlNifSelectFlags, ERL_NIF_SELECT_READ | ERL_NIF_SELECT_CUSTOM_MSG), OBJ, PID, MSG, MSG_ENV)) {
    _ = &ENV;
    _ = &E;
    _ = &OBJ;
    _ = &PID;
    _ = &MSG;
    _ = &MSG_ENV;
    return enif_select_x(ENV, E, @import("std").zig.c_translation.cast(enum_ErlNifSelectFlags, ERL_NIF_SELECT_READ | ERL_NIF_SELECT_CUSTOM_MSG), OBJ, PID, MSG, MSG_ENV);
}
pub inline fn enif_select_write(ENV: anytype, E: anytype, OBJ: anytype, PID: anytype, MSG: anytype, MSG_ENV: anytype) @TypeOf(enif_select_x(ENV, E, @import("std").zig.c_translation.cast(enum_ErlNifSelectFlags, ERL_NIF_SELECT_WRITE | ERL_NIF_SELECT_CUSTOM_MSG), OBJ, PID, MSG, MSG_ENV)) {
    _ = &ENV;
    _ = &E;
    _ = &OBJ;
    _ = &PID;
    _ = &MSG;
    _ = &MSG_ENV;
    return enif_select_x(ENV, E, @import("std").zig.c_translation.cast(enum_ErlNifSelectFlags, ERL_NIF_SELECT_WRITE | ERL_NIF_SELECT_CUSTOM_MSG), OBJ, PID, MSG, MSG_ENV);
}
pub inline fn enif_select_error(ENV: anytype, E: anytype, OBJ: anytype, PID: anytype, MSG: anytype, MSG_ENV: anytype) @TypeOf(enif_select_x(ENV, E, @import("std").zig.c_translation.cast(enum_ErlNifSelectFlags, ERL_NIF_SELECT_ERROR | ERL_NIF_SELECT_CUSTOM_MSG), OBJ, PID, MSG, MSG_ENV)) {
    _ = &ENV;
    _ = &E;
    _ = &OBJ;
    _ = &PID;
    _ = &MSG;
    _ = &MSG_ENV;
    return enif_select_x(ENV, E, @import("std").zig.c_translation.cast(enum_ErlNifSelectFlags, ERL_NIF_SELECT_ERROR | ERL_NIF_SELECT_CUSTOM_MSG), OBJ, PID, MSG, MSG_ENV);
}
pub const enif_get_int64 = enif_get_long;
pub const enif_get_uint64 = enif_get_ulong;
pub const enif_make_int64 = enif_make_long;
pub const enif_make_uint64 = enif_make_ulong;
pub const ERL_NIF_INIT_GLOB = "";
pub const ERL_NIF_INIT_ARGS = anyopaque;
pub const ERL_NIF_INIT_BODY = "";
pub const ERL_NIF_INIT_EXPORT = @compileError("unable to translate macro: undefined identifier `visibility`");
// /home/hyper/.asdf/installs/erlang/28.3.1/erts-16.2/include/erl_nif.h:389:13
pub const ERL_NIF_INIT_DECL = @compileError("unable to translate macro: undefined identifier `nif_init`");
// /home/hyper/.asdf/installs/erlang/28.3.1/erts-16.2/include/erl_nif.h:409:11
pub const ERL_NIF_INIT_PROLOGUE = "";
pub const ERL_NIF_INIT_EPILOGUE = "";
pub const ERL_NIF_INIT = @compileError("unable to translate macro: undefined identifier `entry`");
// /home/hyper/.asdf/installs/erlang/28.3.1/erts-16.2/include/erl_nif.h:424:9
pub const ErlNifSelectFlags = enum_ErlNifSelectFlags;
pub const timeval = struct_timeval;
pub const timespec = struct_timespec;
pub const __pthread_internal_list = struct___pthread_internal_list;
pub const __pthread_internal_slist = struct___pthread_internal_slist;
pub const __pthread_mutex_s = struct___pthread_mutex_s;
pub const __pthread_rwlock_arch_t = struct___pthread_rwlock_arch_t;
pub const __pthread_cond_s = struct___pthread_cond_s;
pub const random_data = struct_random_data;
pub const drand48_data = struct_drand48_data;
pub const _G_fpos_t = struct__G_fpos_t;
pub const _G_fpos64_t = struct__G_fpos64_t;
pub const _IO_marker = struct__IO_marker;
pub const _IO_FILE = struct__IO_FILE;
pub const _IO_codecvt = struct__IO_codecvt;
pub const _IO_wide_data = struct__IO_wide_data;
pub const _IO_cookie_io_functions_t = struct__IO_cookie_io_functions_t;
pub const __locale_struct = struct___locale_struct;
pub const enif_environment_t = struct_enif_environment_t;
pub const enif_func_t = struct_enif_func_t;
pub const enif_entry_t = struct_enif_entry_t;
pub const enif_resource_type_t = struct_enif_resource_type_t;
pub const ErlDrvTid_ = struct_ErlDrvTid_;
pub const ErlDrvMutex_ = struct_ErlDrvMutex_;
pub const ErlDrvCond_ = struct_ErlDrvCond_;
pub const ErlDrvRWLock_ = struct_ErlDrvRWLock_;
pub const erl_nif_io_vec = struct_erl_nif_io_vec;
pub const erts_io_queue = struct_erts_io_queue;
