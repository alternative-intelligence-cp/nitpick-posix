; ModuleID = 'test_read.npk'
source_filename = "test_read.npk"

%struct.NpkString = type { ptr, i64 }
%Numeric_vtable_t = type {}
%Display_vtable_t = type {}
%struct.NpkResult_int64 = type { i64, ptr, i8 }

@SYS_READ = global i64 0
@SYS_WRITE = global i64 1
@SYS_OPEN = global i64 2
@SYS_STAT = global i64 4
@SYS_FSTAT = global i64 5
@SYS_LSTAT = global i64 6
@SYS_LSEEK = global i64 8
@SYS_MMAP = global i64 9
@SYS_MPROTECT = global i64 10
@SYS_MUNMAP = global i64 11
@SYS_PIPE = global i64 22
@SYS_DUP = global i64 32
@SYS_DUP2 = global i64 33
@SYS_GETPID = global i64 39
@SYS_GETUID = global i64 102
@SYS_FORK = global i64 57
@SYS_EXECVE = global i64 59
@SYS_EXIT = global i64 60
@SYS_WAIT4 = global i64 61
@SYS_KILL = global i64 62
@SYS_FCNTL = global i64 72
@SYS_GETCWD = global i64 79
@SYS_CHDIR = global i64 80
@SYS_MKDIR = global i64 83
@SYS_RMDIR = global i64 84
@SYS_LINK = global i64 86
@SYS_UNLINK = global i64 87
@SYS_SYMLINK = global i64 88
@SYS_READLINK = global i64 89
@SYS_CHMOD = global i64 90
@SYS_CHOWN = global i64 92
@SYS_GETTIMEOFDAY = global i64 96
@SYS_MKNOD = global i64 133
@SYS_STATFS = global i64 137
@SYS_CHROOT = global i64 161
@SYS_GETDENTS64 = global i64 217
@SYS_CLOCK_GETTIME = global i64 228
@SYS_EXIT_GROUP = global i64 231
@SYS_OPENAT = global i64 257
@SYS_MKDIRAT = global i64 258
@SYS_NEWFSTATAT = global i64 262
@SYS_UNLINKAT = global i64 263
@SYS_FCHMODAT = global i64 268
@SYS_GETRANDOM = global i64 318
@.str.data = private constant [19 x i8] c"Fatal Error: code \00"
@.str = private constant %struct.NpkString { ptr @.str.data, i64 18 }
@.str.data.1 = private constant [2 x i8] c"\0A\00"
@.str.2 = private constant %struct.NpkString { ptr @.str.data.1, i64 1 }
@.str.data.3 = private constant [24 x i8] c"Operation not permitted\00"
@.str.4 = private constant %struct.NpkString { ptr @.str.data.3, i64 23 }
@.str.data.5 = private constant [26 x i8] c"No such file or directory\00"
@.str.6 = private constant %struct.NpkString { ptr @.str.data.5, i64 25 }
@.str.data.7 = private constant [16 x i8] c"No such process\00"
@.str.8 = private constant %struct.NpkString { ptr @.str.data.7, i64 15 }
@.str.data.9 = private constant [24 x i8] c"Interrupted system call\00"
@.str.10 = private constant %struct.NpkString { ptr @.str.data.9, i64 23 }
@.str.data.11 = private constant [10 x i8] c"I/O error\00"
@.str.12 = private constant %struct.NpkString { ptr @.str.data.11, i64 9 }
@.str.data.13 = private constant [26 x i8] c"No such device or address\00"
@.str.14 = private constant %struct.NpkString { ptr @.str.data.13, i64 25 }
@.str.data.15 = private constant [16 x i8] c"Bad file number\00"
@.str.16 = private constant %struct.NpkString { ptr @.str.data.15, i64 15 }
@.str.data.17 = private constant [10 x i8] c"Try again\00"
@.str.18 = private constant %struct.NpkString { ptr @.str.data.17, i64 9 }
@.str.data.19 = private constant [14 x i8] c"Out of memory\00"
@.str.20 = private constant %struct.NpkString { ptr @.str.data.19, i64 13 }
@.str.data.21 = private constant [18 x i8] c"Permission denied\00"
@.str.22 = private constant %struct.NpkString { ptr @.str.data.21, i64 17 }
@.str.data.23 = private constant [12 x i8] c"Bad address\00"
@.str.24 = private constant %struct.NpkString { ptr @.str.data.23, i64 11 }
@.str.data.25 = private constant [24 x i8] c"Device or resource busy\00"
@.str.26 = private constant %struct.NpkString { ptr @.str.data.25, i64 23 }
@.str.data.27 = private constant [12 x i8] c"File exists\00"
@.str.28 = private constant %struct.NpkString { ptr @.str.data.27, i64 11 }
@.str.data.29 = private constant [15 x i8] c"No such device\00"
@.str.30 = private constant %struct.NpkString { ptr @.str.data.29, i64 14 }
@.str.data.31 = private constant [16 x i8] c"Not a directory\00"
@.str.32 = private constant %struct.NpkString { ptr @.str.data.31, i64 15 }
@.str.data.33 = private constant [15 x i8] c"Is a directory\00"
@.str.34 = private constant %struct.NpkString { ptr @.str.data.33, i64 14 }
@.str.data.35 = private constant [17 x i8] c"Invalid argument\00"
@.str.36 = private constant %struct.NpkString { ptr @.str.data.35, i64 16 }
@.str.data.37 = private constant [20 x i8] c"File table overflow\00"
@.str.38 = private constant %struct.NpkString { ptr @.str.data.37, i64 19 }
@.str.data.39 = private constant [20 x i8] c"Too many open files\00"
@.str.40 = private constant %struct.NpkString { ptr @.str.data.39, i64 19 }
@.str.data.41 = private constant [17 x i8] c"Not a typewriter\00"
@.str.42 = private constant %struct.NpkString { ptr @.str.data.41, i64 16 }
@.str.data.43 = private constant [15 x i8] c"File too large\00"
@.str.44 = private constant %struct.NpkString { ptr @.str.data.43, i64 14 }
@.str.data.45 = private constant [24 x i8] c"No space left on device\00"
@.str.46 = private constant %struct.NpkString { ptr @.str.data.45, i64 23 }
@.str.data.47 = private constant [13 x i8] c"Illegal seek\00"
@.str.48 = private constant %struct.NpkString { ptr @.str.data.47, i64 12 }
@.str.data.49 = private constant [22 x i8] c"Read-only file system\00"
@.str.50 = private constant %struct.NpkString { ptr @.str.data.49, i64 21 }
@.str.data.51 = private constant [15 x i8] c"Too many links\00"
@.str.52 = private constant %struct.NpkString { ptr @.str.data.51, i64 14 }
@.str.data.53 = private constant [12 x i8] c"Broken pipe\00"
@.str.54 = private constant %struct.NpkString { ptr @.str.data.53, i64 11 }
@.str.data.55 = private constant [36 x i8] c"Math argument out of domain of func\00"
@.str.56 = private constant %struct.NpkString { ptr @.str.data.55, i64 35 }
@.str.data.57 = private constant [30 x i8] c"Math result not representable\00"
@.str.58 = private constant %struct.NpkString { ptr @.str.data.57, i64 29 }
@.str.data.59 = private constant [14 x i8] c"Unknown error\00"
@.str.60 = private constant %struct.NpkString { ptr @.str.data.59, i64 13 }
@Numeric_vtable_int8 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_int16 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_int32 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_int64 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_uint8 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_uint16 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_uint32 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_uint64 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_tbb8 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_tbb16 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_tbb32 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_tbb64 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_frac8 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_frac16 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_frac32 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_frac64 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_tfp32 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_tfp64 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_fix256 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_flt32 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_flt64 = internal constant %Numeric_vtable_t zeroinitializer
@Display_vtable_int8 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_int16 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_int32 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_int64 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_int128 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_int256 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_int512 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_int1024 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_int2048 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_int4096 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_uint8 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_uint16 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_uint32 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_uint64 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_uint128 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_uint256 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_uint512 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_uint1024 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_uint2048 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_uint4096 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_tbb8 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_tbb16 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_tbb32 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_tbb64 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_frac8 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_frac16 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_frac32 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_frac64 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_tfp32 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_tfp64 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_fix256 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_flt32 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_flt64 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_trit = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_tryte = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_nit = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_nyte = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_bool = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_string = internal constant %Display_vtable_t zeroinitializer
@.str.data.61 = private constant [10 x i8] c"test1.txt\00"
@.str.62 = private constant %struct.NpkString { ptr @.str.data.61, i64 9 }
@.str.data.63 = private constant [4 x i8] c"c: \00"
@.str.64 = private constant %struct.NpkString { ptr @.str.data.63, i64 3 }
@.str.data.65 = private constant [2 x i8] c"\0A\00"
@.str.66 = private constant %struct.NpkString { ptr @.str.data.65, i64 1 }

define linkonce_odr i32 @__sys_constants_init() {
entry:
  ret i32 0
}

declare i32 @close(i32)

declare i64 @ctime(i64)

declare i32 @dup2(i32, i32)

declare i32 @fclose(i64)

declare i32 @fgetc(i64)

declare i64 @fopen(ptr, ptr)

declare i32 @free(i64)

declare i64 @gethostid()

declare i32 @getpriority(i32, i32)

declare i64 @getpwuid(i64)

declare i32 @isatty(i32)

declare i64 @malloc(i64)

declare i32 @nitpick_libc_mem_free(i64)

declare i64 @nitpick_libc_mem_malloc(i64)

declare i64 @nitpick_libc_mem_read_i64(i64, i64)

declare ptr @nitpick_libc_mem_write_i64(i64, i64, i64)

declare i32 @nitpick_libc_mem_zero(i64, i64)

declare i32 @open(ptr, i32, i32)

declare i32 @setpriority(i32, i32, i32)

declare i64 @signal(i32, i64)

declare i64 @strdup(ptr)

declare i64 @string_length(ptr)

declare i64 @time(i64)

declare i64 @ttyname(i32)

define linkonce_odr i32 @__libc_ffi_init() {
entry:
  ret i32 0
}

declare i64 @npk_string_byte_at(ptr, i64)

define linkonce_odr { i32, ptr, i8 } @io_utils.print_err(ptr %s) {
entry:
  %len = alloca i64, align 8
  %str = load %struct.NpkString, ptr %s, align 8
  %length = extractvalue %struct.NpkString %str, 1
  store i64 %length, ptr %len, align 4
  %len1 = load i64, ptr %len, align 4
  %gttmp = icmp sgt i64 %len1, 0
  %ifcond = icmp ne i1 %gttmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %entry
  %sys_str_struct = load %struct.NpkString, ptr %s, align 8
  %sys_str_data = extractvalue %struct.NpkString %sys_str_struct, 0
  %sys_strvar_int = ptrtoint ptr %sys_str_data to i64
  %len2 = load i64, ptr %len, align 4
  %syscall_ret = call i64 asm sideeffect "syscall", "={rax},{rax},{rdi},{rsi},{rdx},~{rcx},~{r11},~{memory}"(i64 1, i64 2, i64 %sys_strvar_int, i64 %len2)
  %sys_is_err = icmp slt i64 %syscall_ret, 0
  %sys_neg_errno = sub i64 0, %syscall_ret
  %sys_err_ptr = inttoptr i64 %sys_neg_errno to ptr
  %sys_val = select i1 %sys_is_err, i64 0, i64 %syscall_ret
  %sys_err = select i1 %sys_is_err, ptr %sys_err_ptr, ptr null
  %sys_flag = select i1 %sys_is_err, i8 1, i8 0
  %sys_result.val = insertvalue %struct.NpkResult_int64 undef, i64 %sys_val, 0
  %sys_result.err = insertvalue %struct.NpkResult_int64 %sys_result.val, ptr %sys_err, 1
  %sys_result.is_error = insertvalue %struct.NpkResult_int64 %sys_result.err, i8 %sys_flag, 2
  %is_error = extractvalue %struct.NpkResult_int64 %sys_result.is_error, 2
  %is_error_bool = icmp ne i8 %is_error, 0
  br i1 %is_error_bool, label %error_block, label %success_block

error_block:                                      ; preds = %then
  br label %merge_block

success_block:                                    ; preds = %then
  %unwrap_value = extractvalue %struct.NpkResult_int64 %sys_result.is_error, 0
  br label %merge_block

merge_block:                                      ; preds = %success_block, %error_block
  %unwrap_result = phi i64 [ -1, %error_block ], [ %unwrap_value, %success_block ]
  br label %ifcont

ifcont:                                           ; preds = %merge_block, %entry
  ret { i32, ptr, i8 } zeroinitializer
}

define linkonce_odr { i32, ptr, i8 } @io_utils.print_out(ptr %s) {
entry:
  %len = alloca i64, align 8
  %str = load %struct.NpkString, ptr %s, align 8
  %length = extractvalue %struct.NpkString %str, 1
  store i64 %length, ptr %len, align 4
  %len1 = load i64, ptr %len, align 4
  %gttmp = icmp sgt i64 %len1, 0
  %ifcond = icmp ne i1 %gttmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %entry
  %sys_str_struct = load %struct.NpkString, ptr %s, align 8
  %sys_str_data = extractvalue %struct.NpkString %sys_str_struct, 0
  %sys_strvar_int = ptrtoint ptr %sys_str_data to i64
  %len2 = load i64, ptr %len, align 4
  %syscall_ret = call i64 asm sideeffect "syscall", "={rax},{rax},{rdi},{rsi},{rdx},~{rcx},~{r11},~{memory}"(i64 1, i64 1, i64 %sys_strvar_int, i64 %len2)
  %sys_is_err = icmp slt i64 %syscall_ret, 0
  %sys_neg_errno = sub i64 0, %syscall_ret
  %sys_err_ptr = inttoptr i64 %sys_neg_errno to ptr
  %sys_val = select i1 %sys_is_err, i64 0, i64 %syscall_ret
  %sys_err = select i1 %sys_is_err, ptr %sys_err_ptr, ptr null
  %sys_flag = select i1 %sys_is_err, i8 1, i8 0
  %sys_result.val = insertvalue %struct.NpkResult_int64 undef, i64 %sys_val, 0
  %sys_result.err = insertvalue %struct.NpkResult_int64 %sys_result.val, ptr %sys_err, 1
  %sys_result.is_error = insertvalue %struct.NpkResult_int64 %sys_result.err, i8 %sys_flag, 2
  %is_error = extractvalue %struct.NpkResult_int64 %sys_result.is_error, 2
  %is_error_bool = icmp ne i8 %is_error, 0
  br i1 %is_error_bool, label %error_block, label %success_block

error_block:                                      ; preds = %then
  br label %merge_block

success_block:                                    ; preds = %then
  %unwrap_value = extractvalue %struct.NpkResult_int64 %sys_result.is_error, 0
  br label %merge_block

merge_block:                                      ; preds = %success_block, %error_block
  %unwrap_result = phi i64 [ -1, %error_block ], [ %unwrap_value, %success_block ]
  br label %ifcont

ifcont:                                           ; preds = %merge_block, %entry
  ret { i32, ptr, i8 } zeroinitializer
}

define linkonce_odr { i32, ptr, i8 } @io_utils.print_str_safe(ptr %s) {
entry:
  %len = alloca i64, align 8
  %str = load %struct.NpkString, ptr %s, align 8
  %length = extractvalue %struct.NpkString %str, 1
  store i64 %length, ptr %len, align 4
  %len1 = load i64, ptr %len, align 4
  %gttmp = icmp sgt i64 %len1, 0
  %ifcond = icmp ne i1 %gttmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %entry
  %sys_str_struct = load %struct.NpkString, ptr %s, align 8
  %sys_str_data = extractvalue %struct.NpkString %sys_str_struct, 0
  %sys_strvar_int = ptrtoint ptr %sys_str_data to i64
  %len2 = load i64, ptr %len, align 4
  %syscall_ret = call i64 asm sideeffect "syscall", "={rax},{rax},{rdi},{rsi},{rdx},~{rcx},~{r11},~{memory}"(i64 1, i64 1, i64 %sys_strvar_int, i64 %len2)
  %sys_is_err = icmp slt i64 %syscall_ret, 0
  %sys_neg_errno = sub i64 0, %syscall_ret
  %sys_err_ptr = inttoptr i64 %sys_neg_errno to ptr
  %sys_val = select i1 %sys_is_err, i64 0, i64 %syscall_ret
  %sys_err = select i1 %sys_is_err, ptr %sys_err_ptr, ptr null
  %sys_flag = select i1 %sys_is_err, i8 1, i8 0
  %sys_result.val = insertvalue %struct.NpkResult_int64 undef, i64 %sys_val, 0
  %sys_result.err = insertvalue %struct.NpkResult_int64 %sys_result.val, ptr %sys_err, 1
  %sys_result.is_error = insertvalue %struct.NpkResult_int64 %sys_result.err, i8 %sys_flag, 2
  %is_error = extractvalue %struct.NpkResult_int64 %sys_result.is_error, 2
  %is_error_bool = icmp ne i8 %is_error, 0
  br i1 %is_error_bool, label %error_block, label %success_block

error_block:                                      ; preds = %then
  br label %merge_block

success_block:                                    ; preds = %then
  %unwrap_value = extractvalue %struct.NpkResult_int64 %sys_result.is_error, 0
  br label %merge_block

merge_block:                                      ; preds = %success_block, %error_block
  %unwrap_result = phi i64 [ -1, %error_block ], [ %unwrap_value, %success_block ]
  br label %ifcont

ifcont:                                           ; preds = %merge_block, %entry
  ret { i32, ptr, i8 } zeroinitializer
}

define linkonce_odr { i32, ptr, i8 } @io_utils.standard_failsafe(i32 %err) {
entry:
  %err.addr = alloca i32, align 4
  store i32 %err, ptr %err.addr, align 4
  %calltmp = call { i32, ptr, i8 } @io_utils.print_err(ptr @.str)
  %st_ptr = call ptr @npk_alloc(i64 8)
  %wild_ptr = call ptr @npk_alloc(i64 512)
  store ptr %wild_ptr, ptr %st_ptr, align 8
  %st = alloca i64, align 8
  %st_ptr1 = load ptr, ptr %st_ptr, align 8
  %st_ptr2 = load ptr, ptr %st_ptr, align 8
  %cast.ptrtoint = ptrtoint ptr %st_ptr2 to i64
  store i64 %cast.ptrtoint, ptr %st, align 4
  %st_len = alloca i64, align 8
  store i64 0, ptr %st_len, align 4
  %e = alloca i64, align 8
  %err3 = load i32, ptr %err.addr, align 4
  %cast.sext = sext i32 %err3 to i64
  store i64 %cast.sext, ptr %e, align 4
  %len = alloca i64, align 8
  store i64 0, ptr %len, align 4
  %e4 = load i64, ptr %e, align 4
  %eqtmp = icmp eq i64 %e4, 0
  %ifcond = icmp ne i1 %eqtmp, false
  br i1 %ifcond, label %then, label %else

then:                                             ; preds = %entry
  %st5 = load i64, ptr %st, align 4
  %st_len6 = load i64, ptr %st_len, align 4
  %multmp = mul i64 %st_len6, 8
  %addtmp = add i64 %st5, %multmp
  %st7 = load i64, ptr %st, align 4
  %st_len8 = load i64, ptr %st_len, align 4
  %multmp9 = mul i64 %st_len8, 8
  %addtmp10 = add i64 %st7, %multmp9
  %cast.inttoptr = inttoptr i64 %addtmp10 to ptr
  store i64 48, ptr %cast.inttoptr, align 4
  %st_len11 = load i64, ptr %st_len, align 4
  %addtmp12 = add i64 %st_len11, 1
  store i64 %addtmp12, ptr %st_len, align 4
  store i64 1, ptr %len, align 4
  br label %ifcont

else:                                             ; preds = %entry
  br label %whilecond

whilecond:                                        ; preds = %whilebody, %else
  %e13 = load i64, ptr %e, align 4
  %gttmp = icmp sgt i64 %e13, 0
  %whilecond14 = icmp ne i1 %gttmp, false
  br i1 %whilecond14, label %whilebody, label %afterwhile

whilebody:                                        ; preds = %whilecond
  %st15 = load i64, ptr %st, align 4
  %st_len16 = load i64, ptr %st_len, align 4
  %multmp17 = mul i64 %st_len16, 8
  %addtmp18 = add i64 %st15, %multmp17
  %st19 = load i64, ptr %st, align 4
  %st_len20 = load i64, ptr %st_len, align 4
  %multmp21 = mul i64 %st_len20, 8
  %addtmp22 = add i64 %st19, %multmp21
  %cast.inttoptr23 = inttoptr i64 %addtmp22 to ptr
  %e24 = load i64, ptr %e, align 4
  %modtmp = srem i64 %e24, 10
  %safe.modtmp = select i1 false, i64 9223372036854775807, i64 %modtmp
  %addtmp25 = add i64 %safe.modtmp, 48
  store i64 %addtmp25, ptr %cast.inttoptr23, align 4
  %st_len26 = load i64, ptr %st_len, align 4
  %addtmp27 = add i64 %st_len26, 1
  store i64 %addtmp27, ptr %st_len, align 4
  %e28 = load i64, ptr %e, align 4
  %divtmp = sdiv i64 %e28, 10
  %safe.divtmp = select i1 false, i64 9223372036854775807, i64 %divtmp
  store i64 %safe.divtmp, ptr %e, align 4
  %len29 = load i64, ptr %len, align 4
  %addtmp30 = add i64 %len29, 1
  store i64 %addtmp30, ptr %len, align 4
  call void @npk_gc_safepoint()
  br label %whilecond

afterwhile:                                       ; preds = %whilecond
  br label %ifcont

ifcont:                                           ; preds = %afterwhile, %then
  br label %whilecond31

whilecond31:                                      ; preds = %null.ok, %ifcont
  %len32 = load i64, ptr %len, align 4
  %gttmp33 = icmp sgt i64 %len32, 0
  %whilecond34 = icmp ne i1 %gttmp33, false
  br i1 %whilecond34, label %whilebody35, label %afterwhile50

whilebody35:                                      ; preds = %whilecond31
  %st_len36 = load i64, ptr %st_len, align 4
  %subtmp = sub i64 %st_len36, 1
  store i64 %subtmp, ptr %st_len, align 4
  %c = alloca i64, align 8
  %st37 = load i64, ptr %st, align 4
  %st_len38 = load i64, ptr %st_len, align 4
  %multmp39 = mul i64 %st_len38, 8
  %addtmp40 = add i64 %st37, %multmp39
  %st41 = load i64, ptr %st, align 4
  %st_len42 = load i64, ptr %st_len, align 4
  %multmp43 = mul i64 %st_len42, 8
  %addtmp44 = add i64 %st41, %multmp43
  %cast.inttoptr45 = inttoptr i64 %addtmp44 to ptr
  %null.deref = icmp eq ptr %cast.inttoptr45, null
  br i1 %null.deref, label %null.fail, label %null.ok

null.fail:                                        ; preds = %whilebody35
  call void @exit(i32 46)
  unreachable

null.ok:                                          ; preds = %whilebody35
  %deref = load i32, ptr %cast.inttoptr45, align 4
  %init_sext = sext i32 %deref to i64
  store i64 %init_sext, ptr %c, align 4
  %c46 = load i64, ptr %c, align 4
  %cast.trunc = trunc i64 %c46 to i8
  %char_str = call ptr @npk_string_from_char_simple(i8 %cast.trunc)
  %calltmp47 = call { i32, ptr, i8 } @io_utils.print_err(ptr %char_str)
  %len48 = load i64, ptr %len, align 4
  %subtmp49 = sub i64 %len48, 1
  store i64 %subtmp49, ptr %len, align 4
  call void @npk_gc_safepoint()
  br label %whilecond31

afterwhile50:                                     ; preds = %whilecond31
  %calltmp51 = call { i32, ptr, i8 } @io_utils.print_err(ptr @.str.2)
  %st_ptr52 = load ptr, ptr %st_ptr, align 8
  call void @npk_free(ptr %st_ptr52)
  ret { i32, ptr, i8 } zeroinitializer
}

define linkonce_odr { i64, ptr, i8 } @io_utils.io_buf_new(i64 %fd) {
entry:
  %fd.addr = alloca i64, align 8
  store i64 %fd, ptr %fd.addr, align 4
  %state = alloca i64, align 8
  %calltmp = call i64 @malloc(i64 4096)
  store i64 %calltmp, ptr %state, align 4
  %data = alloca i64, align 8
  %calltmp1 = call i64 @malloc(i64 65536)
  store i64 %calltmp1, ptr %data, align 4
  %state2 = load i64, ptr %state, align 4
  %addtmp = add i64 %state2, 0
  %state3 = load i64, ptr %state, align 4
  %addtmp4 = add i64 %state3, 0
  %cast.inttoptr = inttoptr i64 %addtmp4 to ptr
  %fd5 = load i64, ptr %fd.addr, align 4
  store i64 %fd5, ptr %cast.inttoptr, align 4
  %state6 = load i64, ptr %state, align 4
  %addtmp7 = add i64 %state6, 8
  %state8 = load i64, ptr %state, align 4
  %addtmp9 = add i64 %state8, 8
  %cast.inttoptr10 = inttoptr i64 %addtmp9 to ptr
  store i64 0, ptr %cast.inttoptr10, align 4
  %state11 = load i64, ptr %state, align 4
  %addtmp12 = add i64 %state11, 16
  %state13 = load i64, ptr %state, align 4
  %addtmp14 = add i64 %state13, 16
  %cast.inttoptr15 = inttoptr i64 %addtmp14 to ptr
  store i64 0, ptr %cast.inttoptr15, align 4
  %state16 = load i64, ptr %state, align 4
  %addtmp17 = add i64 %state16, 24
  %state18 = load i64, ptr %state, align 4
  %addtmp19 = add i64 %state18, 24
  %cast.inttoptr20 = inttoptr i64 %addtmp19 to ptr
  %data21 = load i64, ptr %data, align 4
  store i64 %data21, ptr %cast.inttoptr20, align 4
  %state22 = load i64, ptr %state, align 4
  %result.val = insertvalue { i64, ptr, i8 } undef, i64 %state22, 0
  %result.err = insertvalue { i64, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i64, ptr, i8 } %result.err, i8 0, 2
  ret { i64, ptr, i8 } %result.is_error
}

define linkonce_odr { i32, ptr, i8 } @io_utils.io_buf_getc(i64 %state) {
entry:
  %state.addr = alloca i64, align 8
  store i64 %state, ptr %state.addr, align 4
  %pos = alloca i64, align 8
  %state1 = load i64, ptr %state.addr, align 4
  %addtmp = add i64 %state1, 8
  %state2 = load i64, ptr %state.addr, align 4
  %addtmp3 = add i64 %state2, 8
  %cast.inttoptr = inttoptr i64 %addtmp3 to ptr
  %null.deref = icmp eq ptr %cast.inttoptr, null
  br i1 %null.deref, label %null.fail, label %null.ok

null.fail:                                        ; preds = %entry
  call void @exit(i32 46)
  unreachable

null.ok:                                          ; preds = %entry
  %deref = load i32, ptr %cast.inttoptr, align 4
  %init_sext = sext i32 %deref to i64
  store i64 %init_sext, ptr %pos, align 4
  %len = alloca i64, align 8
  %state4 = load i64, ptr %state.addr, align 4
  %addtmp5 = add i64 %state4, 16
  %state6 = load i64, ptr %state.addr, align 4
  %addtmp7 = add i64 %state6, 16
  %cast.inttoptr8 = inttoptr i64 %addtmp7 to ptr
  %null.deref9 = icmp eq ptr %cast.inttoptr8, null
  br i1 %null.deref9, label %null.fail10, label %null.ok11

null.fail10:                                      ; preds = %null.ok
  call void @exit(i32 46)
  unreachable

null.ok11:                                        ; preds = %null.ok
  %deref12 = load i32, ptr %cast.inttoptr8, align 4
  %init_sext13 = sext i32 %deref12 to i64
  store i64 %init_sext13, ptr %len, align 4
  %pos14 = load i64, ptr %pos, align 4
  %len15 = load i64, ptr %len, align 4
  %getmp = icmp sge i64 %pos14, %len15
  %ifcond = icmp ne i1 %getmp, false
  br i1 %ifcond, label %then, label %ifcont48

then:                                             ; preds = %null.ok11
  %fd = alloca i64, align 8
  %state16 = load i64, ptr %state.addr, align 4
  %addtmp17 = add i64 %state16, 0
  %state18 = load i64, ptr %state.addr, align 4
  %addtmp19 = add i64 %state18, 0
  %cast.inttoptr20 = inttoptr i64 %addtmp19 to ptr
  %null.deref21 = icmp eq ptr %cast.inttoptr20, null
  br i1 %null.deref21, label %null.fail22, label %null.ok23

null.fail22:                                      ; preds = %then
  call void @exit(i32 46)
  unreachable

null.ok23:                                        ; preds = %then
  %deref24 = load i32, ptr %cast.inttoptr20, align 4
  %init_sext25 = sext i32 %deref24 to i64
  store i64 %init_sext25, ptr %fd, align 4
  %data = alloca i64, align 8
  %state26 = load i64, ptr %state.addr, align 4
  %addtmp27 = add i64 %state26, 24
  %state28 = load i64, ptr %state.addr, align 4
  %addtmp29 = add i64 %state28, 24
  %cast.inttoptr30 = inttoptr i64 %addtmp29 to ptr
  %null.deref31 = icmp eq ptr %cast.inttoptr30, null
  br i1 %null.deref31, label %null.fail32, label %null.ok33

null.fail32:                                      ; preds = %null.ok23
  call void @exit(i32 46)
  unreachable

null.ok33:                                        ; preds = %null.ok23
  %deref34 = load i32, ptr %cast.inttoptr30, align 4
  %init_sext35 = sext i32 %deref34 to i64
  store i64 %init_sext35, ptr %data, align 4
  %nread = alloca i64, align 8
  %fd36 = load i64, ptr %fd, align 4
  %data37 = load i64, ptr %data, align 4
  %syscall_ret = call i64 asm sideeffect "syscall", "={rax},{rax},{rdi},{rsi},{rdx},~{rcx},~{r11},~{memory}"(i64 0, i64 %fd36, i64 %data37, i64 65536)
  %sys_is_err = icmp slt i64 %syscall_ret, 0
  %sys_neg_errno = sub i64 0, %syscall_ret
  %sys_err_ptr = inttoptr i64 %sys_neg_errno to ptr
  %sys_val = select i1 %sys_is_err, i64 0, i64 %syscall_ret
  %sys_err = select i1 %sys_is_err, ptr %sys_err_ptr, ptr null
  %sys_flag = select i1 %sys_is_err, i8 1, i8 0
  %sys_result.val = insertvalue %struct.NpkResult_int64 undef, i64 %sys_val, 0
  %sys_result.err = insertvalue %struct.NpkResult_int64 %sys_result.val, ptr %sys_err, 1
  %sys_result.is_error = insertvalue %struct.NpkResult_int64 %sys_result.err, i8 %sys_flag, 2
  %is_error = extractvalue %struct.NpkResult_int64 %sys_result.is_error, 2
  %is_error_bool = icmp ne i8 %is_error, 0
  br i1 %is_error_bool, label %error_block, label %success_block

error_block:                                      ; preds = %null.ok33
  br label %merge_block

success_block:                                    ; preds = %null.ok33
  %value = extractvalue %struct.NpkResult_int64 %sys_result.is_error, 0
  br label %merge_block

merge_block:                                      ; preds = %success_block, %error_block
  %unwrap_result = phi i64 [ -1, %error_block ], [ %value, %success_block ]
  store i64 %unwrap_result, ptr %nread, align 4
  %nread38 = load i64, ptr %nread, align 4
  %letmp = icmp sle i64 %nread38, 0
  %ifcond39 = icmp ne i1 %letmp, false
  br i1 %ifcond39, label %then40, label %ifcont

then40:                                           ; preds = %merge_block
  ret { i32, ptr, i8 } { i32 -1, ptr null, i8 0 }

ifcont:                                           ; preds = %merge_block
  %nread41 = load i64, ptr %nread, align 4
  store i64 %nread41, ptr %len, align 4
  store i64 0, ptr %pos, align 4
  %state42 = load i64, ptr %state.addr, align 4
  %addtmp43 = add i64 %state42, 16
  %state44 = load i64, ptr %state.addr, align 4
  %addtmp45 = add i64 %state44, 16
  %cast.inttoptr46 = inttoptr i64 %addtmp45 to ptr
  %len47 = load i64, ptr %len, align 4
  store i64 %len47, ptr %cast.inttoptr46, align 4
  br label %ifcont48

ifcont48:                                         ; preds = %ifcont, %null.ok11
  %data49 = alloca i64, align 8
  %state50 = load i64, ptr %state.addr, align 4
  %addtmp51 = add i64 %state50, 24
  %state52 = load i64, ptr %state.addr, align 4
  %addtmp53 = add i64 %state52, 24
  %cast.inttoptr54 = inttoptr i64 %addtmp53 to ptr
  %null.deref55 = icmp eq ptr %cast.inttoptr54, null
  br i1 %null.deref55, label %null.fail56, label %null.ok57

null.fail56:                                      ; preds = %ifcont48
  call void @exit(i32 46)
  unreachable

null.ok57:                                        ; preds = %ifcont48
  %deref58 = load i32, ptr %cast.inttoptr54, align 4
  %init_sext59 = sext i32 %deref58 to i64
  store i64 %init_sext59, ptr %data49, align 4
  %c = alloca i64, align 8
  %data60 = load i64, ptr %data49, align 4
  %pos61 = load i64, ptr %pos, align 4
  %addtmp62 = add i64 %data60, %pos61
  %data63 = load i64, ptr %data49, align 4
  %pos64 = load i64, ptr %pos, align 4
  %addtmp65 = add i64 %data63, %pos64
  %cast.inttoptr66 = inttoptr i64 %addtmp65 to ptr
  %null.deref67 = icmp eq ptr %cast.inttoptr66, null
  br i1 %null.deref67, label %null.fail68, label %null.ok69

null.fail68:                                      ; preds = %null.ok57
  call void @exit(i32 46)
  unreachable

null.ok69:                                        ; preds = %null.ok57
  %deref70 = load i32, ptr %cast.inttoptr66, align 4
  %cast.sext = sext i32 %deref70 to i64
  store i64 %cast.sext, ptr %c, align 4
  %state71 = load i64, ptr %state.addr, align 4
  %addtmp72 = add i64 %state71, 8
  %state73 = load i64, ptr %state.addr, align 4
  %addtmp74 = add i64 %state73, 8
  %cast.inttoptr75 = inttoptr i64 %addtmp74 to ptr
  %pos76 = load i64, ptr %pos, align 4
  %addtmp77 = add i64 %pos76, 1
  store i64 %addtmp77, ptr %cast.inttoptr75, align 4
  %c78 = load i64, ptr %c, align 4
  %cast.trunc = trunc i64 %c78 to i32
  %result.val = insertvalue { i32, ptr, i8 } undef, i32 %cast.trunc, 0
  %result.err = insertvalue { i32, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i32, ptr, i8 } %result.err, i8 0, 2
  ret { i32, ptr, i8 } %result.is_error
}

define linkonce_odr { i32, ptr, i8 } @io_utils.io_buf_putc(i64 %state, i32 %c) {
entry:
  %state.addr = alloca i64, align 8
  store i64 %state, ptr %state.addr, align 4
  %c.addr = alloca i32, align 4
  store i32 %c, ptr %c.addr, align 4
  %pos = alloca i64, align 8
  %state1 = load i64, ptr %state.addr, align 4
  %addtmp = add i64 %state1, 8
  %state2 = load i64, ptr %state.addr, align 4
  %addtmp3 = add i64 %state2, 8
  %cast.inttoptr = inttoptr i64 %addtmp3 to ptr
  %null.deref = icmp eq ptr %cast.inttoptr, null
  br i1 %null.deref, label %null.fail, label %null.ok

null.fail:                                        ; preds = %entry
  call void @exit(i32 46)
  unreachable

null.ok:                                          ; preds = %entry
  %deref = load i32, ptr %cast.inttoptr, align 4
  %init_sext = sext i32 %deref to i64
  store i64 %init_sext, ptr %pos, align 4
  %pos4 = load i64, ptr %pos, align 4
  %getmp = icmp sge i64 %pos4, 65536
  %ifcond = icmp ne i1 %getmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %null.ok
  %fd = alloca i64, align 8
  %state5 = load i64, ptr %state.addr, align 4
  %addtmp6 = add i64 %state5, 0
  %state7 = load i64, ptr %state.addr, align 4
  %addtmp8 = add i64 %state7, 0
  %cast.inttoptr9 = inttoptr i64 %addtmp8 to ptr
  %null.deref10 = icmp eq ptr %cast.inttoptr9, null
  br i1 %null.deref10, label %null.fail11, label %null.ok12

null.fail11:                                      ; preds = %then
  call void @exit(i32 46)
  unreachable

null.ok12:                                        ; preds = %then
  %deref13 = load i32, ptr %cast.inttoptr9, align 4
  %init_sext14 = sext i32 %deref13 to i64
  store i64 %init_sext14, ptr %fd, align 4
  %data = alloca i64, align 8
  %state15 = load i64, ptr %state.addr, align 4
  %addtmp16 = add i64 %state15, 24
  %state17 = load i64, ptr %state.addr, align 4
  %addtmp18 = add i64 %state17, 24
  %cast.inttoptr19 = inttoptr i64 %addtmp18 to ptr
  %null.deref20 = icmp eq ptr %cast.inttoptr19, null
  br i1 %null.deref20, label %null.fail21, label %null.ok22

null.fail21:                                      ; preds = %null.ok12
  call void @exit(i32 46)
  unreachable

null.ok22:                                        ; preds = %null.ok12
  %deref23 = load i32, ptr %cast.inttoptr19, align 4
  %init_sext24 = sext i32 %deref23 to i64
  store i64 %init_sext24, ptr %data, align 4
  %fd25 = load i64, ptr %fd, align 4
  %data26 = load i64, ptr %data, align 4
  %syscall_ret = call i64 asm sideeffect "syscall", "={rax},{rax},{rdi},{rsi},{rdx},~{rcx},~{r11},~{memory}"(i64 1, i64 %fd25, i64 %data26, i64 65536)
  %sys_is_err = icmp slt i64 %syscall_ret, 0
  %sys_neg_errno = sub i64 0, %syscall_ret
  %sys_err_ptr = inttoptr i64 %sys_neg_errno to ptr
  %sys_val = select i1 %sys_is_err, i64 0, i64 %syscall_ret
  %sys_err = select i1 %sys_is_err, ptr %sys_err_ptr, ptr null
  %sys_flag = select i1 %sys_is_err, i8 1, i8 0
  %sys_result.val = insertvalue %struct.NpkResult_int64 undef, i64 %sys_val, 0
  %sys_result.err = insertvalue %struct.NpkResult_int64 %sys_result.val, ptr %sys_err, 1
  %sys_result.is_error = insertvalue %struct.NpkResult_int64 %sys_result.err, i8 %sys_flag, 2
  %is_error = extractvalue %struct.NpkResult_int64 %sys_result.is_error, 2
  %is_error_bool = icmp ne i8 %is_error, 0
  br i1 %is_error_bool, label %error_block, label %success_block

error_block:                                      ; preds = %null.ok22
  br label %merge_block

success_block:                                    ; preds = %null.ok22
  %unwrap_value = extractvalue %struct.NpkResult_int64 %sys_result.is_error, 0
  br label %merge_block

merge_block:                                      ; preds = %success_block, %error_block
  %unwrap_result = phi i64 [ -1, %error_block ], [ %unwrap_value, %success_block ]
  store i64 0, ptr %pos, align 4
  br label %ifcont

ifcont:                                           ; preds = %merge_block, %null.ok
  %data27 = alloca i64, align 8
  %state28 = load i64, ptr %state.addr, align 4
  %addtmp29 = add i64 %state28, 24
  %state30 = load i64, ptr %state.addr, align 4
  %addtmp31 = add i64 %state30, 24
  %cast.inttoptr32 = inttoptr i64 %addtmp31 to ptr
  %null.deref33 = icmp eq ptr %cast.inttoptr32, null
  br i1 %null.deref33, label %null.fail34, label %null.ok35

null.fail34:                                      ; preds = %ifcont
  call void @exit(i32 46)
  unreachable

null.ok35:                                        ; preds = %ifcont
  %deref36 = load i32, ptr %cast.inttoptr32, align 4
  %init_sext37 = sext i32 %deref36 to i64
  store i64 %init_sext37, ptr %data27, align 4
  %data38 = load i64, ptr %data27, align 4
  %pos39 = load i64, ptr %pos, align 4
  %addtmp40 = add i64 %data38, %pos39
  %data41 = load i64, ptr %data27, align 4
  %pos42 = load i64, ptr %pos, align 4
  %addtmp43 = add i64 %data41, %pos42
  %cast.inttoptr44 = inttoptr i64 %addtmp43 to ptr
  %c45 = load i32, ptr %c.addr, align 4
  %cast.trunc = trunc i32 %c45 to i8
  store i8 %cast.trunc, ptr %cast.inttoptr44, align 1
  %state46 = load i64, ptr %state.addr, align 4
  %addtmp47 = add i64 %state46, 8
  %state48 = load i64, ptr %state.addr, align 4
  %addtmp49 = add i64 %state48, 8
  %cast.inttoptr50 = inttoptr i64 %addtmp49 to ptr
  %pos51 = load i64, ptr %pos, align 4
  %addtmp52 = add i64 %pos51, 1
  store i64 %addtmp52, ptr %cast.inttoptr50, align 4
  ret { i32, ptr, i8 } zeroinitializer
}

define linkonce_odr { i32, ptr, i8 } @io_utils.io_buf_flush(i64 %state) {
entry:
  %state.addr = alloca i64, align 8
  store i64 %state, ptr %state.addr, align 4
  %pos = alloca i64, align 8
  %state1 = load i64, ptr %state.addr, align 4
  %addtmp = add i64 %state1, 8
  %state2 = load i64, ptr %state.addr, align 4
  %addtmp3 = add i64 %state2, 8
  %cast.inttoptr = inttoptr i64 %addtmp3 to ptr
  %null.deref = icmp eq ptr %cast.inttoptr, null
  br i1 %null.deref, label %null.fail, label %null.ok

null.fail:                                        ; preds = %entry
  call void @exit(i32 46)
  unreachable

null.ok:                                          ; preds = %entry
  %deref = load i32, ptr %cast.inttoptr, align 4
  %init_sext = sext i32 %deref to i64
  store i64 %init_sext, ptr %pos, align 4
  %pos4 = load i64, ptr %pos, align 4
  %gttmp = icmp sgt i64 %pos4, 0
  %ifcond = icmp ne i1 %gttmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %null.ok
  %fd = alloca i64, align 8
  %state5 = load i64, ptr %state.addr, align 4
  %addtmp6 = add i64 %state5, 0
  %state7 = load i64, ptr %state.addr, align 4
  %addtmp8 = add i64 %state7, 0
  %cast.inttoptr9 = inttoptr i64 %addtmp8 to ptr
  %null.deref10 = icmp eq ptr %cast.inttoptr9, null
  br i1 %null.deref10, label %null.fail11, label %null.ok12

null.fail11:                                      ; preds = %then
  call void @exit(i32 46)
  unreachable

null.ok12:                                        ; preds = %then
  %deref13 = load i32, ptr %cast.inttoptr9, align 4
  %init_sext14 = sext i32 %deref13 to i64
  store i64 %init_sext14, ptr %fd, align 4
  %data = alloca i64, align 8
  %state15 = load i64, ptr %state.addr, align 4
  %addtmp16 = add i64 %state15, 24
  %state17 = load i64, ptr %state.addr, align 4
  %addtmp18 = add i64 %state17, 24
  %cast.inttoptr19 = inttoptr i64 %addtmp18 to ptr
  %null.deref20 = icmp eq ptr %cast.inttoptr19, null
  br i1 %null.deref20, label %null.fail21, label %null.ok22

null.fail21:                                      ; preds = %null.ok12
  call void @exit(i32 46)
  unreachable

null.ok22:                                        ; preds = %null.ok12
  %deref23 = load i32, ptr %cast.inttoptr19, align 4
  %init_sext24 = sext i32 %deref23 to i64
  store i64 %init_sext24, ptr %data, align 4
  %fd25 = load i64, ptr %fd, align 4
  %data26 = load i64, ptr %data, align 4
  %pos27 = load i64, ptr %pos, align 4
  %syscall_ret = call i64 asm sideeffect "syscall", "={rax},{rax},{rdi},{rsi},{rdx},~{rcx},~{r11},~{memory}"(i64 1, i64 %fd25, i64 %data26, i64 %pos27)
  %sys_is_err = icmp slt i64 %syscall_ret, 0
  %sys_neg_errno = sub i64 0, %syscall_ret
  %sys_err_ptr = inttoptr i64 %sys_neg_errno to ptr
  %sys_val = select i1 %sys_is_err, i64 0, i64 %syscall_ret
  %sys_err = select i1 %sys_is_err, ptr %sys_err_ptr, ptr null
  %sys_flag = select i1 %sys_is_err, i8 1, i8 0
  %sys_result.val = insertvalue %struct.NpkResult_int64 undef, i64 %sys_val, 0
  %sys_result.err = insertvalue %struct.NpkResult_int64 %sys_result.val, ptr %sys_err, 1
  %sys_result.is_error = insertvalue %struct.NpkResult_int64 %sys_result.err, i8 %sys_flag, 2
  %is_error = extractvalue %struct.NpkResult_int64 %sys_result.is_error, 2
  %is_error_bool = icmp ne i8 %is_error, 0
  br i1 %is_error_bool, label %error_block, label %success_block

error_block:                                      ; preds = %null.ok22
  br label %merge_block

success_block:                                    ; preds = %null.ok22
  %unwrap_value = extractvalue %struct.NpkResult_int64 %sys_result.is_error, 0
  br label %merge_block

merge_block:                                      ; preds = %success_block, %error_block
  %unwrap_result = phi i64 [ -1, %error_block ], [ %unwrap_value, %success_block ]
  %state28 = load i64, ptr %state.addr, align 4
  %addtmp29 = add i64 %state28, 8
  %state30 = load i64, ptr %state.addr, align 4
  %addtmp31 = add i64 %state30, 8
  %cast.inttoptr32 = inttoptr i64 %addtmp31 to ptr
  store i64 0, ptr %cast.inttoptr32, align 4
  br label %ifcont

ifcont:                                           ; preds = %merge_block, %null.ok
  ret { i32, ptr, i8 } zeroinitializer
}

define linkonce_odr { i32, ptr, i8 } @io_utils.io_buf_puts(i64 %state, ptr %s) {
entry:
  %state.addr = alloca i64, align 8
  store i64 %state, ptr %state.addr, align 4
  %len = alloca i64, align 8
  %str = load %struct.NpkString, ptr %s, align 8
  %length = extractvalue %struct.NpkString %str, 1
  store i64 %length, ptr %len, align 4
  %i = alloca i64, align 8
  store i64 0, ptr %i, align 4
  br label %whilecond

whilecond:                                        ; preds = %whilebody, %entry
  %i1 = load i64, ptr %i, align 4
  %len2 = load i64, ptr %len, align 4
  %lttmp = icmp slt i64 %i1, %len2
  %whilecond3 = icmp ne i1 %lttmp, false
  br i1 %whilecond3, label %whilebody, label %afterwhile

whilebody:                                        ; preds = %whilecond
  %c = alloca i64, align 8
  %i4 = load i64, ptr %i, align 4
  %calltmp = call i64 @npk_string_byte_at(ptr %s, i64 %i4)
  store i64 %calltmp, ptr %c, align 4
  %state5 = load i64, ptr %state.addr, align 4
  %c6 = load i64, ptr %c, align 4
  %cast.trunc = trunc i64 %c6 to i32
  %calltmp7 = call { i32, ptr, i8 } @io_utils.io_buf_putc(i64 %state5, i32 %cast.trunc)
  %i8 = load i64, ptr %i, align 4
  %addtmp = add i64 %i8, 1
  store i64 %addtmp, ptr %i, align 4
  call void @npk_gc_safepoint()
  br label %whilecond

afterwhile:                                       ; preds = %whilecond
  ret { i32, ptr, i8 } zeroinitializer
}

define linkonce_odr { ptr, ptr, i8 } @io_utils.npk_strerror(i64 %err) {
entry:
  %err.addr = alloca i64, align 8
  store i64 %err, ptr %err.addr, align 4
  %err1 = load i64, ptr %err.addr, align 4
  %eqtmp = icmp eq i64 %err1, 1
  %ifcond = icmp ne i1 %eqtmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %entry
  ret { ptr, ptr, i8 } { ptr @.str.4, ptr null, i8 0 }

ifcont:                                           ; preds = %entry
  %err2 = load i64, ptr %err.addr, align 4
  %eqtmp3 = icmp eq i64 %err2, 2
  %ifcond4 = icmp ne i1 %eqtmp3, false
  br i1 %ifcond4, label %then5, label %ifcont6

then5:                                            ; preds = %ifcont
  ret { ptr, ptr, i8 } { ptr @.str.6, ptr null, i8 0 }

ifcont6:                                          ; preds = %ifcont
  %err7 = load i64, ptr %err.addr, align 4
  %eqtmp8 = icmp eq i64 %err7, 3
  %ifcond9 = icmp ne i1 %eqtmp8, false
  br i1 %ifcond9, label %then10, label %ifcont11

then10:                                           ; preds = %ifcont6
  ret { ptr, ptr, i8 } { ptr @.str.8, ptr null, i8 0 }

ifcont11:                                         ; preds = %ifcont6
  %err12 = load i64, ptr %err.addr, align 4
  %eqtmp13 = icmp eq i64 %err12, 4
  %ifcond14 = icmp ne i1 %eqtmp13, false
  br i1 %ifcond14, label %then15, label %ifcont16

then15:                                           ; preds = %ifcont11
  ret { ptr, ptr, i8 } { ptr @.str.10, ptr null, i8 0 }

ifcont16:                                         ; preds = %ifcont11
  %err17 = load i64, ptr %err.addr, align 4
  %eqtmp18 = icmp eq i64 %err17, 5
  %ifcond19 = icmp ne i1 %eqtmp18, false
  br i1 %ifcond19, label %then20, label %ifcont21

then20:                                           ; preds = %ifcont16
  ret { ptr, ptr, i8 } { ptr @.str.12, ptr null, i8 0 }

ifcont21:                                         ; preds = %ifcont16
  %err22 = load i64, ptr %err.addr, align 4
  %eqtmp23 = icmp eq i64 %err22, 6
  %ifcond24 = icmp ne i1 %eqtmp23, false
  br i1 %ifcond24, label %then25, label %ifcont26

then25:                                           ; preds = %ifcont21
  ret { ptr, ptr, i8 } { ptr @.str.14, ptr null, i8 0 }

ifcont26:                                         ; preds = %ifcont21
  %err27 = load i64, ptr %err.addr, align 4
  %eqtmp28 = icmp eq i64 %err27, 9
  %ifcond29 = icmp ne i1 %eqtmp28, false
  br i1 %ifcond29, label %then30, label %ifcont31

then30:                                           ; preds = %ifcont26
  ret { ptr, ptr, i8 } { ptr @.str.16, ptr null, i8 0 }

ifcont31:                                         ; preds = %ifcont26
  %err32 = load i64, ptr %err.addr, align 4
  %eqtmp33 = icmp eq i64 %err32, 11
  %ifcond34 = icmp ne i1 %eqtmp33, false
  br i1 %ifcond34, label %then35, label %ifcont36

then35:                                           ; preds = %ifcont31
  ret { ptr, ptr, i8 } { ptr @.str.18, ptr null, i8 0 }

ifcont36:                                         ; preds = %ifcont31
  %err37 = load i64, ptr %err.addr, align 4
  %eqtmp38 = icmp eq i64 %err37, 12
  %ifcond39 = icmp ne i1 %eqtmp38, false
  br i1 %ifcond39, label %then40, label %ifcont41

then40:                                           ; preds = %ifcont36
  ret { ptr, ptr, i8 } { ptr @.str.20, ptr null, i8 0 }

ifcont41:                                         ; preds = %ifcont36
  %err42 = load i64, ptr %err.addr, align 4
  %eqtmp43 = icmp eq i64 %err42, 13
  %ifcond44 = icmp ne i1 %eqtmp43, false
  br i1 %ifcond44, label %then45, label %ifcont46

then45:                                           ; preds = %ifcont41
  ret { ptr, ptr, i8 } { ptr @.str.22, ptr null, i8 0 }

ifcont46:                                         ; preds = %ifcont41
  %err47 = load i64, ptr %err.addr, align 4
  %eqtmp48 = icmp eq i64 %err47, 14
  %ifcond49 = icmp ne i1 %eqtmp48, false
  br i1 %ifcond49, label %then50, label %ifcont51

then50:                                           ; preds = %ifcont46
  ret { ptr, ptr, i8 } { ptr @.str.24, ptr null, i8 0 }

ifcont51:                                         ; preds = %ifcont46
  %err52 = load i64, ptr %err.addr, align 4
  %eqtmp53 = icmp eq i64 %err52, 16
  %ifcond54 = icmp ne i1 %eqtmp53, false
  br i1 %ifcond54, label %then55, label %ifcont56

then55:                                           ; preds = %ifcont51
  ret { ptr, ptr, i8 } { ptr @.str.26, ptr null, i8 0 }

ifcont56:                                         ; preds = %ifcont51
  %err57 = load i64, ptr %err.addr, align 4
  %eqtmp58 = icmp eq i64 %err57, 17
  %ifcond59 = icmp ne i1 %eqtmp58, false
  br i1 %ifcond59, label %then60, label %ifcont61

then60:                                           ; preds = %ifcont56
  ret { ptr, ptr, i8 } { ptr @.str.28, ptr null, i8 0 }

ifcont61:                                         ; preds = %ifcont56
  %err62 = load i64, ptr %err.addr, align 4
  %eqtmp63 = icmp eq i64 %err62, 19
  %ifcond64 = icmp ne i1 %eqtmp63, false
  br i1 %ifcond64, label %then65, label %ifcont66

then65:                                           ; preds = %ifcont61
  ret { ptr, ptr, i8 } { ptr @.str.30, ptr null, i8 0 }

ifcont66:                                         ; preds = %ifcont61
  %err67 = load i64, ptr %err.addr, align 4
  %eqtmp68 = icmp eq i64 %err67, 20
  %ifcond69 = icmp ne i1 %eqtmp68, false
  br i1 %ifcond69, label %then70, label %ifcont71

then70:                                           ; preds = %ifcont66
  ret { ptr, ptr, i8 } { ptr @.str.32, ptr null, i8 0 }

ifcont71:                                         ; preds = %ifcont66
  %err72 = load i64, ptr %err.addr, align 4
  %eqtmp73 = icmp eq i64 %err72, 21
  %ifcond74 = icmp ne i1 %eqtmp73, false
  br i1 %ifcond74, label %then75, label %ifcont76

then75:                                           ; preds = %ifcont71
  ret { ptr, ptr, i8 } { ptr @.str.34, ptr null, i8 0 }

ifcont76:                                         ; preds = %ifcont71
  %err77 = load i64, ptr %err.addr, align 4
  %eqtmp78 = icmp eq i64 %err77, 22
  %ifcond79 = icmp ne i1 %eqtmp78, false
  br i1 %ifcond79, label %then80, label %ifcont81

then80:                                           ; preds = %ifcont76
  ret { ptr, ptr, i8 } { ptr @.str.36, ptr null, i8 0 }

ifcont81:                                         ; preds = %ifcont76
  %err82 = load i64, ptr %err.addr, align 4
  %eqtmp83 = icmp eq i64 %err82, 23
  %ifcond84 = icmp ne i1 %eqtmp83, false
  br i1 %ifcond84, label %then85, label %ifcont86

then85:                                           ; preds = %ifcont81
  ret { ptr, ptr, i8 } { ptr @.str.38, ptr null, i8 0 }

ifcont86:                                         ; preds = %ifcont81
  %err87 = load i64, ptr %err.addr, align 4
  %eqtmp88 = icmp eq i64 %err87, 24
  %ifcond89 = icmp ne i1 %eqtmp88, false
  br i1 %ifcond89, label %then90, label %ifcont91

then90:                                           ; preds = %ifcont86
  ret { ptr, ptr, i8 } { ptr @.str.40, ptr null, i8 0 }

ifcont91:                                         ; preds = %ifcont86
  %err92 = load i64, ptr %err.addr, align 4
  %eqtmp93 = icmp eq i64 %err92, 25
  %ifcond94 = icmp ne i1 %eqtmp93, false
  br i1 %ifcond94, label %then95, label %ifcont96

then95:                                           ; preds = %ifcont91
  ret { ptr, ptr, i8 } { ptr @.str.42, ptr null, i8 0 }

ifcont96:                                         ; preds = %ifcont91
  %err97 = load i64, ptr %err.addr, align 4
  %eqtmp98 = icmp eq i64 %err97, 27
  %ifcond99 = icmp ne i1 %eqtmp98, false
  br i1 %ifcond99, label %then100, label %ifcont101

then100:                                          ; preds = %ifcont96
  ret { ptr, ptr, i8 } { ptr @.str.44, ptr null, i8 0 }

ifcont101:                                        ; preds = %ifcont96
  %err102 = load i64, ptr %err.addr, align 4
  %eqtmp103 = icmp eq i64 %err102, 28
  %ifcond104 = icmp ne i1 %eqtmp103, false
  br i1 %ifcond104, label %then105, label %ifcont106

then105:                                          ; preds = %ifcont101
  ret { ptr, ptr, i8 } { ptr @.str.46, ptr null, i8 0 }

ifcont106:                                        ; preds = %ifcont101
  %err107 = load i64, ptr %err.addr, align 4
  %eqtmp108 = icmp eq i64 %err107, 29
  %ifcond109 = icmp ne i1 %eqtmp108, false
  br i1 %ifcond109, label %then110, label %ifcont111

then110:                                          ; preds = %ifcont106
  ret { ptr, ptr, i8 } { ptr @.str.48, ptr null, i8 0 }

ifcont111:                                        ; preds = %ifcont106
  %err112 = load i64, ptr %err.addr, align 4
  %eqtmp113 = icmp eq i64 %err112, 30
  %ifcond114 = icmp ne i1 %eqtmp113, false
  br i1 %ifcond114, label %then115, label %ifcont116

then115:                                          ; preds = %ifcont111
  ret { ptr, ptr, i8 } { ptr @.str.50, ptr null, i8 0 }

ifcont116:                                        ; preds = %ifcont111
  %err117 = load i64, ptr %err.addr, align 4
  %eqtmp118 = icmp eq i64 %err117, 31
  %ifcond119 = icmp ne i1 %eqtmp118, false
  br i1 %ifcond119, label %then120, label %ifcont121

then120:                                          ; preds = %ifcont116
  ret { ptr, ptr, i8 } { ptr @.str.52, ptr null, i8 0 }

ifcont121:                                        ; preds = %ifcont116
  %err122 = load i64, ptr %err.addr, align 4
  %eqtmp123 = icmp eq i64 %err122, 32
  %ifcond124 = icmp ne i1 %eqtmp123, false
  br i1 %ifcond124, label %then125, label %ifcont126

then125:                                          ; preds = %ifcont121
  ret { ptr, ptr, i8 } { ptr @.str.54, ptr null, i8 0 }

ifcont126:                                        ; preds = %ifcont121
  %err127 = load i64, ptr %err.addr, align 4
  %eqtmp128 = icmp eq i64 %err127, 33
  %ifcond129 = icmp ne i1 %eqtmp128, false
  br i1 %ifcond129, label %then130, label %ifcont131

then130:                                          ; preds = %ifcont126
  ret { ptr, ptr, i8 } { ptr @.str.56, ptr null, i8 0 }

ifcont131:                                        ; preds = %ifcont126
  %err132 = load i64, ptr %err.addr, align 4
  %eqtmp133 = icmp eq i64 %err132, 34
  %ifcond134 = icmp ne i1 %eqtmp133, false
  br i1 %ifcond134, label %then135, label %ifcont136

then135:                                          ; preds = %ifcont131
  ret { ptr, ptr, i8 } { ptr @.str.58, ptr null, i8 0 }

ifcont136:                                        ; preds = %ifcont131
  ret { ptr, ptr, i8 } { ptr @.str.60, ptr null, i8 0 }
}

define linkonce_odr { i32, ptr, i8 } @io_utils.io_buf_free(i64 %state) {
entry:
  %state.addr = alloca i64, align 8
  store i64 %state, ptr %state.addr, align 4
  %data = alloca i64, align 8
  %state1 = load i64, ptr %state.addr, align 4
  %addtmp = add i64 %state1, 24
  %state2 = load i64, ptr %state.addr, align 4
  %addtmp3 = add i64 %state2, 24
  %cast.inttoptr = inttoptr i64 %addtmp3 to ptr
  %null.deref = icmp eq ptr %cast.inttoptr, null
  br i1 %null.deref, label %null.fail, label %null.ok

null.fail:                                        ; preds = %entry
  call void @exit(i32 46)
  unreachable

null.ok:                                          ; preds = %entry
  %deref = load i32, ptr %cast.inttoptr, align 4
  %init_sext = sext i32 %deref to i64
  store i64 %init_sext, ptr %data, align 4
  %data4 = load i64, ptr %data, align 4
  %calltmp = call i32 @nitpick_libc_mem_free(i64 %data4)
  %state5 = load i64, ptr %state.addr, align 4
  %calltmp6 = call i32 @nitpick_libc_mem_free(i64 %state5)
  ret { i32, ptr, i8 } zeroinitializer
}

define linkonce_odr { i64, ptr, i8 } @io_utils.io_buf_readline(i64 %state, i64 %line_buf) {
entry:
  %state.addr = alloca i64, align 8
  store i64 %state, ptr %state.addr, align 4
  %line_buf.addr = alloca i64, align 8
  store i64 %line_buf, ptr %line_buf.addr, align 4
  %line_len = alloca i64, align 8
  store i64 0, ptr %line_len, align 4
  br label %whilecond

whilecond:                                        ; preds = %ifcont15, %entry
  br i1 true, label %whilebody, label %afterwhile

whilebody:                                        ; preds = %whilecond
  %c = alloca i32, align 4
  %state1 = load i64, ptr %state.addr, align 4
  %calltmp = call { i32, ptr, i8 } @io_utils.io_buf_getc(i64 %state1)
  %is_error = extractvalue { i32, ptr, i8 } %calltmp, 2
  %is_error_bool = icmp ne i8 %is_error, 0
  br i1 %is_error_bool, label %error_block, label %success_block

error_block:                                      ; preds = %whilebody
  br label %merge_block

success_block:                                    ; preds = %whilebody
  %value = extractvalue { i32, ptr, i8 } %calltmp, 0
  br label %merge_block

merge_block:                                      ; preds = %success_block, %error_block
  %unwrap_result = phi i32 [ -1, %error_block ], [ %value, %success_block ]
  store i32 %unwrap_result, ptr %c, align 4
  %c2 = load i32, ptr %c, align 4
  %lttmp = icmp slt i32 %c2, 0
  %ifcond = icmp ne i1 %lttmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %merge_block
  br label %afterwhile

afterbreak:                                       ; No predecessors!
  br label %ifcont

ifcont:                                           ; preds = %afterbreak, %merge_block
  %line_buf3 = load i64, ptr %line_buf.addr, align 4
  %line_len4 = load i64, ptr %line_len, align 4
  %addtmp = add i64 %line_buf3, %line_len4
  %line_buf5 = load i64, ptr %line_buf.addr, align 4
  %line_len6 = load i64, ptr %line_len, align 4
  %addtmp7 = add i64 %line_buf5, %line_len6
  %cast.inttoptr = inttoptr i64 %addtmp7 to ptr
  %c8 = load i32, ptr %c, align 4
  %cast.trunc = trunc i32 %c8 to i8
  store i8 %cast.trunc, ptr %cast.inttoptr, align 1
  %line_len9 = load i64, ptr %line_len, align 4
  %addtmp10 = add i64 %line_len9, 1
  store i64 %addtmp10, ptr %line_len, align 4
  %c11 = load i32, ptr %c, align 4
  %eqtmp = icmp eq i32 %c11, 10
  %ifcond12 = icmp ne i1 %eqtmp, false
  br i1 %ifcond12, label %then13, label %ifcont15

then13:                                           ; preds = %ifcont
  br label %afterwhile

afterbreak14:                                     ; No predecessors!
  br label %ifcont15

ifcont15:                                         ; preds = %afterbreak14, %ifcont
  call void @npk_gc_safepoint()
  br label %whilecond

afterwhile:                                       ; preds = %then13, %then, %whilecond
  %line_len16 = load i64, ptr %line_len, align 4
  %gttmp = icmp sgt i64 %line_len16, 0
  %ifcond17 = icmp ne i1 %gttmp, false
  br i1 %ifcond17, label %then18, label %ifcont26

then18:                                           ; preds = %afterwhile
  %line_buf19 = load i64, ptr %line_buf.addr, align 4
  %line_len20 = load i64, ptr %line_len, align 4
  %addtmp21 = add i64 %line_buf19, %line_len20
  %line_buf22 = load i64, ptr %line_buf.addr, align 4
  %line_len23 = load i64, ptr %line_len, align 4
  %addtmp24 = add i64 %line_buf22, %line_len23
  %cast.inttoptr25 = inttoptr i64 %addtmp24 to ptr
  store i8 0, ptr %cast.inttoptr25, align 1
  br label %ifcont26

ifcont26:                                         ; preds = %then18, %afterwhile
  %line_len27 = load i64, ptr %line_len, align 4
  %result.val = insertvalue { i64, ptr, i8 } undef, i64 %line_len27, 0
  %result.err = insertvalue { i64, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i64, ptr, i8 } %result.err, i8 0, 2
  ret { i64, ptr, i8 } %result.is_error
}

declare ptr @npk_alloc(i64)

declare void @npk_gc_safepoint()

declare void @exit(i32)

declare ptr @npk_string_from_char_simple(i8)

declare void @npk_free(ptr)

define linkonce_odr i32 @__io_utils_init() {
entry:
  ret i32 0
}

define internal { i32, ptr, i8 } @failsafe(i32 %err) {
entry:
  %err.addr = alloca i32, align 4
  store i32 %err, ptr %err.addr, align 4
  call void @proc_exit(i32 1)
  ret { i32, ptr, i8 } zeroinitializer
}

define i32 @main(i32 %0, ptr %1) {
entry:
  call void @npk_gc_init(i64 0, i64 0)
  call void @npk_args_init(i32 %0, ptr %1)
  call void @npk_streams_init()
  %fd = alloca i64, align 8
  %sys_str_struct = load %struct.NpkString, ptr @.str.62, align 8
  %sys_str_data = extractvalue %struct.NpkString %sys_str_struct, 0
  %sys_str_int = ptrtoint ptr %sys_str_data to i64
  %syscall_ret = call i64 asm sideeffect "syscall", "={rax},{rax},{rdi},{rsi},{rdx},~{rcx},~{r11},~{memory}"(i64 2, i64 %sys_str_int, i64 0, i64 0)
  %sys_is_err = icmp slt i64 %syscall_ret, 0
  %sys_neg_errno = sub i64 0, %syscall_ret
  %sys_err_ptr = inttoptr i64 %sys_neg_errno to ptr
  %sys_val = select i1 %sys_is_err, i64 0, i64 %syscall_ret
  %sys_err = select i1 %sys_is_err, ptr %sys_err_ptr, ptr null
  %sys_flag = select i1 %sys_is_err, i8 1, i8 0
  %sys_result.val = insertvalue %struct.NpkResult_int64 undef, i64 %sys_val, 0
  %sys_result.err = insertvalue %struct.NpkResult_int64 %sys_result.val, ptr %sys_err, 1
  %sys_result.is_error = insertvalue %struct.NpkResult_int64 %sys_result.err, i8 %sys_flag, 2
  %is_error = extractvalue %struct.NpkResult_int64 %sys_result.is_error, 2
  %is_error_bool = icmp ne i8 %is_error, 0
  br i1 %is_error_bool, label %error_block, label %success_block

error_block:                                      ; preds = %entry
  br label %merge_block

success_block:                                    ; preds = %entry
  %value = extractvalue %struct.NpkResult_int64 %sys_result.is_error, 0
  br label %merge_block

merge_block:                                      ; preds = %success_block, %error_block
  %unwrap_result = phi i64 [ -1, %error_block ], [ %value, %success_block ]
  store i64 %unwrap_result, ptr %fd, align 4
  %fp = alloca i64, align 8
  %fd1 = load i64, ptr %fd, align 4
  %calltmp = call { i64, ptr, i8 } @io_utils.io_buf_new(i64 %fd1)
  %raw.value = extractvalue { i64, ptr, i8 } %calltmp, 0
  store i64 %raw.value, ptr %fp, align 4
  %c = alloca i32, align 4
  %fp2 = load i64, ptr %fp, align 4
  %calltmp3 = call { i32, ptr, i8 } @io_utils.io_buf_getc(i64 %fp2)
  %raw.value4 = extractvalue { i32, ptr, i8 } %calltmp3, 0
  store i32 %raw.value4, ptr %c, align 4
  %calltmp5 = call { i32, ptr, i8 } @io_utils.print_out(ptr @.str.64)
  %c6 = load i32, ptr %c, align 4
  %cast.trunc = trunc i32 %c6 to i8
  %char_str = call ptr @npk_string_from_char_simple(i8 %cast.trunc)
  %calltmp7 = call { i32, ptr, i8 } @io_utils.print_out(ptr %char_str)
  %calltmp8 = call { i32, ptr, i8 } @io_utils.print_out(ptr @.str.66)
  call void @proc_exit(i32 0)
  ret i32 0
}

declare void @proc_exit(i32)

declare void @npk_gc_init(i64, i64)

declare void @npk_args_init(i32, ptr)

declare void @npk_streams_init()

define linkonce_odr i32 @__test_read_init() {
entry:
  ret i32 0
}
