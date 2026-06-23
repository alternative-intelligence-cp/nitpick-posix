; ModuleID = 'src/cp/cp.npk'
source_filename = "src/cp/cp.npk"

%struct.NpkString = type { ptr, i64 }
%Numeric_vtable_t = type {}
%Display_vtable_t = type {}
%struct.NpkResult_int64 = type { i64, ptr, i8 }
%struct.NIL = type {}
%ArgParser = type { ptr, ptr, ptr }

@.str.data = private constant [1 x i8] zeroinitializer
@.str = private constant %struct.NpkString { ptr @.str.data, i64 0 }
@.str.data.1 = private constant [1 x i8] zeroinitializer
@.str.2 = private constant %struct.NpkString { ptr @.str.data.1, i64 0 }
@.str.data.3 = private constant [1 x i8] zeroinitializer
@.str.4 = private constant %struct.NpkString { ptr @.str.data.3, i64 0 }
@.str.data.5 = private constant [1 x i8] zeroinitializer
@.str.6 = private constant %struct.NpkString { ptr @.str.data.5, i64 0 }
@.str.data.7 = private constant [19 x i8] c"/proc/self/cmdline\00"
@.str.8 = private constant %struct.NpkString { ptr @.str.data.7, i64 18 }
@.str.data.9 = private constant [2 x i8] c"r\00"
@.str.10 = private constant %struct.NpkString { ptr @.str.data.9, i64 1 }
@.str.data.11 = private constant [2 x i8] c"|\00"
@.str.12 = private constant %struct.NpkString { ptr @.str.data.11, i64 1 }
@.str.data.13 = private constant [2 x i8] c"|\00"
@.str.14 = private constant %struct.NpkString { ptr @.str.data.13, i64 1 }
@.str.data.15 = private constant [1 x i8] zeroinitializer
@.str.16 = private constant %struct.NpkString { ptr @.str.data.15, i64 0 }
@.str.data.17 = private constant [2 x i8] c"|\00"
@.str.18 = private constant %struct.NpkString { ptr @.str.data.17, i64 1 }
@.str.data.19 = private constant [1 x i8] zeroinitializer
@.str.20 = private constant %struct.NpkString { ptr @.str.data.19, i64 0 }
@.str.data.21 = private constant [2 x i8] c"|\00"
@.str.22 = private constant %struct.NpkString { ptr @.str.data.21, i64 1 }
@.str.data.23 = private constant [1 x i8] zeroinitializer
@.str.24 = private constant %struct.NpkString { ptr @.str.data.23, i64 0 }
@.str.data.25 = private constant [1 x i8] zeroinitializer
@.str.26 = private constant %struct.NpkString { ptr @.str.data.25, i64 0 }
@.str.data.27 = private constant [2 x i8] c"|\00"
@.str.28 = private constant %struct.NpkString { ptr @.str.data.27, i64 1 }
@.str.data.29 = private constant [1 x i8] zeroinitializer
@.str.30 = private constant %struct.NpkString { ptr @.str.data.29, i64 0 }
@.str.data.31 = private constant [1 x i8] zeroinitializer
@.str.32 = private constant %struct.NpkString { ptr @.str.data.31, i64 0 }
@.str.data.33 = private constant [2 x i8] c"|\00"
@.str.34 = private constant %struct.NpkString { ptr @.str.data.33, i64 1 }
@.str.35 = private constant %struct.NpkString { ptr @.str.data.33, i64 1 }
@.str.data.36 = private constant [2 x i8] c"|\00"
@.str.37 = private constant %struct.NpkString { ptr @.str.data.36, i64 1 }
@.str.38 = private constant %struct.NpkString { ptr @.str.data.36, i64 1 }
@.str.data.39 = private constant [1 x i8] zeroinitializer
@.str.40 = private constant %struct.NpkString { ptr @.str.data.39, i64 0 }
@.str.data.41 = private constant [1 x i8] zeroinitializer
@.str.42 = private constant %struct.NpkString { ptr @.str.data.41, i64 0 }
@.str.data.43 = private constant [1 x i8] zeroinitializer
@.str.44 = private constant %struct.NpkString { ptr @.str.data.43, i64 0 }
@.str.data.45 = private constant [2 x i8] c"|\00"
@.str.46 = private constant %struct.NpkString { ptr @.str.data.45, i64 1 }
@.str.data.47 = private constant [1 x i8] zeroinitializer
@.str.48 = private constant %struct.NpkString { ptr @.str.data.47, i64 0 }
@.str.data.49 = private constant [1 x i8] zeroinitializer
@.str.50 = private constant %struct.NpkString { ptr @.str.data.49, i64 0 }
@.str.data.51 = private constant [1 x i8] zeroinitializer
@.str.52 = private constant %struct.NpkString { ptr @.str.data.51, i64 0 }
@.str.data.53 = private constant [1 x i8] zeroinitializer
@.str.54 = private constant %struct.NpkString { ptr @.str.data.53, i64 0 }
@.str.data.55 = private constant [2 x i8] c"-\00"
@.str.56 = private constant %struct.NpkString { ptr @.str.data.55, i64 1 }
@.str.data.57 = private constant [2 x i8] c"1\00"
@.str.58 = private constant %struct.NpkString { ptr @.str.data.57, i64 1 }
@.str.data.59 = private constant [2 x i8] c"2\00"
@.str.60 = private constant %struct.NpkString { ptr @.str.data.59, i64 1 }
@.str.data.61 = private constant [2 x i8] c"3\00"
@.str.62 = private constant %struct.NpkString { ptr @.str.data.61, i64 1 }
@.str.data.63 = private constant [2 x i8] c"4\00"
@.str.64 = private constant %struct.NpkString { ptr @.str.data.63, i64 1 }
@.str.data.65 = private constant [2 x i8] c"5\00"
@.str.66 = private constant %struct.NpkString { ptr @.str.data.65, i64 1 }
@.str.data.67 = private constant [2 x i8] c"6\00"
@.str.68 = private constant %struct.NpkString { ptr @.str.data.67, i64 1 }
@.str.data.69 = private constant [2 x i8] c"7\00"
@.str.70 = private constant %struct.NpkString { ptr @.str.data.69, i64 1 }
@.str.data.71 = private constant [2 x i8] c"8\00"
@.str.72 = private constant %struct.NpkString { ptr @.str.data.71, i64 1 }
@.str.data.73 = private constant [2 x i8] c"9\00"
@.str.74 = private constant %struct.NpkString { ptr @.str.data.73, i64 1 }
@.str.data.75 = private constant [1 x i8] zeroinitializer
@.str.76 = private constant %struct.NpkString { ptr @.str.data.75, i64 0 }
@.str.data.77 = private constant [2 x i8] c"|\00"
@.str.78 = private constant %struct.NpkString { ptr @.str.data.77, i64 1 }
@.str.data.79 = private constant [2 x i8] c"|\00"
@.str.80 = private constant %struct.NpkString { ptr @.str.data.79, i64 1 }
@.str.data.81 = private constant [2 x i8] c"|\00"
@.str.82 = private constant %struct.NpkString { ptr @.str.data.81, i64 1 }
@.str.data.83 = private constant [2 x i8] c"|\00"
@.str.84 = private constant %struct.NpkString { ptr @.str.data.83, i64 1 }
@.str.data.85 = private constant [2 x i8] c"|\00"
@.str.86 = private constant %struct.NpkString { ptr @.str.data.85, i64 1 }
@.str.data.87 = private constant [2 x i8] c"|\00"
@.str.88 = private constant %struct.NpkString { ptr @.str.data.87, i64 1 }
@.str.data.89 = private constant [6 x i8] c"flag|\00"
@.str.90 = private constant %struct.NpkString { ptr @.str.data.89, i64 5 }
@.str.data.91 = private constant [2 x i8] c"|\00"
@.str.92 = private constant %struct.NpkString { ptr @.str.data.91, i64 1 }
@.str.data.93 = private constant [2 x i8] c"|\00"
@.str.94 = private constant %struct.NpkString { ptr @.str.data.93, i64 1 }
@.str.data.95 = private constant [5 x i8] c"opt|\00"
@.str.96 = private constant %struct.NpkString { ptr @.str.data.95, i64 4 }
@.str.data.97 = private constant [2 x i8] c"|\00"
@.str.98 = private constant %struct.NpkString { ptr @.str.data.97, i64 1 }
@.str.99 = private constant %struct.NpkString { ptr @.str.data.97, i64 1 }
@.str.data.100 = private constant [2 x i8] c"|\00"
@.str.101 = private constant %struct.NpkString { ptr @.str.data.100, i64 1 }
@.str.data.102 = private constant [2 x i8] c"|\00"
@.str.103 = private constant %struct.NpkString { ptr @.str.data.102, i64 1 }
@.str.data.104 = private constant [2 x i8] c"|\00"
@.str.105 = private constant %struct.NpkString { ptr @.str.data.104, i64 1 }
@.str.data.106 = private constant [2 x i8] c"|\00"
@.str.107 = private constant %struct.NpkString { ptr @.str.data.106, i64 1 }
@.str.data.108 = private constant [2 x i8] c"|\00"
@.str.109 = private constant %struct.NpkString { ptr @.str.data.108, i64 1 }
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
@.str.data.110 = private constant [19 x i8] c"Fatal Error: code \00"
@.str.111 = private constant %struct.NpkString { ptr @.str.data.110, i64 18 }
@.str.data.112 = private constant [2 x i8] c"\0A\00"
@.str.113 = private constant %struct.NpkString { ptr @.str.data.112, i64 1 }
@.str.data.114 = private constant [18 x i8] c"cp: cannot open '\00"
@.str.115 = private constant %struct.NpkString { ptr @.str.data.114, i64 17 }
@.str.data.116 = private constant [15 x i8] c"' for reading\0A\00"
@.str.117 = private constant %struct.NpkString { ptr @.str.data.116, i64 14 }
@.str.data.118 = private constant [33 x i8] c"cp: cannot create regular file '\00"
@.str.119 = private constant %struct.NpkString { ptr @.str.data.118, i64 32 }
@.str.data.120 = private constant [3 x i8] c"'\0A\00"
@.str.121 = private constant %struct.NpkString { ptr @.str.data.120, i64 2 }
@.str.data.122 = private constant [29 x i8] c"cp: memory allocation error\0A\00"
@.str.123 = private constant %struct.NpkString { ptr @.str.data.122, i64 28 }
@.str.data.124 = private constant [31 x i8] c"cp: error reading source file\0A\00"
@.str.125 = private constant %struct.NpkString { ptr @.str.data.124, i64 30 }
@.str.data.126 = private constant [39 x i8] c"cp: error writing to destination file\0A\00"
@.str.127 = private constant %struct.NpkString { ptr @.str.data.126, i64 38 }
@.str.data.128 = private constant [18 x i8] c"cp: cannot stat '\00"
@.str.129 = private constant %struct.NpkString { ptr @.str.data.128, i64 17 }
@.str.data.130 = private constant [30 x i8] c"': No such file or directory\0A\00"
@.str.131 = private constant %struct.NpkString { ptr @.str.data.130, i64 29 }
@.str.data.132 = private constant [43 x i8] c"cp: -r not specified; omitting directory '\00"
@.str.133 = private constant %struct.NpkString { ptr @.str.data.132, i64 42 }
@.str.data.134 = private constant [3 x i8] c"'\0A\00"
@.str.135 = private constant %struct.NpkString { ptr @.str.data.134, i64 2 }
@.str.data.136 = private constant [28 x i8] c"cp: cannot open directory '\00"
@.str.137 = private constant %struct.NpkString { ptr @.str.data.136, i64 27 }
@.str.data.138 = private constant [3 x i8] c"'\0A\00"
@.str.139 = private constant %struct.NpkString { ptr @.str.data.138, i64 2 }
@.str.data.140 = private constant [2 x i8] c"/\00"
@.str.141 = private constant %struct.NpkString { ptr @.str.data.140, i64 1 }
@.str.data.142 = private constant [2 x i8] c"/\00"
@.str.143 = private constant %struct.NpkString { ptr @.str.data.142, i64 1 }
@.str.data.144 = private constant [3 x i8] c"-R\00"
@.str.145 = private constant %struct.NpkString { ptr @.str.data.144, i64 2 }
@.str.data.146 = private constant [3 x i8] c"-r\00"
@.str.147 = private constant %struct.NpkString { ptr @.str.data.146, i64 2 }
@.str.data.148 = private constant [12 x i8] c"--recursive\00"
@.str.149 = private constant %struct.NpkString { ptr @.str.data.148, i64 11 }
@.str.data.150 = private constant [1 x i8] zeroinitializer
@.str.151 = private constant %struct.NpkString { ptr @.str.data.150, i64 0 }
@.str.data.152 = private constant [1 x i8] zeroinitializer
@.str.153 = private constant %struct.NpkString { ptr @.str.data.152, i64 0 }
@.str.data.154 = private constant [2 x i8] c"-\00"
@.str.155 = private constant %struct.NpkString { ptr @.str.data.154, i64 1 }
@.str.data.156 = private constant [26 x i8] c"cp: missing file operand\0A\00"
@.str.157 = private constant %struct.NpkString { ptr @.str.data.156, i64 25 }
@.str.data.158 = private constant [55 x i8] c"cp: only two non-flag arguments are supported for now\0A\00"
@.str.159 = private constant %struct.NpkString { ptr @.str.data.158, i64 54 }

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
  br label %ifcont

ifcont:                                           ; preds = %then, %entry
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
  br label %ifcont

ifcont:                                           ; preds = %then, %entry
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
  br label %ifcont

ifcont:                                           ; preds = %then, %entry
  ret { i32, ptr, i8 } zeroinitializer
}

declare i64 @string_length(ptr)

define linkonce_odr i32 @__io_utils_init() {
entry:
  ret i32 0
}

declare i64 @npk_mem_read_byte(i64, i64)

declare i32 @npk_mem_write_byte(i64, i64, i64)

define linkonce_odr { ptr, ptr, i8 } @mem_utils.ptr_to_string(i64 %ptr) {
entry:
  %ptr.addr = alloca i64, align 8
  store i64 %ptr, ptr %ptr.addr, align 4
  %s = alloca ptr, align 8
  store ptr @.str, ptr %s, align 8
  %i = alloca i64, align 8
  store i64 0, ptr %i, align 4
  br label %whilecond

whilecond:                                        ; preds = %whilebody, %entry
  %ptr1 = load i64, ptr %ptr.addr, align 4
  %i2 = load i64, ptr %i, align 4
  %calltmp = call i64 @npk_mem_read_byte(i64 %ptr1, i64 %i2)
  %netmp = icmp ne i64 %calltmp, 0
  %whilecond3 = icmp ne i1 %netmp, false
  br i1 %whilecond3, label %whilebody, label %afterwhile

whilebody:                                        ; preds = %whilecond
  %c = alloca i64, align 8
  %ptr4 = load i64, ptr %ptr.addr, align 4
  %i5 = load i64, ptr %i, align 4
  %calltmp6 = call i64 @npk_mem_read_byte(i64 %ptr4, i64 %i5)
  store i64 %calltmp6, ptr %c, align 4
  %s7 = load ptr, ptr %s, align 8
  %c8 = load i64, ptr %c, align 4
  %cast.trunc = trunc i64 %c8 to i8
  %char_str = call ptr @npk_string_from_char_simple(i8 %cast.trunc)
  %concat_str = call ptr @npk_string_concat_simple(ptr %s7, ptr %char_str)
  store ptr %concat_str, ptr %s, align 8
  %i9 = load i64, ptr %i, align 4
  %addtmp = add i64 %i9, 1
  store i64 %addtmp, ptr %i, align 4
  call void @npk_gc_safepoint()
  br label %whilecond

afterwhile:                                       ; preds = %whilecond
  %s10 = load ptr, ptr %s, align 8
  %result.val = insertvalue { ptr, ptr, i8 } undef, ptr %s10, 0
  %result.err = insertvalue { ptr, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { ptr, ptr, i8 } %result.err, i8 0, 2
  ret { ptr, ptr, i8 } %result.is_error
}

define linkonce_odr { i64, ptr, i8 } @mem_utils.str_clone(i64 %s) {
entry:
  %s.addr = alloca i64, align 8
  store i64 %s, ptr %s.addr, align 4
  %len = alloca i64, align 8
  store i64 0, ptr %len, align 4
  br label %whilecond

whilecond:                                        ; preds = %whilebody, %entry
  %s1 = load i64, ptr %s.addr, align 4
  %len2 = load i64, ptr %len, align 4
  %calltmp = call i64 @npk_mem_read_byte(i64 %s1, i64 %len2)
  %netmp = icmp ne i64 %calltmp, 0
  %whilecond3 = icmp ne i1 %netmp, false
  br i1 %whilecond3, label %whilebody, label %afterwhile

whilebody:                                        ; preds = %whilecond
  %len4 = load i64, ptr %len, align 4
  %addtmp = add i64 %len4, 1
  store i64 %addtmp, ptr %len, align 4
  call void @npk_gc_safepoint()
  br label %whilecond

afterwhile:                                       ; preds = %whilecond
  %copy = alloca i64, align 8
  %len5 = load i64, ptr %len, align 4
  %addtmp6 = add i64 %len5, 1
  %calltmp7 = call i64 @malloc(i64 %addtmp6)
  store i64 %calltmp7, ptr %copy, align 4
  %i = alloca i64, align 8
  store i64 0, ptr %i, align 4
  br label %whilecond8

whilecond8:                                       ; preds = %whilebody12, %afterwhile
  %i9 = load i64, ptr %i, align 4
  %len10 = load i64, ptr %len, align 4
  %lttmp = icmp slt i64 %i9, %len10
  %whilecond11 = icmp ne i1 %lttmp, false
  br i1 %whilecond11, label %whilebody12, label %afterwhile21

whilebody12:                                      ; preds = %whilecond8
  %copy13 = load i64, ptr %copy, align 4
  %i14 = load i64, ptr %i, align 4
  %s15 = load i64, ptr %s.addr, align 4
  %i16 = load i64, ptr %i, align 4
  %calltmp17 = call i64 @npk_mem_read_byte(i64 %s15, i64 %i16)
  %calltmp18 = call i32 @npk_mem_write_byte(i64 %copy13, i64 %i14, i64 %calltmp17)
  %i19 = load i64, ptr %i, align 4
  %addtmp20 = add i64 %i19, 1
  store i64 %addtmp20, ptr %i, align 4
  call void @npk_gc_safepoint()
  br label %whilecond8

afterwhile21:                                     ; preds = %whilecond8
  %copy22 = load i64, ptr %copy, align 4
  %len23 = load i64, ptr %len, align 4
  %calltmp24 = call i32 @npk_mem_write_byte(i64 %copy22, i64 %len23, i64 0)
  %copy25 = load i64, ptr %copy, align 4
  %result.val = insertvalue { i64, ptr, i8 } undef, i64 %copy25, 0
  %result.err = insertvalue { i64, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i64, ptr, i8 } %result.err, i8 0, 2
  ret { i64, ptr, i8 } %result.is_error
}

declare i64 @malloc(i64)

declare i32 @nitpick_libc_mem_free(i64)

declare ptr @npk_string_concat_simple(ptr, ptr)

declare ptr @npk_string_from_char_simple(i8)

declare void @npk_gc_safepoint()

define linkonce_odr i32 @__mem_utils_init() {
entry:
  ret i32 0
}

define linkonce_odr { i1, ptr, i8 } @string.str_match_at(ptr %haystack, i64 %pos, ptr %needle, i64 %h_len, i64 %n_len) {
entry:
  %pos.addr = alloca i64, align 8
  store i64 %pos, ptr %pos.addr, align 4
  %h_len.addr = alloca i64, align 8
  store i64 %h_len, ptr %h_len.addr, align 4
  %n_len.addr = alloca i64, align 8
  store i64 %n_len, ptr %n_len.addr, align 4
  %i = alloca i64, align 8
  store i64 0, ptr %i, align 4
  br label %whilecond

whilecond:                                        ; preds = %ifcont, %entry
  %i1 = load i64, ptr %i, align 4
  %n_len2 = load i64, ptr %n_len.addr, align 4
  %lttmp = icmp slt i64 %i1, %n_len2
  %whilecond3 = icmp ne i1 %lttmp, false
  br i1 %whilecond3, label %whilebody, label %afterwhile

whilebody:                                        ; preds = %whilecond
  %hb = alloca i32, align 4
  %pos4 = load i64, ptr %pos.addr, align 4
  %i5 = load i64, ptr %i, align 4
  %addtmp = add i64 %pos4, %i5
  %calltmp = call i32 @nitpick_libc_string_byte_at(ptr %haystack, i64 %addtmp)
  store i32 %calltmp, ptr %hb, align 4
  %nb = alloca i32, align 4
  %i6 = load i64, ptr %i, align 4
  %calltmp7 = call i32 @nitpick_libc_string_byte_at(ptr %needle, i64 %i6)
  store i32 %calltmp7, ptr %nb, align 4
  %hb8 = load i32, ptr %hb, align 4
  %nb9 = load i32, ptr %nb, align 4
  %netmp = icmp ne i32 %hb8, %nb9
  %ifcond = icmp ne i1 %netmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %whilebody
  ret { i1, ptr, i8 } zeroinitializer

ifcont:                                           ; preds = %whilebody
  %i10 = load i64, ptr %i, align 4
  %addtmp11 = add i64 %i10, 1
  store i64 %addtmp11, ptr %i, align 4
  call void @npk_gc_safepoint()
  br label %whilecond

afterwhile:                                       ; preds = %whilecond
  ret { i1, ptr, i8 } { i1 true, ptr null, i8 0 }
}

define linkonce_odr { i64, ptr, i8 } @string.str_count(ptr %haystack, ptr %needle) {
entry:
  %h_len = alloca i64, align 8
  %str = load %struct.NpkString, ptr %haystack, align 8
  %length = extractvalue %struct.NpkString %str, 1
  store i64 %length, ptr %h_len, align 4
  %n_len = alloca i64, align 8
  %str1 = load %struct.NpkString, ptr %needle, align 8
  %length2 = extractvalue %struct.NpkString %str1, 1
  store i64 %length2, ptr %n_len, align 4
  %n_len3 = load i64, ptr %n_len, align 4
  %eqtmp = icmp eq i64 %n_len3, 0
  %ifcond = icmp ne i1 %eqtmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %entry
  ret { i64, ptr, i8 } zeroinitializer

ifcont:                                           ; preds = %entry
  %n_len4 = load i64, ptr %n_len, align 4
  %h_len5 = load i64, ptr %h_len, align 4
  %gttmp = icmp sgt i64 %n_len4, %h_len5
  %ifcond6 = icmp ne i1 %gttmp, false
  br i1 %ifcond6, label %then7, label %ifcont8

then7:                                            ; preds = %ifcont
  ret { i64, ptr, i8 } zeroinitializer

ifcont8:                                          ; preds = %ifcont
  %count = alloca i64, align 8
  store i64 0, ptr %count, align 4
  %i = alloca i64, align 8
  store i64 0, ptr %i, align 4
  %lim = alloca i64, align 8
  %h_len9 = load i64, ptr %h_len, align 4
  %n_len10 = load i64, ptr %n_len, align 4
  %subtmp = sub i64 %h_len9, %n_len10
  store i64 %subtmp, ptr %lim, align 4
  br label %whilecond

whilecond:                                        ; preds = %ifcont27, %ifcont8
  %i11 = load i64, ptr %i, align 4
  %lim12 = load i64, ptr %lim, align 4
  %letmp = icmp sle i64 %i11, %lim12
  %whilecond13 = icmp ne i1 %letmp, false
  br i1 %whilecond13, label %whilebody, label %afterwhile

whilebody:                                        ; preds = %whilecond
  %m = alloca i1, align 1
  %i14 = load i64, ptr %i, align 4
  %h_len15 = load i64, ptr %h_len, align 4
  %n_len16 = load i64, ptr %n_len, align 4
  %calltmp = call { i1, ptr, i8 } @string.str_match_at(ptr %haystack, i64 %i14, ptr %needle, i64 %h_len15, i64 %n_len16)
  %raw.value = extractvalue { i1, ptr, i8 } %calltmp, 0
  store i1 %raw.value, ptr %m, align 1
  %m17 = load i1, ptr %m, align 1
  %eqtmp18 = icmp eq i1 %m17, true
  %ifcond19 = icmp ne i1 %eqtmp18, false
  br i1 %ifcond19, label %then20, label %else

then20:                                           ; preds = %whilebody
  %count21 = load i64, ptr %count, align 4
  %addtmp = add i64 %count21, 1
  store i64 %addtmp, ptr %count, align 4
  %i22 = load i64, ptr %i, align 4
  %n_len23 = load i64, ptr %n_len, align 4
  %addtmp24 = add i64 %i22, %n_len23
  store i64 %addtmp24, ptr %i, align 4
  br label %ifcont27

else:                                             ; preds = %whilebody
  %i25 = load i64, ptr %i, align 4
  %addtmp26 = add i64 %i25, 1
  store i64 %addtmp26, ptr %i, align 4
  br label %ifcont27

ifcont27:                                         ; preds = %else, %then20
  call void @npk_gc_safepoint()
  br label %whilecond

afterwhile:                                       ; preds = %whilecond
  %count28 = load i64, ptr %count, align 4
  %result.val = insertvalue { i64, ptr, i8 } undef, i64 %count28, 0
  %result.err = insertvalue { i64, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i64, ptr, i8 } %result.err, i8 0, 2
  ret { i64, ptr, i8 } %result.is_error
}

define linkonce_odr { ptr, ptr, i8 } @string.str_replace(ptr %src, ptr %old_s, ptr %new_s) {
entry:
  %src_len = alloca i64, align 8
  %str = load %struct.NpkString, ptr %src, align 8
  %length = extractvalue %struct.NpkString %str, 1
  store i64 %length, ptr %src_len, align 4
  %old_len = alloca i64, align 8
  %str1 = load %struct.NpkString, ptr %old_s, align 8
  %length2 = extractvalue %struct.NpkString %str1, 1
  store i64 %length2, ptr %old_len, align 4
  %new_len = alloca i64, align 8
  %str3 = load %struct.NpkString, ptr %new_s, align 8
  %length4 = extractvalue %struct.NpkString %str3, 1
  store i64 %length4, ptr %new_len, align 4
  %old_len5 = load i64, ptr %old_len, align 4
  %eqtmp = icmp eq i64 %old_len5, 0
  %ifcond = icmp ne i1 %eqtmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %entry
  %copy = alloca ptr, align 8
  %src_len6 = load i64, ptr %src_len, align 4
  %substr_result = call ptr @npk_string_substring_simple(ptr %src, i64 0, i64 %src_len6)
  store ptr %substr_result, ptr %copy, align 8
  %copy7 = load ptr, ptr %copy, align 8
  %result.val = insertvalue { ptr, ptr, i8 } undef, ptr %copy7, 0
  %result.err = insertvalue { ptr, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { ptr, ptr, i8 } %result.err, i8 0, 2
  ret { ptr, ptr, i8 } %result.is_error

ifcont:                                           ; preds = %entry
  %count = alloca i64, align 8
  %calltmp = call { i64, ptr, i8 } @string.str_count(ptr %src, ptr %old_s)
  %raw.value = extractvalue { i64, ptr, i8 } %calltmp, 0
  store i64 %raw.value, ptr %count, align 4
  %count8 = load i64, ptr %count, align 4
  %eqtmp9 = icmp eq i64 %count8, 0
  %ifcond10 = icmp ne i1 %eqtmp9, false
  br i1 %ifcond10, label %then11, label %ifcont19

then11:                                           ; preds = %ifcont
  %copy12 = alloca ptr, align 8
  %src_len13 = load i64, ptr %src_len, align 4
  %substr_result14 = call ptr @npk_string_substring_simple(ptr %src, i64 0, i64 %src_len13)
  store ptr %substr_result14, ptr %copy12, align 8
  %copy15 = load ptr, ptr %copy12, align 8
  %result.val16 = insertvalue { ptr, ptr, i8 } undef, ptr %copy15, 0
  %result.err17 = insertvalue { ptr, ptr, i8 } %result.val16, ptr null, 1
  %result.is_error18 = insertvalue { ptr, ptr, i8 } %result.err17, i8 0, 2
  ret { ptr, ptr, i8 } %result.is_error18

ifcont19:                                         ; preds = %ifcont
  %result_len = alloca i64, align 8
  %src_len20 = load i64, ptr %src_len, align 4
  %count21 = load i64, ptr %count, align 4
  %new_len22 = load i64, ptr %new_len, align 4
  %old_len23 = load i64, ptr %old_len, align 4
  %subtmp = sub i64 %new_len22, %old_len23
  %multmp = mul i64 %count21, %subtmp
  %addtmp = add i64 %src_len20, %multmp
  store i64 %addtmp, ptr %result_len, align 4
  %buf = alloca i64, align 8
  %result_len24 = load i64, ptr %result_len, align 4
  %addtmp25 = add i64 %result_len24, 1
  %calltmp26 = call i64 @nitpick_libc_mem_malloc(i64 %addtmp25)
  store i64 %calltmp26, ptr %buf, align 4
  %pos = alloca i64, align 8
  store i64 0, ptr %pos, align 4
  %i = alloca i64, align 8
  store i64 0, ptr %i, align 4
  %lim = alloca i64, align 8
  %src_len27 = load i64, ptr %src_len, align 4
  %old_len28 = load i64, ptr %old_len, align 4
  %subtmp29 = sub i64 %src_len27, %old_len28
  store i64 %subtmp29, ptr %lim, align 4
  br label %whilecond

whilecond:                                        ; preds = %ifcont83, %ifcont19
  %i30 = load i64, ptr %i, align 4
  %src_len31 = load i64, ptr %src_len, align 4
  %lttmp = icmp slt i64 %i30, %src_len31
  %whilecond32 = icmp ne i1 %lttmp, false
  br i1 %whilecond32, label %whilebody, label %afterwhile

whilebody:                                        ; preds = %whilecond
  %i33 = load i64, ptr %i, align 4
  %lim34 = load i64, ptr %lim, align 4
  %letmp = icmp sle i64 %i33, %lim34
  %ifcond35 = icmp ne i1 %letmp, false
  br i1 %ifcond35, label %then36, label %else71

then36:                                           ; preds = %whilebody
  %m = alloca i1, align 1
  %i37 = load i64, ptr %i, align 4
  %src_len38 = load i64, ptr %src_len, align 4
  %old_len39 = load i64, ptr %old_len, align 4
  %calltmp40 = call { i1, ptr, i8 } @string.str_match_at(ptr %src, i64 %i37, ptr %old_s, i64 %src_len38, i64 %old_len39)
  %raw.value41 = extractvalue { i1, ptr, i8 } %calltmp40, 0
  store i1 %raw.value41, ptr %m, align 1
  %m42 = load i1, ptr %m, align 1
  %eqtmp43 = icmp eq i1 %m42, true
  %ifcond44 = icmp ne i1 %eqtmp43, false
  br i1 %ifcond44, label %then45, label %else

then45:                                           ; preds = %then36
  %new_len46 = load i64, ptr %new_len, align 4
  %gttmp = icmp sgt i64 %new_len46, 0
  %ifcond47 = icmp ne i1 %gttmp, false
  br i1 %ifcond47, label %then48, label %ifcont56

then48:                                           ; preds = %then45
  %buf49 = load i64, ptr %buf, align 4
  %pos50 = load i64, ptr %pos, align 4
  %new_len51 = load i64, ptr %new_len, align 4
  %calltmp52 = call i32 @nitpick_libc_string_copy_to_buf(i64 %buf49, i64 %pos50, ptr %new_s, i64 0, i64 %new_len51)
  %pos53 = load i64, ptr %pos, align 4
  %new_len54 = load i64, ptr %new_len, align 4
  %addtmp55 = add i64 %pos53, %new_len54
  store i64 %addtmp55, ptr %pos, align 4
  br label %ifcont56

ifcont56:                                         ; preds = %then48, %then45
  %i57 = load i64, ptr %i, align 4
  %old_len58 = load i64, ptr %old_len, align 4
  %addtmp59 = add i64 %i57, %old_len58
  store i64 %addtmp59, ptr %i, align 4
  br label %ifcont70

else:                                             ; preds = %then36
  %b = alloca i32, align 4
  %i60 = load i64, ptr %i, align 4
  %calltmp61 = call i32 @nitpick_libc_string_byte_at(ptr %src, i64 %i60)
  store i32 %calltmp61, ptr %b, align 4
  %buf62 = load i64, ptr %buf, align 4
  %pos63 = load i64, ptr %pos, align 4
  %b64 = load i32, ptr %b, align 4
  %calltmp65 = call i32 @nitpick_libc_mem_write_byte(i64 %buf62, i64 %pos63, i32 %b64)
  %pos66 = load i64, ptr %pos, align 4
  %addtmp67 = add i64 %pos66, 1
  store i64 %addtmp67, ptr %pos, align 4
  %i68 = load i64, ptr %i, align 4
  %addtmp69 = add i64 %i68, 1
  store i64 %addtmp69, ptr %i, align 4
  br label %ifcont70

ifcont70:                                         ; preds = %else, %ifcont56
  br label %ifcont83

else71:                                           ; preds = %whilebody
  %b72 = alloca i32, align 4
  %i73 = load i64, ptr %i, align 4
  %calltmp74 = call i32 @nitpick_libc_string_byte_at(ptr %src, i64 %i73)
  store i32 %calltmp74, ptr %b72, align 4
  %buf75 = load i64, ptr %buf, align 4
  %pos76 = load i64, ptr %pos, align 4
  %b77 = load i32, ptr %b72, align 4
  %calltmp78 = call i32 @nitpick_libc_mem_write_byte(i64 %buf75, i64 %pos76, i32 %b77)
  %pos79 = load i64, ptr %pos, align 4
  %addtmp80 = add i64 %pos79, 1
  store i64 %addtmp80, ptr %pos, align 4
  %i81 = load i64, ptr %i, align 4
  %addtmp82 = add i64 %i81, 1
  store i64 %addtmp82, ptr %i, align 4
  br label %ifcont83

ifcont83:                                         ; preds = %else71, %ifcont70
  call void @npk_gc_safepoint()
  br label %whilecond

afterwhile:                                       ; preds = %whilecond
  %buf84 = load i64, ptr %buf, align 4
  %result_len85 = load i64, ptr %result_len, align 4
  %calltmp86 = call i32 @nitpick_libc_mem_write_byte(i64 %buf84, i64 %result_len85, i32 0)
  %result = alloca ptr, align 8
  %buf87 = load i64, ptr %buf, align 4
  %result_len88 = load i64, ptr %result_len, align 4
  %calltmp89 = call ptr @nitpick_libc_string_from_buf(i64 %buf87, i64 0, i64 %result_len88)
  %ffi_strlen = call i64 @strlen(ptr %calltmp89)
  %ffi_str_gc = call ptr @npk_gc_alloc(i64 16)
  %ffi_data_sz = add i64 %ffi_strlen, 1
  %ffi_data_gc = call ptr @npk_gc_alloc(i64 %ffi_data_sz)
  %0 = call ptr @memcpy(ptr %ffi_data_gc, ptr %calltmp89, i64 %ffi_data_sz)
  %ffi_str_data = getelementptr inbounds nuw %struct.NpkString, ptr %ffi_str_gc, i32 0, i32 0
  store ptr %ffi_data_gc, ptr %ffi_str_data, align 8
  %ffi_str_len = getelementptr inbounds nuw %struct.NpkString, ptr %ffi_str_gc, i32 0, i32 1
  store i64 %ffi_strlen, ptr %ffi_str_len, align 4
  store ptr %ffi_str_gc, ptr %result, align 8
  %buf90 = load i64, ptr %buf, align 4
  %calltmp91 = call i32 @nitpick_libc_mem_free(i64 %buf90)
  %result92 = load ptr, ptr %result, align 8
  %result.val93 = insertvalue { ptr, ptr, i8 } undef, ptr %result92, 0
  %result.err94 = insertvalue { ptr, ptr, i8 } %result.val93, ptr null, 1
  %result.is_error95 = insertvalue { ptr, ptr, i8 } %result.err94, i8 0, 2
  ret { ptr, ptr, i8 } %result.is_error95
}

define linkonce_odr { ptr, ptr, i8 } @string.str_replace_first(ptr %src, ptr %old_s, ptr %new_s) {
entry:
  %src_len = alloca i64, align 8
  %str = load %struct.NpkString, ptr %src, align 8
  %length = extractvalue %struct.NpkString %str, 1
  store i64 %length, ptr %src_len, align 4
  %old_len = alloca i64, align 8
  %str1 = load %struct.NpkString, ptr %old_s, align 8
  %length2 = extractvalue %struct.NpkString %str1, 1
  store i64 %length2, ptr %old_len, align 4
  %new_len = alloca i64, align 8
  %str3 = load %struct.NpkString, ptr %new_s, align 8
  %length4 = extractvalue %struct.NpkString %str3, 1
  store i64 %length4, ptr %new_len, align 4
  %old_len5 = load i64, ptr %old_len, align 4
  %eqtmp = icmp eq i64 %old_len5, 0
  %ifcond = icmp ne i1 %eqtmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %entry
  %copy = alloca ptr, align 8
  %src_len6 = load i64, ptr %src_len, align 4
  %substr_result = call ptr @npk_string_substring_simple(ptr %src, i64 0, i64 %src_len6)
  store ptr %substr_result, ptr %copy, align 8
  %copy7 = load ptr, ptr %copy, align 8
  %result.val = insertvalue { ptr, ptr, i8 } undef, ptr %copy7, 0
  %result.err = insertvalue { ptr, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { ptr, ptr, i8 } %result.err, i8 0, 2
  ret { ptr, ptr, i8 } %result.is_error

ifcont:                                           ; preds = %entry
  %found = alloca i64, align 8
  store i64 -1, ptr %found, align 4
  %lim = alloca i64, align 8
  %src_len8 = load i64, ptr %src_len, align 4
  %old_len9 = load i64, ptr %old_len, align 4
  %subtmp = sub i64 %src_len8, %old_len9
  store i64 %subtmp, ptr %lim, align 4
  %i = alloca i64, align 8
  store i64 0, ptr %i, align 4
  br label %whilecond

whilecond:                                        ; preds = %ifcont24, %ifcont
  %i10 = load i64, ptr %i, align 4
  %lim11 = load i64, ptr %lim, align 4
  %letmp = icmp sle i64 %i10, %lim11
  %whilecond12 = icmp ne i1 %letmp, false
  br i1 %whilecond12, label %whilebody, label %afterwhile

whilebody:                                        ; preds = %whilecond
  %m = alloca i1, align 1
  %i13 = load i64, ptr %i, align 4
  %src_len14 = load i64, ptr %src_len, align 4
  %old_len15 = load i64, ptr %old_len, align 4
  %calltmp = call { i1, ptr, i8 } @string.str_match_at(ptr %src, i64 %i13, ptr %old_s, i64 %src_len14, i64 %old_len15)
  %raw.value = extractvalue { i1, ptr, i8 } %calltmp, 0
  store i1 %raw.value, ptr %m, align 1
  %m16 = load i1, ptr %m, align 1
  %eqtmp17 = icmp eq i1 %m16, true
  %ifcond18 = icmp ne i1 %eqtmp17, false
  br i1 %ifcond18, label %then19, label %else

then19:                                           ; preds = %whilebody
  %i20 = load i64, ptr %i, align 4
  store i64 %i20, ptr %found, align 4
  %lim21 = load i64, ptr %lim, align 4
  %addtmp = add i64 %lim21, 1
  store i64 %addtmp, ptr %i, align 4
  br label %ifcont24

else:                                             ; preds = %whilebody
  %i22 = load i64, ptr %i, align 4
  %addtmp23 = add i64 %i22, 1
  store i64 %addtmp23, ptr %i, align 4
  br label %ifcont24

ifcont24:                                         ; preds = %else, %then19
  call void @npk_gc_safepoint()
  br label %whilecond

afterwhile:                                       ; preds = %whilecond
  %found25 = load i64, ptr %found, align 4
  %eqtmp26 = icmp eq i64 %found25, -1
  %ifcond27 = icmp ne i1 %eqtmp26, false
  br i1 %ifcond27, label %then28, label %ifcont36

then28:                                           ; preds = %afterwhile
  %copy29 = alloca ptr, align 8
  %src_len30 = load i64, ptr %src_len, align 4
  %substr_result31 = call ptr @npk_string_substring_simple(ptr %src, i64 0, i64 %src_len30)
  store ptr %substr_result31, ptr %copy29, align 8
  %copy32 = load ptr, ptr %copy29, align 8
  %result.val33 = insertvalue { ptr, ptr, i8 } undef, ptr %copy32, 0
  %result.err34 = insertvalue { ptr, ptr, i8 } %result.val33, ptr null, 1
  %result.is_error35 = insertvalue { ptr, ptr, i8 } %result.err34, i8 0, 2
  ret { ptr, ptr, i8 } %result.is_error35

ifcont36:                                         ; preds = %afterwhile
  %result_len = alloca i64, align 8
  %src_len37 = load i64, ptr %src_len, align 4
  %new_len38 = load i64, ptr %new_len, align 4
  %old_len39 = load i64, ptr %old_len, align 4
  %subtmp40 = sub i64 %new_len38, %old_len39
  %addtmp41 = add i64 %src_len37, %subtmp40
  store i64 %addtmp41, ptr %result_len, align 4
  %buf = alloca i64, align 8
  %result_len42 = load i64, ptr %result_len, align 4
  %addtmp43 = add i64 %result_len42, 1
  %calltmp44 = call i64 @nitpick_libc_mem_malloc(i64 %addtmp43)
  store i64 %calltmp44, ptr %buf, align 4
  %found45 = load i64, ptr %found, align 4
  %gttmp = icmp sgt i64 %found45, 0
  %ifcond46 = icmp ne i1 %gttmp, false
  br i1 %ifcond46, label %then47, label %ifcont51

then47:                                           ; preds = %ifcont36
  %buf48 = load i64, ptr %buf, align 4
  %found49 = load i64, ptr %found, align 4
  %calltmp50 = call i32 @nitpick_libc_string_copy_to_buf(i64 %buf48, i64 0, ptr %src, i64 0, i64 %found49)
  br label %ifcont51

ifcont51:                                         ; preds = %then47, %ifcont36
  %new_len52 = load i64, ptr %new_len, align 4
  %gttmp53 = icmp sgt i64 %new_len52, 0
  %ifcond54 = icmp ne i1 %gttmp53, false
  br i1 %ifcond54, label %then55, label %ifcont60

then55:                                           ; preds = %ifcont51
  %buf56 = load i64, ptr %buf, align 4
  %found57 = load i64, ptr %found, align 4
  %new_len58 = load i64, ptr %new_len, align 4
  %calltmp59 = call i32 @nitpick_libc_string_copy_to_buf(i64 %buf56, i64 %found57, ptr %new_s, i64 0, i64 %new_len58)
  br label %ifcont60

ifcont60:                                         ; preds = %then55, %ifcont51
  %suffix_start = alloca i64, align 8
  %found61 = load i64, ptr %found, align 4
  %old_len62 = load i64, ptr %old_len, align 4
  %addtmp63 = add i64 %found61, %old_len62
  store i64 %addtmp63, ptr %suffix_start, align 4
  %suffix_len = alloca i64, align 8
  %src_len64 = load i64, ptr %src_len, align 4
  %suffix_start65 = load i64, ptr %suffix_start, align 4
  %subtmp66 = sub i64 %src_len64, %suffix_start65
  store i64 %subtmp66, ptr %suffix_len, align 4
  %suffix_len67 = load i64, ptr %suffix_len, align 4
  %gttmp68 = icmp sgt i64 %suffix_len67, 0
  %ifcond69 = icmp ne i1 %gttmp68, false
  br i1 %ifcond69, label %then70, label %ifcont78

then70:                                           ; preds = %ifcont60
  %buf71 = load i64, ptr %buf, align 4
  %found72 = load i64, ptr %found, align 4
  %new_len73 = load i64, ptr %new_len, align 4
  %addtmp74 = add i64 %found72, %new_len73
  %suffix_start75 = load i64, ptr %suffix_start, align 4
  %suffix_len76 = load i64, ptr %suffix_len, align 4
  %calltmp77 = call i32 @nitpick_libc_string_copy_to_buf(i64 %buf71, i64 %addtmp74, ptr %src, i64 %suffix_start75, i64 %suffix_len76)
  br label %ifcont78

ifcont78:                                         ; preds = %then70, %ifcont60
  %buf79 = load i64, ptr %buf, align 4
  %result_len80 = load i64, ptr %result_len, align 4
  %calltmp81 = call i32 @nitpick_libc_mem_write_byte(i64 %buf79, i64 %result_len80, i32 0)
  %result = alloca ptr, align 8
  %buf82 = load i64, ptr %buf, align 4
  %result_len83 = load i64, ptr %result_len, align 4
  %calltmp84 = call ptr @nitpick_libc_string_from_buf(i64 %buf82, i64 0, i64 %result_len83)
  %ffi_strlen = call i64 @strlen(ptr %calltmp84)
  %ffi_str_gc = call ptr @npk_gc_alloc(i64 16)
  %ffi_data_sz = add i64 %ffi_strlen, 1
  %ffi_data_gc = call ptr @npk_gc_alloc(i64 %ffi_data_sz)
  %0 = call ptr @memcpy(ptr %ffi_data_gc, ptr %calltmp84, i64 %ffi_data_sz)
  %ffi_str_data = getelementptr inbounds nuw %struct.NpkString, ptr %ffi_str_gc, i32 0, i32 0
  store ptr %ffi_data_gc, ptr %ffi_str_data, align 8
  %ffi_str_len = getelementptr inbounds nuw %struct.NpkString, ptr %ffi_str_gc, i32 0, i32 1
  store i64 %ffi_strlen, ptr %ffi_str_len, align 4
  store ptr %ffi_str_gc, ptr %result, align 8
  %buf85 = load i64, ptr %buf, align 4
  %calltmp86 = call i32 @nitpick_libc_mem_free(i64 %buf85)
  %result87 = load ptr, ptr %result, align 8
  %result.val88 = insertvalue { ptr, ptr, i8 } undef, ptr %result87, 0
  %result.err89 = insertvalue { ptr, ptr, i8 } %result.val88, ptr null, 1
  %result.is_error90 = insertvalue { ptr, ptr, i8 } %result.err89, i8 0, 2
  ret { ptr, ptr, i8 } %result.is_error90
}

define linkonce_odr { i64, ptr, i8 } @string.str_byte_at(ptr %s, i64 %idx) {
entry:
  %idx.addr = alloca i64, align 8
  store i64 %idx, ptr %idx.addr, align 4
  %len = alloca i64, align 8
  %str = load %struct.NpkString, ptr %s, align 8
  %length = extractvalue %struct.NpkString %str, 1
  store i64 %length, ptr %len, align 4
  %idx1 = load i64, ptr %idx.addr, align 4
  %lttmp = icmp slt i64 %idx1, 0
  %ifcond = icmp ne i1 %lttmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %entry
  ret { i64, ptr, i8 } { i64 -1, ptr null, i8 0 }

ifcont:                                           ; preds = %entry
  %idx2 = load i64, ptr %idx.addr, align 4
  %len3 = load i64, ptr %len, align 4
  %getmp = icmp sge i64 %idx2, %len3
  %ifcond4 = icmp ne i1 %getmp, false
  br i1 %ifcond4, label %then5, label %ifcont6

then5:                                            ; preds = %ifcont
  ret { i64, ptr, i8 } { i64 -1, ptr null, i8 0 }

ifcont6:                                          ; preds = %ifcont
  %b = alloca i32, align 4
  %idx7 = load i64, ptr %idx.addr, align 4
  %calltmp = call i32 @nitpick_libc_string_byte_at(ptr %s, i64 %idx7)
  store i32 %calltmp, ptr %b, align 4
  %b8 = load i32, ptr %b, align 4
  %cast.sext = sext i32 %b8 to i64
  %result.val = insertvalue { i64, ptr, i8 } undef, i64 %cast.sext, 0
  %result.err = insertvalue { i64, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i64, ptr, i8 } %result.err, i8 0, 2
  ret { i64, ptr, i8 } %result.is_error
}

define linkonce_odr { ptr, ptr, i8 } @string.str_char_at(ptr %s, i64 %idx) {
entry:
  %idx.addr = alloca i64, align 8
  store i64 %idx, ptr %idx.addr, align 4
  %len = alloca i64, align 8
  %str = load %struct.NpkString, ptr %s, align 8
  %length = extractvalue %struct.NpkString %str, 1
  store i64 %length, ptr %len, align 4
  %idx1 = load i64, ptr %idx.addr, align 4
  %lttmp = icmp slt i64 %idx1, 0
  %ifcond = icmp ne i1 %lttmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %entry
  ret { ptr, ptr, i8 } { ptr @.str.2, ptr null, i8 0 }

ifcont:                                           ; preds = %entry
  %idx2 = load i64, ptr %idx.addr, align 4
  %len3 = load i64, ptr %len, align 4
  %getmp = icmp sge i64 %idx2, %len3
  %ifcond4 = icmp ne i1 %getmp, false
  br i1 %ifcond4, label %then5, label %ifcont6

then5:                                            ; preds = %ifcont
  ret { ptr, ptr, i8 } { ptr @.str.4, ptr null, i8 0 }

ifcont6:                                          ; preds = %ifcont
  %ch = alloca ptr, align 8
  %idx7 = load i64, ptr %idx.addr, align 4
  %idx8 = load i64, ptr %idx.addr, align 4
  %addtmp = add i64 %idx8, 1
  %substr_result = call ptr @npk_string_substring_simple(ptr %s, i64 %idx7, i64 %addtmp)
  store ptr %substr_result, ptr %ch, align 8
  %ch9 = load ptr, ptr %ch, align 8
  %result.val = insertvalue { ptr, ptr, i8 } undef, ptr %ch9, 0
  %result.err = insertvalue { ptr, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { ptr, ptr, i8 } %result.err, i8 0, 2
  ret { ptr, ptr, i8 } %result.is_error
}

define linkonce_odr { ptr, ptr, i8 } @string.str_reverse(ptr %s) {
entry:
  %len = alloca i64, align 8
  %str = load %struct.NpkString, ptr %s, align 8
  %length = extractvalue %struct.NpkString %str, 1
  store i64 %length, ptr %len, align 4
  %len1 = load i64, ptr %len, align 4
  %letmp = icmp sle i64 %len1, 1
  %ifcond = icmp ne i1 %letmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %entry
  %copy = alloca ptr, align 8
  %len2 = load i64, ptr %len, align 4
  %substr_result = call ptr @npk_string_substring_simple(ptr %s, i64 0, i64 %len2)
  store ptr %substr_result, ptr %copy, align 8
  %copy3 = load ptr, ptr %copy, align 8
  %result.val = insertvalue { ptr, ptr, i8 } undef, ptr %copy3, 0
  %result.err = insertvalue { ptr, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { ptr, ptr, i8 } %result.err, i8 0, 2
  ret { ptr, ptr, i8 } %result.is_error

ifcont:                                           ; preds = %entry
  %buf = alloca i64, align 8
  %len4 = load i64, ptr %len, align 4
  %addtmp = add i64 %len4, 1
  %calltmp = call i64 @nitpick_libc_mem_malloc(i64 %addtmp)
  store i64 %calltmp, ptr %buf, align 4
  %i = alloca i64, align 8
  store i64 0, ptr %i, align 4
  br label %whilecond

whilecond:                                        ; preds = %whilebody, %ifcont
  %i5 = load i64, ptr %i, align 4
  %len6 = load i64, ptr %len, align 4
  %lttmp = icmp slt i64 %i5, %len6
  %whilecond7 = icmp ne i1 %lttmp, false
  br i1 %whilecond7, label %whilebody, label %afterwhile

whilebody:                                        ; preds = %whilecond
  %b = alloca i32, align 4
  %len8 = load i64, ptr %len, align 4
  %subtmp = sub i64 %len8, 1
  %i9 = load i64, ptr %i, align 4
  %subtmp10 = sub i64 %subtmp, %i9
  %calltmp11 = call i32 @nitpick_libc_string_byte_at(ptr %s, i64 %subtmp10)
  store i32 %calltmp11, ptr %b, align 4
  %buf12 = load i64, ptr %buf, align 4
  %i13 = load i64, ptr %i, align 4
  %b14 = load i32, ptr %b, align 4
  %calltmp15 = call i32 @nitpick_libc_mem_write_byte(i64 %buf12, i64 %i13, i32 %b14)
  %i16 = load i64, ptr %i, align 4
  %addtmp17 = add i64 %i16, 1
  store i64 %addtmp17, ptr %i, align 4
  call void @npk_gc_safepoint()
  br label %whilecond

afterwhile:                                       ; preds = %whilecond
  %buf18 = load i64, ptr %buf, align 4
  %len19 = load i64, ptr %len, align 4
  %calltmp20 = call i32 @nitpick_libc_mem_write_byte(i64 %buf18, i64 %len19, i32 0)
  %result = alloca ptr, align 8
  %buf21 = load i64, ptr %buf, align 4
  %len22 = load i64, ptr %len, align 4
  %calltmp23 = call ptr @nitpick_libc_string_from_buf(i64 %buf21, i64 0, i64 %len22)
  %ffi_strlen = call i64 @strlen(ptr %calltmp23)
  %ffi_str_gc = call ptr @npk_gc_alloc(i64 16)
  %ffi_data_sz = add i64 %ffi_strlen, 1
  %ffi_data_gc = call ptr @npk_gc_alloc(i64 %ffi_data_sz)
  %0 = call ptr @memcpy(ptr %ffi_data_gc, ptr %calltmp23, i64 %ffi_data_sz)
  %ffi_str_data = getelementptr inbounds nuw %struct.NpkString, ptr %ffi_str_gc, i32 0, i32 0
  store ptr %ffi_data_gc, ptr %ffi_str_data, align 8
  %ffi_str_len = getelementptr inbounds nuw %struct.NpkString, ptr %ffi_str_gc, i32 0, i32 1
  store i64 %ffi_strlen, ptr %ffi_str_len, align 4
  store ptr %ffi_str_gc, ptr %result, align 8
  %buf24 = load i64, ptr %buf, align 4
  %calltmp25 = call i32 @nitpick_libc_mem_free(i64 %buf24)
  %result26 = load ptr, ptr %result, align 8
  %result.val27 = insertvalue { ptr, ptr, i8 } undef, ptr %result26, 0
  %result.err28 = insertvalue { ptr, ptr, i8 } %result.val27, ptr null, 1
  %result.is_error29 = insertvalue { ptr, ptr, i8 } %result.err28, i8 0, 2
  ret { ptr, ptr, i8 } %result.is_error29
}

define linkonce_odr { i64, ptr, i8 } @string.str_to_int(ptr %s) {
entry:
  %r = alloca i64, align 8
  %calltmp = call i64 @nitpick_libc_string_atoi(ptr %s)
  store i64 %calltmp, ptr %r, align 4
  %r1 = load i64, ptr %r, align 4
  %result.val = insertvalue { i64, ptr, i8 } undef, i64 %r1, 0
  %result.err = insertvalue { i64, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i64, ptr, i8 } %result.err, i8 0, 2
  ret { i64, ptr, i8 } %result.is_error
}

define linkonce_odr { i64, ptr, i8 } @string.str_split(ptr %s, ptr %delim) {
entry:
  %s_len = alloca i64, align 8
  %str = load %struct.NpkString, ptr %s, align 8
  %length = extractvalue %struct.NpkString %str, 1
  store i64 %length, ptr %s_len, align 4
  %d_len = alloca i64, align 8
  %str1 = load %struct.NpkString, ptr %delim, align 8
  %length2 = extractvalue %struct.NpkString %str1, 1
  store i64 %length2, ptr %d_len, align 4
  %h = alloca i64, align 8
  %calltmp = call i64 @nitpick_libc_mem_malloc(i64 16)
  store i64 %calltmp, ptr %h, align 4
  %h3 = load i64, ptr %h, align 4
  %calltmp4 = call i32 @nitpick_libc_mem_write_i64(i64 %h3, i64 0, i64 0)
  %h5 = load i64, ptr %h, align 4
  %calltmp6 = call i32 @nitpick_libc_mem_write_i64(i64 %h5, i64 8, i64 0)
  %s_len7 = load i64, ptr %s_len, align 4
  %eqtmp = icmp eq i64 %s_len7, 0
  %ifcond = icmp ne i1 %eqtmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %entry
  %h8 = load i64, ptr %h, align 4
  %result.val = insertvalue { i64, ptr, i8 } undef, i64 %h8, 0
  %result.err = insertvalue { i64, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i64, ptr, i8 } %result.err, i8 0, 2
  ret { i64, ptr, i8 } %result.is_error

ifcont:                                           ; preds = %entry
  %d_len9 = load i64, ptr %d_len, align 4
  %eqtmp10 = icmp eq i64 %d_len9, 0
  %ifcond11 = icmp ne i1 %eqtmp10, false
  br i1 %ifcond11, label %then12, label %ifcont47

then12:                                           ; preds = %ifcont
  %parts = alloca i64, align 8
  %s_len13 = load i64, ptr %s_len, align 4
  %multmp = mul i64 %s_len13, 16
  %calltmp14 = call i64 @nitpick_libc_mem_malloc(i64 %multmp)
  store i64 %calltmp14, ptr %parts, align 4
  %ci = alloca i64, align 8
  store i64 0, ptr %ci, align 4
  br label %whilecond

whilecond:                                        ; preds = %whilebody, %then12
  %ci15 = load i64, ptr %ci, align 4
  %s_len16 = load i64, ptr %s_len, align 4
  %lttmp = icmp slt i64 %ci15, %s_len16
  %whilecond17 = icmp ne i1 %lttmp, false
  br i1 %whilecond17, label %whilebody, label %afterwhile

whilebody:                                        ; preds = %whilecond
  %part_buf = alloca i64, align 8
  %calltmp18 = call i64 @nitpick_libc_mem_malloc(i64 2)
  store i64 %calltmp18, ptr %part_buf, align 4
  %byte_val = alloca i32, align 4
  %ci19 = load i64, ptr %ci, align 4
  %calltmp20 = call i32 @nitpick_libc_string_byte_at(ptr %s, i64 %ci19)
  store i32 %calltmp20, ptr %byte_val, align 4
  %part_buf21 = load i64, ptr %part_buf, align 4
  %byte_val22 = load i32, ptr %byte_val, align 4
  %calltmp23 = call i32 @nitpick_libc_mem_write_byte(i64 %part_buf21, i64 0, i32 %byte_val22)
  %part_buf24 = load i64, ptr %part_buf, align 4
  %calltmp25 = call i32 @nitpick_libc_mem_write_byte(i64 %part_buf24, i64 1, i32 0)
  %parts26 = load i64, ptr %parts, align 4
  %ci27 = load i64, ptr %ci, align 4
  %multmp28 = mul i64 %ci27, 16
  %part_buf29 = load i64, ptr %part_buf, align 4
  %calltmp30 = call i32 @nitpick_libc_mem_write_i64(i64 %parts26, i64 %multmp28, i64 %part_buf29)
  %parts31 = load i64, ptr %parts, align 4
  %ci32 = load i64, ptr %ci, align 4
  %multmp33 = mul i64 %ci32, 16
  %addtmp = add i64 %multmp33, 8
  %calltmp34 = call i32 @nitpick_libc_mem_write_i64(i64 %parts31, i64 %addtmp, i64 1)
  %ci35 = load i64, ptr %ci, align 4
  %addtmp36 = add i64 %ci35, 1
  store i64 %addtmp36, ptr %ci, align 4
  call void @npk_gc_safepoint()
  br label %whilecond

afterwhile:                                       ; preds = %whilecond
  %h37 = load i64, ptr %h, align 4
  %parts38 = load i64, ptr %parts, align 4
  %calltmp39 = call i32 @nitpick_libc_mem_write_i64(i64 %h37, i64 0, i64 %parts38)
  %h40 = load i64, ptr %h, align 4
  %s_len41 = load i64, ptr %s_len, align 4
  %calltmp42 = call i32 @nitpick_libc_mem_write_i64(i64 %h40, i64 8, i64 %s_len41)
  %h43 = load i64, ptr %h, align 4
  %result.val44 = insertvalue { i64, ptr, i8 } undef, i64 %h43, 0
  %result.err45 = insertvalue { i64, ptr, i8 } %result.val44, ptr null, 1
  %result.is_error46 = insertvalue { i64, ptr, i8 } %result.err45, i8 0, 2
  ret { i64, ptr, i8 } %result.is_error46

ifcont47:                                         ; preds = %ifcont
  %count = alloca i64, align 8
  store i64 1, ptr %count, align 4
  %i = alloca i64, align 8
  store i64 0, ptr %i, align 4
  %lim = alloca i64, align 8
  %s_len48 = load i64, ptr %s_len, align 4
  %d_len49 = load i64, ptr %d_len, align 4
  %subtmp = sub i64 %s_len48, %d_len49
  store i64 %subtmp, ptr %lim, align 4
  br label %whilecond50

whilecond50:                                      ; preds = %ifcont70, %ifcont47
  %i51 = load i64, ptr %i, align 4
  %lim52 = load i64, ptr %lim, align 4
  %letmp = icmp sle i64 %i51, %lim52
  %whilecond53 = icmp ne i1 %letmp, false
  br i1 %whilecond53, label %whilebody54, label %afterwhile71

whilebody54:                                      ; preds = %whilecond50
  %m = alloca i1, align 1
  %i55 = load i64, ptr %i, align 4
  %s_len56 = load i64, ptr %s_len, align 4
  %d_len57 = load i64, ptr %d_len, align 4
  %calltmp58 = call { i1, ptr, i8 } @string.str_match_at(ptr %s, i64 %i55, ptr %delim, i64 %s_len56, i64 %d_len57)
  %raw.value = extractvalue { i1, ptr, i8 } %calltmp58, 0
  store i1 %raw.value, ptr %m, align 1
  %m59 = load i1, ptr %m, align 1
  %eqtmp60 = icmp eq i1 %m59, true
  %ifcond61 = icmp ne i1 %eqtmp60, false
  br i1 %ifcond61, label %then62, label %else

then62:                                           ; preds = %whilebody54
  %count63 = load i64, ptr %count, align 4
  %addtmp64 = add i64 %count63, 1
  store i64 %addtmp64, ptr %count, align 4
  %i65 = load i64, ptr %i, align 4
  %d_len66 = load i64, ptr %d_len, align 4
  %addtmp67 = add i64 %i65, %d_len66
  store i64 %addtmp67, ptr %i, align 4
  br label %ifcont70

else:                                             ; preds = %whilebody54
  %i68 = load i64, ptr %i, align 4
  %addtmp69 = add i64 %i68, 1
  store i64 %addtmp69, ptr %i, align 4
  br label %ifcont70

ifcont70:                                         ; preds = %else, %then62
  call void @npk_gc_safepoint()
  br label %whilecond50

afterwhile71:                                     ; preds = %whilecond50
  %parts72 = alloca i64, align 8
  %count73 = load i64, ptr %count, align 4
  %multmp74 = mul i64 %count73, 16
  %calltmp75 = call i64 @nitpick_libc_mem_malloc(i64 %multmp74)
  store i64 %calltmp75, ptr %parts72, align 4
  %part_idx = alloca i64, align 8
  store i64 0, ptr %part_idx, align 4
  %start = alloca i64, align 8
  store i64 0, ptr %start, align 4
  store i64 0, ptr %i, align 4
  br label %whilecond76

whilecond76:                                      ; preds = %ifcont131, %afterwhile71
  %i77 = load i64, ptr %i, align 4
  %lim78 = load i64, ptr %lim, align 4
  %letmp79 = icmp sle i64 %i77, %lim78
  %whilecond80 = icmp ne i1 %letmp79, false
  br i1 %whilecond80, label %whilebody81, label %afterwhile132

whilebody81:                                      ; preds = %whilecond76
  %m82 = alloca i1, align 1
  %i83 = load i64, ptr %i, align 4
  %s_len84 = load i64, ptr %s_len, align 4
  %d_len85 = load i64, ptr %d_len, align 4
  %calltmp86 = call { i1, ptr, i8 } @string.str_match_at(ptr %s, i64 %i83, ptr %delim, i64 %s_len84, i64 %d_len85)
  %raw.value87 = extractvalue { i1, ptr, i8 } %calltmp86, 0
  store i1 %raw.value87, ptr %m82, align 1
  %m88 = load i1, ptr %m82, align 1
  %eqtmp89 = icmp eq i1 %m88, true
  %ifcond90 = icmp ne i1 %eqtmp89, false
  br i1 %ifcond90, label %then91, label %else128

then91:                                           ; preds = %whilebody81
  %plen = alloca i64, align 8
  %i92 = load i64, ptr %i, align 4
  %start93 = load i64, ptr %start, align 4
  %subtmp94 = sub i64 %i92, %start93
  store i64 %subtmp94, ptr %plen, align 4
  %pbuf = alloca i64, align 8
  %plen95 = load i64, ptr %plen, align 4
  %addtmp96 = add i64 %plen95, 1
  %calltmp97 = call i64 @nitpick_libc_mem_malloc(i64 %addtmp96)
  store i64 %calltmp97, ptr %pbuf, align 4
  %plen98 = load i64, ptr %plen, align 4
  %gttmp = icmp sgt i64 %plen98, 0
  %ifcond99 = icmp ne i1 %gttmp, false
  br i1 %ifcond99, label %then100, label %ifcont105

then100:                                          ; preds = %then91
  %pbuf101 = load i64, ptr %pbuf, align 4
  %start102 = load i64, ptr %start, align 4
  %plen103 = load i64, ptr %plen, align 4
  %calltmp104 = call i32 @nitpick_libc_string_copy_to_buf(i64 %pbuf101, i64 0, ptr %s, i64 %start102, i64 %plen103)
  br label %ifcont105

ifcont105:                                        ; preds = %then100, %then91
  %pbuf106 = load i64, ptr %pbuf, align 4
  %plen107 = load i64, ptr %plen, align 4
  %calltmp108 = call i32 @nitpick_libc_mem_write_byte(i64 %pbuf106, i64 %plen107, i32 0)
  %parts109 = load i64, ptr %parts72, align 4
  %part_idx110 = load i64, ptr %part_idx, align 4
  %multmp111 = mul i64 %part_idx110, 16
  %pbuf112 = load i64, ptr %pbuf, align 4
  %calltmp113 = call i32 @nitpick_libc_mem_write_i64(i64 %parts109, i64 %multmp111, i64 %pbuf112)
  %parts114 = load i64, ptr %parts72, align 4
  %part_idx115 = load i64, ptr %part_idx, align 4
  %multmp116 = mul i64 %part_idx115, 16
  %addtmp117 = add i64 %multmp116, 8
  %plen118 = load i64, ptr %plen, align 4
  %calltmp119 = call i32 @nitpick_libc_mem_write_i64(i64 %parts114, i64 %addtmp117, i64 %plen118)
  %part_idx120 = load i64, ptr %part_idx, align 4
  %addtmp121 = add i64 %part_idx120, 1
  store i64 %addtmp121, ptr %part_idx, align 4
  %i122 = load i64, ptr %i, align 4
  %d_len123 = load i64, ptr %d_len, align 4
  %addtmp124 = add i64 %i122, %d_len123
  store i64 %addtmp124, ptr %start, align 4
  %i125 = load i64, ptr %i, align 4
  %d_len126 = load i64, ptr %d_len, align 4
  %addtmp127 = add i64 %i125, %d_len126
  store i64 %addtmp127, ptr %i, align 4
  br label %ifcont131

else128:                                          ; preds = %whilebody81
  %i129 = load i64, ptr %i, align 4
  %addtmp130 = add i64 %i129, 1
  store i64 %addtmp130, ptr %i, align 4
  br label %ifcont131

ifcont131:                                        ; preds = %else128, %ifcont105
  call void @npk_gc_safepoint()
  br label %whilecond76

afterwhile132:                                    ; preds = %whilecond76
  %final_len = alloca i64, align 8
  %s_len133 = load i64, ptr %s_len, align 4
  %start134 = load i64, ptr %start, align 4
  %subtmp135 = sub i64 %s_len133, %start134
  store i64 %subtmp135, ptr %final_len, align 4
  %final_buf = alloca i64, align 8
  %final_len136 = load i64, ptr %final_len, align 4
  %addtmp137 = add i64 %final_len136, 1
  %calltmp138 = call i64 @nitpick_libc_mem_malloc(i64 %addtmp137)
  store i64 %calltmp138, ptr %final_buf, align 4
  %final_len139 = load i64, ptr %final_len, align 4
  %gttmp140 = icmp sgt i64 %final_len139, 0
  %ifcond141 = icmp ne i1 %gttmp140, false
  br i1 %ifcond141, label %then142, label %ifcont147

then142:                                          ; preds = %afterwhile132
  %final_buf143 = load i64, ptr %final_buf, align 4
  %start144 = load i64, ptr %start, align 4
  %final_len145 = load i64, ptr %final_len, align 4
  %calltmp146 = call i32 @nitpick_libc_string_copy_to_buf(i64 %final_buf143, i64 0, ptr %s, i64 %start144, i64 %final_len145)
  br label %ifcont147

ifcont147:                                        ; preds = %then142, %afterwhile132
  %final_buf148 = load i64, ptr %final_buf, align 4
  %final_len149 = load i64, ptr %final_len, align 4
  %calltmp150 = call i32 @nitpick_libc_mem_write_byte(i64 %final_buf148, i64 %final_len149, i32 0)
  %parts151 = load i64, ptr %parts72, align 4
  %part_idx152 = load i64, ptr %part_idx, align 4
  %multmp153 = mul i64 %part_idx152, 16
  %final_buf154 = load i64, ptr %final_buf, align 4
  %calltmp155 = call i32 @nitpick_libc_mem_write_i64(i64 %parts151, i64 %multmp153, i64 %final_buf154)
  %parts156 = load i64, ptr %parts72, align 4
  %part_idx157 = load i64, ptr %part_idx, align 4
  %multmp158 = mul i64 %part_idx157, 16
  %addtmp159 = add i64 %multmp158, 8
  %final_len160 = load i64, ptr %final_len, align 4
  %calltmp161 = call i32 @nitpick_libc_mem_write_i64(i64 %parts156, i64 %addtmp159, i64 %final_len160)
  %h162 = load i64, ptr %h, align 4
  %parts163 = load i64, ptr %parts72, align 4
  %calltmp164 = call i32 @nitpick_libc_mem_write_i64(i64 %h162, i64 0, i64 %parts163)
  %h165 = load i64, ptr %h, align 4
  %count166 = load i64, ptr %count, align 4
  %calltmp167 = call i32 @nitpick_libc_mem_write_i64(i64 %h165, i64 8, i64 %count166)
  %h168 = load i64, ptr %h, align 4
  %result.val169 = insertvalue { i64, ptr, i8 } undef, i64 %h168, 0
  %result.err170 = insertvalue { i64, ptr, i8 } %result.val169, ptr null, 1
  %result.is_error171 = insertvalue { i64, ptr, i8 } %result.err170, i8 0, 2
  ret { i64, ptr, i8 } %result.is_error171
}

define linkonce_odr { i64, ptr, i8 } @string.str_split_count(i64 %h) {
entry:
  %h.addr = alloca i64, align 8
  store i64 %h, ptr %h.addr, align 4
  %count = alloca i64, align 8
  %h1 = load i64, ptr %h.addr, align 4
  %calltmp = call i64 @nitpick_libc_mem_read_i64(i64 %h1, i64 8)
  store i64 %calltmp, ptr %count, align 4
  %count2 = load i64, ptr %count, align 4
  %result.val = insertvalue { i64, ptr, i8 } undef, i64 %count2, 0
  %result.err = insertvalue { i64, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i64, ptr, i8 } %result.err, i8 0, 2
  ret { i64, ptr, i8 } %result.is_error
}

define linkonce_odr { ptr, ptr, i8 } @string.str_split_get(i64 %h, i64 %idx) {
entry:
  %h.addr = alloca i64, align 8
  store i64 %h, ptr %h.addr, align 4
  %idx.addr = alloca i64, align 8
  store i64 %idx, ptr %idx.addr, align 4
  %parts = alloca i64, align 8
  %h1 = load i64, ptr %h.addr, align 4
  %calltmp = call i64 @nitpick_libc_mem_read_i64(i64 %h1, i64 0)
  store i64 %calltmp, ptr %parts, align 4
  %part_buf = alloca i64, align 8
  %parts2 = load i64, ptr %parts, align 4
  %idx3 = load i64, ptr %idx.addr, align 4
  %multmp = mul i64 %idx3, 16
  %calltmp4 = call i64 @nitpick_libc_mem_read_i64(i64 %parts2, i64 %multmp)
  store i64 %calltmp4, ptr %part_buf, align 4
  %part_len = alloca i64, align 8
  %parts5 = load i64, ptr %parts, align 4
  %idx6 = load i64, ptr %idx.addr, align 4
  %multmp7 = mul i64 %idx6, 16
  %addtmp = add i64 %multmp7, 8
  %calltmp8 = call i64 @nitpick_libc_mem_read_i64(i64 %parts5, i64 %addtmp)
  store i64 %calltmp8, ptr %part_len, align 4
  %result = alloca ptr, align 8
  %part_buf9 = load i64, ptr %part_buf, align 4
  %part_len10 = load i64, ptr %part_len, align 4
  %calltmp11 = call ptr @nitpick_libc_string_from_buf(i64 %part_buf9, i64 0, i64 %part_len10)
  %ffi_strlen = call i64 @strlen(ptr %calltmp11)
  %ffi_str_gc = call ptr @npk_gc_alloc(i64 16)
  %ffi_data_sz = add i64 %ffi_strlen, 1
  %ffi_data_gc = call ptr @npk_gc_alloc(i64 %ffi_data_sz)
  %0 = call ptr @memcpy(ptr %ffi_data_gc, ptr %calltmp11, i64 %ffi_data_sz)
  %ffi_str_data = getelementptr inbounds nuw %struct.NpkString, ptr %ffi_str_gc, i32 0, i32 0
  store ptr %ffi_data_gc, ptr %ffi_str_data, align 8
  %ffi_str_len = getelementptr inbounds nuw %struct.NpkString, ptr %ffi_str_gc, i32 0, i32 1
  store i64 %ffi_strlen, ptr %ffi_str_len, align 4
  store ptr %ffi_str_gc, ptr %result, align 8
  %result12 = load ptr, ptr %result, align 8
  %result.val = insertvalue { ptr, ptr, i8 } undef, ptr %result12, 0
  %result.err = insertvalue { ptr, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { ptr, ptr, i8 } %result.err, i8 0, 2
  ret { ptr, ptr, i8 } %result.is_error
}

define linkonce_odr { %struct.NIL, ptr, i8 } @string.str_split_free(i64 %h) {
entry:
  %h.addr = alloca i64, align 8
  store i64 %h, ptr %h.addr, align 4
  %h1 = load i64, ptr %h.addr, align 4
  %eqtmp = icmp eq i64 %h1, 0
  %ifcond = icmp ne i1 %eqtmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %entry
  ret { %struct.NIL, ptr, i8 } zeroinitializer

ifcont:                                           ; preds = %entry
  %count = alloca i64, align 8
  %h2 = load i64, ptr %h.addr, align 4
  %calltmp = call i64 @nitpick_libc_mem_read_i64(i64 %h2, i64 8)
  store i64 %calltmp, ptr %count, align 4
  %parts = alloca i64, align 8
  %h3 = load i64, ptr %h.addr, align 4
  %calltmp4 = call i64 @nitpick_libc_mem_read_i64(i64 %h3, i64 0)
  store i64 %calltmp4, ptr %parts, align 4
  %parts5 = load i64, ptr %parts, align 4
  %netmp = icmp ne i64 %parts5, 0
  %ifcond6 = icmp ne i1 %netmp, false
  br i1 %ifcond6, label %then7, label %ifcont24

then7:                                            ; preds = %ifcont
  %fi = alloca i64, align 8
  store i64 0, ptr %fi, align 4
  br label %whilecond

whilecond:                                        ; preds = %ifcont20, %then7
  %fi8 = load i64, ptr %fi, align 4
  %count9 = load i64, ptr %count, align 4
  %lttmp = icmp slt i64 %fi8, %count9
  %whilecond10 = icmp ne i1 %lttmp, false
  br i1 %whilecond10, label %whilebody, label %afterwhile

whilebody:                                        ; preds = %whilecond
  %part_buf = alloca i64, align 8
  %parts11 = load i64, ptr %parts, align 4
  %fi12 = load i64, ptr %fi, align 4
  %multmp = mul i64 %fi12, 16
  %calltmp13 = call i64 @nitpick_libc_mem_read_i64(i64 %parts11, i64 %multmp)
  store i64 %calltmp13, ptr %part_buf, align 4
  %part_buf14 = load i64, ptr %part_buf, align 4
  %netmp15 = icmp ne i64 %part_buf14, 0
  %ifcond16 = icmp ne i1 %netmp15, false
  br i1 %ifcond16, label %then17, label %ifcont20

then17:                                           ; preds = %whilebody
  %part_buf18 = load i64, ptr %part_buf, align 4
  %calltmp19 = call i32 @nitpick_libc_mem_free(i64 %part_buf18)
  br label %ifcont20

ifcont20:                                         ; preds = %then17, %whilebody
  %fi21 = load i64, ptr %fi, align 4
  %addtmp = add i64 %fi21, 1
  store i64 %addtmp, ptr %fi, align 4
  call void @npk_gc_safepoint()
  br label %whilecond

afterwhile:                                       ; preds = %whilecond
  %parts22 = load i64, ptr %parts, align 4
  %calltmp23 = call i32 @nitpick_libc_mem_free(i64 %parts22)
  br label %ifcont24

ifcont24:                                         ; preds = %afterwhile, %ifcont
  %h25 = load i64, ptr %h.addr, align 4
  %calltmp26 = call i32 @nitpick_libc_mem_free(i64 %h25)
  ret { %struct.NIL, ptr, i8 } zeroinitializer
}

define linkonce_odr { ptr, ptr, i8 } @string.str_join(i64 %h, ptr %delim) {
entry:
  %h.addr = alloca i64, align 8
  store i64 %h, ptr %h.addr, align 4
  %count = alloca i64, align 8
  %h1 = load i64, ptr %h.addr, align 4
  %calltmp = call i64 @nitpick_libc_mem_read_i64(i64 %h1, i64 8)
  store i64 %calltmp, ptr %count, align 4
  %count2 = load i64, ptr %count, align 4
  %eqtmp = icmp eq i64 %count2, 0
  %ifcond = icmp ne i1 %eqtmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %entry
  ret { ptr, ptr, i8 } { ptr @.str.6, ptr null, i8 0 }

ifcont:                                           ; preds = %entry
  %d_len = alloca i64, align 8
  %str = load %struct.NpkString, ptr %delim, align 8
  %length = extractvalue %struct.NpkString %str, 1
  store i64 %length, ptr %d_len, align 4
  %parts = alloca i64, align 8
  %h3 = load i64, ptr %h.addr, align 4
  %calltmp4 = call i64 @nitpick_libc_mem_read_i64(i64 %h3, i64 0)
  store i64 %calltmp4, ptr %parts, align 4
  %total = alloca i64, align 8
  store i64 0, ptr %total, align 4
  %i = alloca i64, align 8
  store i64 0, ptr %i, align 4
  br label %whilecond

whilecond:                                        ; preds = %whilebody, %ifcont
  %i5 = load i64, ptr %i, align 4
  %count6 = load i64, ptr %count, align 4
  %lttmp = icmp slt i64 %i5, %count6
  %whilecond7 = icmp ne i1 %lttmp, false
  br i1 %whilecond7, label %whilebody, label %afterwhile

whilebody:                                        ; preds = %whilecond
  %plen = alloca i64, align 8
  %parts8 = load i64, ptr %parts, align 4
  %i9 = load i64, ptr %i, align 4
  %multmp = mul i64 %i9, 16
  %addtmp = add i64 %multmp, 8
  %calltmp10 = call i64 @nitpick_libc_mem_read_i64(i64 %parts8, i64 %addtmp)
  store i64 %calltmp10, ptr %plen, align 4
  %total11 = load i64, ptr %total, align 4
  %plen12 = load i64, ptr %plen, align 4
  %addtmp13 = add i64 %total11, %plen12
  store i64 %addtmp13, ptr %total, align 4
  %i14 = load i64, ptr %i, align 4
  %addtmp15 = add i64 %i14, 1
  store i64 %addtmp15, ptr %i, align 4
  call void @npk_gc_safepoint()
  br label %whilecond

afterwhile:                                       ; preds = %whilecond
  %d_len16 = load i64, ptr %d_len, align 4
  %gttmp = icmp sgt i64 %d_len16, 0
  %ifcond17 = icmp ne i1 %gttmp, false
  br i1 %ifcond17, label %then18, label %ifcont24

then18:                                           ; preds = %afterwhile
  %total19 = load i64, ptr %total, align 4
  %d_len20 = load i64, ptr %d_len, align 4
  %count21 = load i64, ptr %count, align 4
  %subtmp = sub i64 %count21, 1
  %multmp22 = mul i64 %d_len20, %subtmp
  %addtmp23 = add i64 %total19, %multmp22
  store i64 %addtmp23, ptr %total, align 4
  br label %ifcont24

ifcont24:                                         ; preds = %then18, %afterwhile
  %buf = alloca i64, align 8
  %total25 = load i64, ptr %total, align 4
  %addtmp26 = add i64 %total25, 1
  %calltmp27 = call i64 @nitpick_libc_mem_malloc(i64 %addtmp26)
  store i64 %calltmp27, ptr %buf, align 4
  %pos = alloca i64, align 8
  store i64 0, ptr %pos, align 4
  store i64 0, ptr %i, align 4
  br label %whilecond28

whilecond28:                                      ; preds = %ifcont70, %ifcont24
  %i29 = load i64, ptr %i, align 4
  %count30 = load i64, ptr %count, align 4
  %lttmp31 = icmp slt i64 %i29, %count30
  %whilecond32 = icmp ne i1 %lttmp31, false
  br i1 %whilecond32, label %whilebody33, label %afterwhile76

whilebody33:                                      ; preds = %whilecond28
  %i34 = load i64, ptr %i, align 4
  %gttmp35 = icmp sgt i64 %i34, 0
  %ifcond36 = icmp ne i1 %gttmp35, false
  br i1 %ifcond36, label %then37, label %ifcont50

then37:                                           ; preds = %whilebody33
  %d_len38 = load i64, ptr %d_len, align 4
  %gttmp39 = icmp sgt i64 %d_len38, 0
  %ifcond40 = icmp ne i1 %gttmp39, false
  br i1 %ifcond40, label %then41, label %ifcont49

then41:                                           ; preds = %then37
  %buf42 = load i64, ptr %buf, align 4
  %pos43 = load i64, ptr %pos, align 4
  %d_len44 = load i64, ptr %d_len, align 4
  %calltmp45 = call i32 @nitpick_libc_string_copy_to_buf(i64 %buf42, i64 %pos43, ptr %delim, i64 0, i64 %d_len44)
  %pos46 = load i64, ptr %pos, align 4
  %d_len47 = load i64, ptr %d_len, align 4
  %addtmp48 = add i64 %pos46, %d_len47
  store i64 %addtmp48, ptr %pos, align 4
  br label %ifcont49

ifcont49:                                         ; preds = %then41, %then37
  br label %ifcont50

ifcont50:                                         ; preds = %ifcont49, %whilebody33
  %part_buf = alloca i64, align 8
  %parts51 = load i64, ptr %parts, align 4
  %i52 = load i64, ptr %i, align 4
  %multmp53 = mul i64 %i52, 16
  %calltmp54 = call i64 @nitpick_libc_mem_read_i64(i64 %parts51, i64 %multmp53)
  store i64 %calltmp54, ptr %part_buf, align 4
  %part_len = alloca i64, align 8
  %parts55 = load i64, ptr %parts, align 4
  %i56 = load i64, ptr %i, align 4
  %multmp57 = mul i64 %i56, 16
  %addtmp58 = add i64 %multmp57, 8
  %calltmp59 = call i64 @nitpick_libc_mem_read_i64(i64 %parts55, i64 %addtmp58)
  store i64 %calltmp59, ptr %part_len, align 4
  %part_len60 = load i64, ptr %part_len, align 4
  %gttmp61 = icmp sgt i64 %part_len60, 0
  %ifcond62 = icmp ne i1 %gttmp61, false
  br i1 %ifcond62, label %then63, label %ifcont70

then63:                                           ; preds = %ifcont50
  %buf64 = load i64, ptr %buf, align 4
  %pos65 = load i64, ptr %pos, align 4
  %addtmp66 = add i64 %buf64, %pos65
  %part_buf67 = load i64, ptr %part_buf, align 4
  %part_len68 = load i64, ptr %part_len, align 4
  %calltmp69 = call i32 @nitpick_libc_mem_copy(i64 %addtmp66, i64 %part_buf67, i64 %part_len68)
  br label %ifcont70

ifcont70:                                         ; preds = %then63, %ifcont50
  %pos71 = load i64, ptr %pos, align 4
  %part_len72 = load i64, ptr %part_len, align 4
  %addtmp73 = add i64 %pos71, %part_len72
  store i64 %addtmp73, ptr %pos, align 4
  %i74 = load i64, ptr %i, align 4
  %addtmp75 = add i64 %i74, 1
  store i64 %addtmp75, ptr %i, align 4
  call void @npk_gc_safepoint()
  br label %whilecond28

afterwhile76:                                     ; preds = %whilecond28
  %buf77 = load i64, ptr %buf, align 4
  %total78 = load i64, ptr %total, align 4
  %calltmp79 = call i32 @nitpick_libc_mem_write_byte(i64 %buf77, i64 %total78, i32 0)
  %result = alloca ptr, align 8
  %buf80 = load i64, ptr %buf, align 4
  %total81 = load i64, ptr %total, align 4
  %calltmp82 = call ptr @nitpick_libc_string_from_buf(i64 %buf80, i64 0, i64 %total81)
  %ffi_strlen = call i64 @strlen(ptr %calltmp82)
  %ffi_str_gc = call ptr @npk_gc_alloc(i64 16)
  %ffi_data_sz = add i64 %ffi_strlen, 1
  %ffi_data_gc = call ptr @npk_gc_alloc(i64 %ffi_data_sz)
  %0 = call ptr @memcpy(ptr %ffi_data_gc, ptr %calltmp82, i64 %ffi_data_sz)
  %ffi_str_data = getelementptr inbounds nuw %struct.NpkString, ptr %ffi_str_gc, i32 0, i32 0
  store ptr %ffi_data_gc, ptr %ffi_str_data, align 8
  %ffi_str_len = getelementptr inbounds nuw %struct.NpkString, ptr %ffi_str_gc, i32 0, i32 1
  store i64 %ffi_strlen, ptr %ffi_str_len, align 4
  store ptr %ffi_str_gc, ptr %result, align 8
  %buf83 = load i64, ptr %buf, align 4
  %calltmp84 = call i32 @nitpick_libc_mem_free(i64 %buf83)
  %result85 = load ptr, ptr %result, align 8
  %result.val = insertvalue { ptr, ptr, i8 } undef, ptr %result85, 0
  %result.err = insertvalue { ptr, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { ptr, ptr, i8 } %result.err, i8 0, 2
  ret { ptr, ptr, i8 } %result.is_error
}

declare i32 @nitpick_libc_string_byte_at(ptr, i64)

declare i32 @nitpick_libc_string_copy_to_buf(i64, i64, ptr, i64, i64)

declare ptr @nitpick_libc_string_from_buf(i64, i64, i64)

declare i64 @nitpick_libc_string_atoi(ptr)

declare i64 @nitpick_libc_mem_malloc(i64)

declare i32 @nitpick_libc_mem_write_byte(i64, i64, i32)

declare i32 @nitpick_libc_mem_write_i64(i64, i64, i64)

declare i64 @nitpick_libc_mem_read_i64(i64, i64)

declare i32 @nitpick_libc_mem_copy(i64, i64, i64)

declare ptr @npk_string_substring_simple(ptr, i64, i64)

declare i64 @strlen(ptr)

declare ptr @npk_gc_alloc(i64)

declare ptr @memcpy(ptr, ptr, i64)

define linkonce_odr i32 @__string_init() {
entry:
  ret i32 0
}

define linkonce_odr { ptr, ptr, i8 } @nitpick_args.args_load() {
entry:
  %fp = alloca i64, align 8
  %calltmp = call i64 @fopen(ptr @.str.8, ptr @.str.10)
  store i64 %calltmp, ptr %fp, align 4
  %fp1 = load i64, ptr %fp, align 4
  %eqtmp = icmp eq i64 %fp1, 0
  %ifcond = icmp ne i1 %eqtmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %entry
  ret { ptr, ptr, i8 } { ptr @.str.12, ptr null, i8 0 }

ifcont:                                           ; preds = %entry
  %result = alloca ptr, align 8
  store ptr @.str.14, ptr %result, align 8
  %current = alloca ptr, align 8
  store ptr @.str.16, ptr %current, align 8
  %c = alloca i32, align 4
  %fp2 = load i64, ptr %fp, align 4
  %calltmp3 = call i32 @fgetc(i64 %fp2)
  store i32 %calltmp3, ptr %c, align 4
  br label %whilecond

whilecond:                                        ; preds = %ifcont25, %ifcont
  %c4 = load i32, ptr %c, align 4
  %getmp = icmp sge i32 %c4, 0
  %whilecond5 = icmp ne i1 %getmp, false
  br i1 %whilecond5, label %whilebody, label %afterwhile

whilebody:                                        ; preds = %whilecond
  %c6 = load i32, ptr %c, align 4
  %eqtmp7 = icmp eq i32 %c6, 0
  %ifcond8 = icmp ne i1 %eqtmp7, false
  br i1 %ifcond8, label %then9, label %ifcont17

then9:                                            ; preds = %whilebody
  %current10 = load ptr, ptr %current, align 8
  %str = load %struct.NpkString, ptr %current10, align 8
  %length = extractvalue %struct.NpkString %str, 1
  %gttmp = icmp sgt i64 %length, 0
  %ifcond11 = icmp ne i1 %gttmp, false
  br i1 %ifcond11, label %then12, label %ifcont16

then12:                                           ; preds = %then9
  %result13 = load ptr, ptr %result, align 8
  %current14 = load ptr, ptr %current, align 8
  %concat_str = call ptr @npk_string_concat_simple(ptr %current14, ptr @.str.18)
  %concat_str15 = call ptr @npk_string_concat_simple(ptr %result13, ptr %concat_str)
  store ptr %concat_str15, ptr %result, align 8
  store ptr @.str.20, ptr %current, align 8
  br label %ifcont16

ifcont16:                                         ; preds = %then12, %then9
  br label %ifcont17

ifcont17:                                         ; preds = %ifcont16, %whilebody
  %c18 = load i32, ptr %c, align 4
  %gttmp19 = icmp sgt i32 %c18, 0
  %ifcond20 = icmp ne i1 %gttmp19, false
  br i1 %ifcond20, label %then21, label %ifcont25

then21:                                           ; preds = %ifcont17
  %current22 = load ptr, ptr %current, align 8
  %c23 = load i32, ptr %c, align 4
  %cast.trunc = trunc i32 %c23 to i8
  %char_str = call ptr @npk_string_from_char_simple(i8 %cast.trunc)
  %concat_str24 = call ptr @npk_string_concat_simple(ptr %current22, ptr %char_str)
  store ptr %concat_str24, ptr %current, align 8
  br label %ifcont25

ifcont25:                                         ; preds = %then21, %ifcont17
  %fp26 = load i64, ptr %fp, align 4
  %calltmp27 = call i32 @fgetc(i64 %fp26)
  store i32 %calltmp27, ptr %c, align 4
  call void @npk_gc_safepoint()
  br label %whilecond

afterwhile:                                       ; preds = %whilecond
  %current28 = load ptr, ptr %current, align 8
  %str29 = load %struct.NpkString, ptr %current28, align 8
  %length30 = extractvalue %struct.NpkString %str29, 1
  %gttmp31 = icmp sgt i64 %length30, 0
  %ifcond32 = icmp ne i1 %gttmp31, false
  br i1 %ifcond32, label %then33, label %ifcont38

then33:                                           ; preds = %afterwhile
  %result34 = load ptr, ptr %result, align 8
  %current35 = load ptr, ptr %current, align 8
  %concat_str36 = call ptr @npk_string_concat_simple(ptr %current35, ptr @.str.22)
  %concat_str37 = call ptr @npk_string_concat_simple(ptr %result34, ptr %concat_str36)
  store ptr %concat_str37, ptr %result, align 8
  br label %ifcont38

ifcont38:                                         ; preds = %then33, %afterwhile
  %fp39 = load i64, ptr %fp, align 4
  %calltmp40 = call i32 @fclose(i64 %fp39)
  %result41 = load ptr, ptr %result, align 8
  %result.val = insertvalue { ptr, ptr, i8 } undef, ptr %result41, 0
  %result.err = insertvalue { ptr, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { ptr, ptr, i8 } %result.err, i8 0, 2
  ret { ptr, ptr, i8 } %result.is_error
}

define linkonce_odr { ptr, ptr, i8 } @nitpick_args._args_token(ptr %args, i32 %n) {
entry:
  %n.addr = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4
  %len = alloca i64, align 8
  %str = load %struct.NpkString, ptr %args, align 8
  %length = extractvalue %struct.NpkString %str, 1
  store i64 %length, ptr %len, align 4
  %start = alloca i64, align 8
  store i64 1, ptr %start, align 4
  %remaining = alloca i32, align 4
  %n1 = load i32, ptr %n.addr, align 4
  store i32 %n1, ptr %remaining, align 4
  %rest = alloca ptr, align 8
  store ptr @.str.24, ptr %rest, align 8
  %sep = alloca i64, align 8
  store i64 0, ptr %sep, align 4
  %len2 = load i64, ptr %len, align 4
  %lttmp = icmp slt i64 %len2, 2
  %ifcond = icmp ne i1 %lttmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %entry
  ret { ptr, ptr, i8 } { ptr @.str.26, ptr null, i8 0 }

ifcont:                                           ; preds = %entry
  br label %whilecond

whilecond:                                        ; preds = %ifcont19, %ifcont
  %remaining3 = load i32, ptr %remaining, align 4
  %getmp = icmp sge i32 %remaining3, 0
  %whilecond4 = icmp ne i1 %getmp, false
  br i1 %whilecond4, label %whilebody, label %afterwhile

whilebody:                                        ; preds = %whilecond
  %start5 = load i64, ptr %start, align 4
  %len6 = load i64, ptr %len, align 4
  %substr_result = call ptr @npk_string_substring_simple(ptr %args, i64 %start5, i64 %len6)
  store ptr %substr_result, ptr %rest, align 8
  %rest7 = load ptr, ptr %rest, align 8
  %index_of_result = call i64 @npk_string_index_of_simple(ptr %rest7, ptr @.str.28)
  store i64 %index_of_result, ptr %sep, align 4
  %sep8 = load i64, ptr %sep, align 4
  %lttmp9 = icmp slt i64 %sep8, 0
  %ifcond10 = icmp ne i1 %lttmp9, false
  br i1 %ifcond10, label %then11, label %ifcont12

then11:                                           ; preds = %whilebody
  ret { ptr, ptr, i8 } { ptr @.str.30, ptr null, i8 0 }

ifcont12:                                         ; preds = %whilebody
  %remaining13 = load i32, ptr %remaining, align 4
  %eqtmp = icmp eq i32 %remaining13, 0
  %ifcond14 = icmp ne i1 %eqtmp, false
  br i1 %ifcond14, label %then15, label %ifcont19

then15:                                           ; preds = %ifcont12
  %rest16 = load ptr, ptr %rest, align 8
  %sep17 = load i64, ptr %sep, align 4
  %substr_result18 = call ptr @npk_string_substring_simple(ptr %rest16, i64 0, i64 %sep17)
  %result.val = insertvalue { ptr, ptr, i8 } undef, ptr %substr_result18, 0
  %result.err = insertvalue { ptr, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { ptr, ptr, i8 } %result.err, i8 0, 2
  ret { ptr, ptr, i8 } %result.is_error

ifcont19:                                         ; preds = %ifcont12
  %remaining20 = load i32, ptr %remaining, align 4
  %subtmp = sub i32 %remaining20, 1
  store i32 %subtmp, ptr %remaining, align 4
  %start21 = load i64, ptr %start, align 4
  %sep22 = load i64, ptr %sep, align 4
  %addtmp = add i64 %start21, %sep22
  %addtmp23 = add i64 %addtmp, 1
  store i64 %addtmp23, ptr %start, align 4
  call void @npk_gc_safepoint()
  br label %whilecond

afterwhile:                                       ; preds = %whilecond
  ret { ptr, ptr, i8 } { ptr @.str.32, ptr null, i8 0 }
}

define linkonce_odr { i1, ptr, i8 } @nitpick_args.args_has(ptr %args, ptr %flag) {
entry:
  %needle = alloca ptr, align 8
  %concat_str = call ptr @npk_string_concat_simple(ptr %flag, ptr @.str.35)
  %concat_str1 = call ptr @npk_string_concat_simple(ptr @.str.34, ptr %concat_str)
  store ptr %concat_str1, ptr %needle, align 8
  %needle2 = load ptr, ptr %needle, align 8
  %haystack = load %struct.NpkString, ptr %args, align 8
  %needle3 = load %struct.NpkString, ptr %needle2, align 8
  %contains = call i1 @npk_string_contains(%struct.NpkString %haystack, %struct.NpkString %needle3)
  %result.val = insertvalue { i1, ptr, i8 } undef, i1 %contains, 0
  %result.err = insertvalue { i1, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i1, ptr, i8 } %result.err, i8 0, 2
  ret { i1, ptr, i8 } %result.is_error
}

define linkonce_odr { ptr, ptr, i8 } @nitpick_args.args_get(ptr %args, ptr %key) {
entry:
  %needle = alloca ptr, align 8
  %concat_str = call ptr @npk_string_concat_simple(ptr %key, ptr @.str.38)
  %concat_str1 = call ptr @npk_string_concat_simple(ptr @.str.37, ptr %concat_str)
  store ptr %concat_str1, ptr %needle, align 8
  %pos = alloca i64, align 8
  %needle2 = load ptr, ptr %needle, align 8
  %index_of_result = call i64 @npk_string_index_of_simple(ptr %args, ptr %needle2)
  store i64 %index_of_result, ptr %pos, align 4
  %value_start = alloca i64, align 8
  %pos3 = load i64, ptr %pos, align 4
  %needle4 = load ptr, ptr %needle, align 8
  %str = load %struct.NpkString, ptr %needle4, align 8
  %length = extractvalue %struct.NpkString %str, 1
  %addtmp = add i64 %pos3, %length
  store i64 %addtmp, ptr %value_start, align 4
  %len = alloca i64, align 8
  %str5 = load %struct.NpkString, ptr %args, align 8
  %length6 = extractvalue %struct.NpkString %str5, 1
  store i64 %length6, ptr %len, align 4
  %rest = alloca ptr, align 8
  store ptr @.str.40, ptr %rest, align 8
  %sep = alloca i64, align 8
  store i64 0, ptr %sep, align 4
  %pos7 = load i64, ptr %pos, align 4
  %lttmp = icmp slt i64 %pos7, 0
  %ifcond = icmp ne i1 %lttmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %entry
  ret { ptr, ptr, i8 } { ptr @.str.42, ptr null, i8 0 }

ifcont:                                           ; preds = %entry
  %value_start8 = load i64, ptr %value_start, align 4
  %len9 = load i64, ptr %len, align 4
  %getmp = icmp sge i64 %value_start8, %len9
  %ifcond10 = icmp ne i1 %getmp, false
  br i1 %ifcond10, label %then11, label %ifcont12

then11:                                           ; preds = %ifcont
  ret { ptr, ptr, i8 } { ptr @.str.44, ptr null, i8 0 }

ifcont12:                                         ; preds = %ifcont
  %value_start13 = load i64, ptr %value_start, align 4
  %len14 = load i64, ptr %len, align 4
  %substr_result = call ptr @npk_string_substring_simple(ptr %args, i64 %value_start13, i64 %len14)
  store ptr %substr_result, ptr %rest, align 8
  %rest15 = load ptr, ptr %rest, align 8
  %index_of_result16 = call i64 @npk_string_index_of_simple(ptr %rest15, ptr @.str.46)
  store i64 %index_of_result16, ptr %sep, align 4
  %sep17 = load i64, ptr %sep, align 4
  %letmp = icmp sle i64 %sep17, 0
  %ifcond18 = icmp ne i1 %letmp, false
  br i1 %ifcond18, label %then19, label %ifcont20

then19:                                           ; preds = %ifcont12
  ret { ptr, ptr, i8 } { ptr @.str.48, ptr null, i8 0 }

ifcont20:                                         ; preds = %ifcont12
  %rest21 = load ptr, ptr %rest, align 8
  %sep22 = load i64, ptr %sep, align 4
  %substr_result23 = call ptr @npk_string_substring_simple(ptr %rest21, i64 0, i64 %sep22)
  %result.val = insertvalue { ptr, ptr, i8 } undef, ptr %substr_result23, 0
  %result.err = insertvalue { ptr, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { ptr, ptr, i8 } %result.err, i8 0, 2
  ret { ptr, ptr, i8 } %result.is_error
}

define linkonce_odr { ptr, ptr, i8 } @nitpick_args.args_get_or(ptr %args, ptr %key, ptr %default_val) {
entry:
  %result = alloca ptr, align 8
  %calltmp = call { ptr, ptr, i8 } @nitpick_args.args_get(ptr %args, ptr %key)
  %raw.value = extractvalue { ptr, ptr, i8 } %calltmp, 0
  store ptr %raw.value, ptr %result, align 8
  %result1 = load ptr, ptr %result, align 8
  %str = load %struct.NpkString, ptr %result1, align 8
  %length = extractvalue %struct.NpkString %str, 1
  %eqtmp = icmp eq i64 %length, 0
  %ifcond = icmp ne i1 %eqtmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %entry
  %result.val = insertvalue { ptr, ptr, i8 } undef, ptr %default_val, 0
  %result.err = insertvalue { ptr, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { ptr, ptr, i8 } %result.err, i8 0, 2
  ret { ptr, ptr, i8 } %result.is_error

ifcont:                                           ; preds = %entry
  %result2 = load ptr, ptr %result, align 8
  %result.val3 = insertvalue { ptr, ptr, i8 } undef, ptr %result2, 0
  %result.err4 = insertvalue { ptr, ptr, i8 } %result.val3, ptr null, 1
  %result.is_error5 = insertvalue { ptr, ptr, i8 } %result.err4, i8 0, 2
  ret { ptr, ptr, i8 } %result.is_error5
}

define linkonce_odr { i32, ptr, i8 } @nitpick_args.args_get_int(ptr %args, ptr %key, i32 %default_val) {
entry:
  %default_val.addr = alloca i32, align 4
  store i32 %default_val, ptr %default_val.addr, align 4
  %val = alloca ptr, align 8
  %calltmp = call { ptr, ptr, i8 } @nitpick_args.args_get_or(ptr %args, ptr %key, ptr @.str.50)
  %raw.value = extractvalue { ptr, ptr, i8 } %calltmp, 0
  store ptr %raw.value, ptr %val, align 8
  %res = alloca i32, align 4
  store i32 0, ptr %res, align 4
  %sign = alloca i32, align 4
  store i32 1, ptr %sign, align 4
  %i = alloca i64, align 8
  store i64 0, ptr %i, align 4
  %len = alloca i64, align 8
  %val1 = load ptr, ptr %val, align 8
  %str = load %struct.NpkString, ptr %val1, align 8
  %length = extractvalue %struct.NpkString %str, 1
  store i64 %length, ptr %len, align 4
  %c0 = alloca ptr, align 8
  store ptr @.str.52, ptr %c0, align 8
  %c = alloca ptr, align 8
  store ptr @.str.54, ptr %c, align 8
  %len2 = load i64, ptr %len, align 4
  %eqtmp = icmp eq i64 %len2, 0
  %ifcond = icmp ne i1 %eqtmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %entry
  %default_val3 = load i32, ptr %default_val.addr, align 4
  %result.val = insertvalue { i32, ptr, i8 } undef, i32 %default_val3, 0
  %result.err = insertvalue { i32, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i32, ptr, i8 } %result.err, i8 0, 2
  ret { i32, ptr, i8 } %result.is_error

ifcont:                                           ; preds = %entry
  %val4 = load ptr, ptr %val, align 8
  %substr_result = call ptr @npk_string_substring_simple(ptr %val4, i64 0, i64 1)
  store ptr %substr_result, ptr %c0, align 8
  %c05 = load ptr, ptr %c0, align 8
  %str1 = load %struct.NpkString, ptr %c05, align 8
  %str2 = load %struct.NpkString, ptr @.str.56, align 8
  %equals = call i1 @npk_string_equals(%struct.NpkString %str1, %struct.NpkString %str2)
  %ifcond6 = icmp ne i1 %equals, false
  br i1 %ifcond6, label %then7, label %ifcont8

then7:                                            ; preds = %ifcont
  store i32 -1, ptr %sign, align 4
  store i64 1, ptr %i, align 4
  br label %ifcont8

ifcont8:                                          ; preds = %then7, %ifcont
  br label %whilecond

whilecond:                                        ; preds = %ifcont97, %ifcont8
  %i9 = load i64, ptr %i, align 4
  %len10 = load i64, ptr %len, align 4
  %lttmp = icmp slt i64 %i9, %len10
  %whilecond11 = icmp ne i1 %lttmp, false
  br i1 %whilecond11, label %whilebody, label %afterwhile

whilebody:                                        ; preds = %whilecond
  %val12 = load ptr, ptr %val, align 8
  %i13 = load i64, ptr %i, align 4
  %i14 = load i64, ptr %i, align 4
  %addtmp = add i64 %i14, 1
  %substr_result15 = call ptr @npk_string_substring_simple(ptr %val12, i64 %i13, i64 %addtmp)
  store ptr %substr_result15, ptr %c, align 8
  %res16 = load i32, ptr %res, align 4
  %multmp = mul i32 %res16, 10
  store i32 %multmp, ptr %res, align 4
  %c17 = load ptr, ptr %c, align 8
  %str118 = load %struct.NpkString, ptr %c17, align 8
  %str219 = load %struct.NpkString, ptr @.str.58, align 8
  %equals20 = call i1 @npk_string_equals(%struct.NpkString %str118, %struct.NpkString %str219)
  %ifcond21 = icmp ne i1 %equals20, false
  br i1 %ifcond21, label %then22, label %ifcont25

then22:                                           ; preds = %whilebody
  %res23 = load i32, ptr %res, align 4
  %addtmp24 = add i32 %res23, 1
  store i32 %addtmp24, ptr %res, align 4
  br label %ifcont25

ifcont25:                                         ; preds = %then22, %whilebody
  %c26 = load ptr, ptr %c, align 8
  %str127 = load %struct.NpkString, ptr %c26, align 8
  %str228 = load %struct.NpkString, ptr @.str.60, align 8
  %equals29 = call i1 @npk_string_equals(%struct.NpkString %str127, %struct.NpkString %str228)
  %ifcond30 = icmp ne i1 %equals29, false
  br i1 %ifcond30, label %then31, label %ifcont34

then31:                                           ; preds = %ifcont25
  %res32 = load i32, ptr %res, align 4
  %addtmp33 = add i32 %res32, 2
  store i32 %addtmp33, ptr %res, align 4
  br label %ifcont34

ifcont34:                                         ; preds = %then31, %ifcont25
  %c35 = load ptr, ptr %c, align 8
  %str136 = load %struct.NpkString, ptr %c35, align 8
  %str237 = load %struct.NpkString, ptr @.str.62, align 8
  %equals38 = call i1 @npk_string_equals(%struct.NpkString %str136, %struct.NpkString %str237)
  %ifcond39 = icmp ne i1 %equals38, false
  br i1 %ifcond39, label %then40, label %ifcont43

then40:                                           ; preds = %ifcont34
  %res41 = load i32, ptr %res, align 4
  %addtmp42 = add i32 %res41, 3
  store i32 %addtmp42, ptr %res, align 4
  br label %ifcont43

ifcont43:                                         ; preds = %then40, %ifcont34
  %c44 = load ptr, ptr %c, align 8
  %str145 = load %struct.NpkString, ptr %c44, align 8
  %str246 = load %struct.NpkString, ptr @.str.64, align 8
  %equals47 = call i1 @npk_string_equals(%struct.NpkString %str145, %struct.NpkString %str246)
  %ifcond48 = icmp ne i1 %equals47, false
  br i1 %ifcond48, label %then49, label %ifcont52

then49:                                           ; preds = %ifcont43
  %res50 = load i32, ptr %res, align 4
  %addtmp51 = add i32 %res50, 4
  store i32 %addtmp51, ptr %res, align 4
  br label %ifcont52

ifcont52:                                         ; preds = %then49, %ifcont43
  %c53 = load ptr, ptr %c, align 8
  %str154 = load %struct.NpkString, ptr %c53, align 8
  %str255 = load %struct.NpkString, ptr @.str.66, align 8
  %equals56 = call i1 @npk_string_equals(%struct.NpkString %str154, %struct.NpkString %str255)
  %ifcond57 = icmp ne i1 %equals56, false
  br i1 %ifcond57, label %then58, label %ifcont61

then58:                                           ; preds = %ifcont52
  %res59 = load i32, ptr %res, align 4
  %addtmp60 = add i32 %res59, 5
  store i32 %addtmp60, ptr %res, align 4
  br label %ifcont61

ifcont61:                                         ; preds = %then58, %ifcont52
  %c62 = load ptr, ptr %c, align 8
  %str163 = load %struct.NpkString, ptr %c62, align 8
  %str264 = load %struct.NpkString, ptr @.str.68, align 8
  %equals65 = call i1 @npk_string_equals(%struct.NpkString %str163, %struct.NpkString %str264)
  %ifcond66 = icmp ne i1 %equals65, false
  br i1 %ifcond66, label %then67, label %ifcont70

then67:                                           ; preds = %ifcont61
  %res68 = load i32, ptr %res, align 4
  %addtmp69 = add i32 %res68, 6
  store i32 %addtmp69, ptr %res, align 4
  br label %ifcont70

ifcont70:                                         ; preds = %then67, %ifcont61
  %c71 = load ptr, ptr %c, align 8
  %str172 = load %struct.NpkString, ptr %c71, align 8
  %str273 = load %struct.NpkString, ptr @.str.70, align 8
  %equals74 = call i1 @npk_string_equals(%struct.NpkString %str172, %struct.NpkString %str273)
  %ifcond75 = icmp ne i1 %equals74, false
  br i1 %ifcond75, label %then76, label %ifcont79

then76:                                           ; preds = %ifcont70
  %res77 = load i32, ptr %res, align 4
  %addtmp78 = add i32 %res77, 7
  store i32 %addtmp78, ptr %res, align 4
  br label %ifcont79

ifcont79:                                         ; preds = %then76, %ifcont70
  %c80 = load ptr, ptr %c, align 8
  %str181 = load %struct.NpkString, ptr %c80, align 8
  %str282 = load %struct.NpkString, ptr @.str.72, align 8
  %equals83 = call i1 @npk_string_equals(%struct.NpkString %str181, %struct.NpkString %str282)
  %ifcond84 = icmp ne i1 %equals83, false
  br i1 %ifcond84, label %then85, label %ifcont88

then85:                                           ; preds = %ifcont79
  %res86 = load i32, ptr %res, align 4
  %addtmp87 = add i32 %res86, 8
  store i32 %addtmp87, ptr %res, align 4
  br label %ifcont88

ifcont88:                                         ; preds = %then85, %ifcont79
  %c89 = load ptr, ptr %c, align 8
  %str190 = load %struct.NpkString, ptr %c89, align 8
  %str291 = load %struct.NpkString, ptr @.str.74, align 8
  %equals92 = call i1 @npk_string_equals(%struct.NpkString %str190, %struct.NpkString %str291)
  %ifcond93 = icmp ne i1 %equals92, false
  br i1 %ifcond93, label %then94, label %ifcont97

then94:                                           ; preds = %ifcont88
  %res95 = load i32, ptr %res, align 4
  %addtmp96 = add i32 %res95, 9
  store i32 %addtmp96, ptr %res, align 4
  br label %ifcont97

ifcont97:                                         ; preds = %then94, %ifcont88
  %i98 = load i64, ptr %i, align 4
  %addtmp99 = add i64 %i98, 1
  store i64 %addtmp99, ptr %i, align 4
  call void @npk_gc_safepoint()
  br label %whilecond

afterwhile:                                       ; preds = %whilecond
  %res100 = load i32, ptr %res, align 4
  %sign101 = load i32, ptr %sign, align 4
  %multmp102 = mul i32 %res100, %sign101
  %result.val103 = insertvalue { i32, ptr, i8 } undef, i32 %multmp102, 0
  %result.err104 = insertvalue { i32, ptr, i8 } %result.val103, ptr null, 1
  %result.is_error105 = insertvalue { i32, ptr, i8 } %result.err104, i8 0, 2
  ret { i32, ptr, i8 } %result.is_error105
}

define linkonce_odr { ptr, ptr, i8 } @nitpick_args.args_at(ptr %args, i32 %n) {
entry:
  %n.addr = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4
  %n1 = load i32, ptr %n.addr, align 4
  %calltmp = call { ptr, ptr, i8 } @nitpick_args._args_token(ptr %args, i32 %n1)
  %raw.value = extractvalue { ptr, ptr, i8 } %calltmp, 0
  %result.val = insertvalue { ptr, ptr, i8 } undef, ptr %raw.value, 0
  %result.err = insertvalue { ptr, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { ptr, ptr, i8 } %result.err, i8 0, 2
  ret { ptr, ptr, i8 } %result.is_error
}

define linkonce_odr { ptr, ptr, i8 } @nitpick_args.args_program(ptr %args) {
entry:
  %calltmp = call { ptr, ptr, i8 } @nitpick_args._args_token(ptr %args, i32 0)
  %raw.value = extractvalue { ptr, ptr, i8 } %calltmp, 0
  %result.val = insertvalue { ptr, ptr, i8 } undef, ptr %raw.value, 0
  %result.err = insertvalue { ptr, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { ptr, ptr, i8 } %result.err, i8 0, 2
  ret { ptr, ptr, i8 } %result.is_error
}

define linkonce_odr { i32, ptr, i8 } @nitpick_args.args_count(ptr %args) {
entry:
  %len = alloca i64, align 8
  %str = load %struct.NpkString, ptr %args, align 8
  %length = extractvalue %struct.NpkString %str, 1
  store i64 %length, ptr %len, align 4
  %pipes = alloca i64, align 8
  store i64 0, ptr %pipes, align 4
  %i = alloca i64, align 8
  store i64 0, ptr %i, align 4
  %count = alloca i64, align 8
  store i64 0, ptr %count, align 4
  %ch = alloca ptr, align 8
  store ptr @.str.76, ptr %ch, align 8
  br label %whilecond

whilecond:                                        ; preds = %ifcont, %entry
  %i1 = load i64, ptr %i, align 4
  %len2 = load i64, ptr %len, align 4
  %lttmp = icmp slt i64 %i1, %len2
  %whilecond3 = icmp ne i1 %lttmp, false
  br i1 %whilecond3, label %whilebody, label %afterwhile

whilebody:                                        ; preds = %whilecond
  %i4 = load i64, ptr %i, align 4
  %i5 = load i64, ptr %i, align 4
  %addtmp = add i64 %i5, 1
  %substr_result = call ptr @npk_string_substring_simple(ptr %args, i64 %i4, i64 %addtmp)
  store ptr %substr_result, ptr %ch, align 8
  %ch6 = load ptr, ptr %ch, align 8
  %str1 = load %struct.NpkString, ptr %ch6, align 8
  %str2 = load %struct.NpkString, ptr @.str.78, align 8
  %equals = call i1 @npk_string_equals(%struct.NpkString %str1, %struct.NpkString %str2)
  %ifcond = icmp ne i1 %equals, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %whilebody
  %pipes7 = load i64, ptr %pipes, align 4
  %addtmp8 = add i64 %pipes7, 1
  store i64 %addtmp8, ptr %pipes, align 4
  br label %ifcont

ifcont:                                           ; preds = %then, %whilebody
  %i9 = load i64, ptr %i, align 4
  %addtmp10 = add i64 %i9, 1
  store i64 %addtmp10, ptr %i, align 4
  call void @npk_gc_safepoint()
  br label %whilecond

afterwhile:                                       ; preds = %whilecond
  %pipes11 = load i64, ptr %pipes, align 4
  %subtmp = sub i64 %pipes11, 2
  store i64 %subtmp, ptr %count, align 4
  %count12 = load i64, ptr %count, align 4
  %lttmp13 = icmp slt i64 %count12, 0
  %ifcond14 = icmp ne i1 %lttmp13, false
  br i1 %ifcond14, label %then15, label %ifcont16

then15:                                           ; preds = %afterwhile
  ret { i32, ptr, i8 } zeroinitializer

ifcont16:                                         ; preds = %afterwhile
  %count17 = load i64, ptr %count, align 4
  %cast.trunc = trunc i64 %count17 to i32
  %result.val = insertvalue { i32, ptr, i8 } undef, i32 %cast.trunc, 0
  %result.err = insertvalue { i32, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i32, ptr, i8 } %result.err, i8 0, 2
  ret { i32, ptr, i8 } %result.is_error
}

define linkonce_odr { %ArgParser, ptr, i8 } @nitpick_args.Parser_create() {
entry:
  %p = alloca %ArgParser, align 8
  %keys.ptr = getelementptr inbounds nuw %ArgParser, ptr %p, i32 0, i32 0
  store ptr @.str.80, ptr %keys.ptr, align 8
  %descs.ptr = getelementptr inbounds nuw %ArgParser, ptr %p, i32 0, i32 1
  store ptr @.str.82, ptr %descs.ptr, align 8
  %types.ptr = getelementptr inbounds nuw %ArgParser, ptr %p, i32 0, i32 2
  store ptr @.str.84, ptr %types.ptr, align 8
  %p1 = load %ArgParser, ptr %p, align 8
  %result.val = insertvalue { %ArgParser, ptr, i8 } undef, %ArgParser %p1, 0
  %result.err = insertvalue { %ArgParser, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { %ArgParser, ptr, i8 } %result.err, i8 0, 2
  ret { %ArgParser, ptr, i8 } %result.is_error
}

define linkonce_odr { %ArgParser, ptr, i8 } @nitpick_args.Parser_add_flag(%ArgParser %p, ptr %key, ptr %desc) {
entry:
  %p_alloca = alloca %ArgParser, align 8
  store %ArgParser %p, ptr %p_alloca, align 8
  %out = alloca %ArgParser, align 8
  %p1 = load %ArgParser, ptr %p_alloca, align 8
  store %ArgParser %p1, ptr %out, align 8
  %out2 = load %ArgParser, ptr %out, align 8
  %keys = extractvalue %ArgParser %out2, 0
  %concat_str = call ptr @npk_string_concat_simple(ptr %key, ptr @.str.86)
  %concat_str3 = call ptr @npk_string_concat_simple(ptr %keys, ptr %concat_str)
  %keys.ptr = getelementptr inbounds nuw %ArgParser, ptr %out, i32 0, i32 0
  store ptr %concat_str3, ptr %keys.ptr, align 8
  %out4 = load %ArgParser, ptr %out, align 8
  %descs = extractvalue %ArgParser %out4, 1
  %concat_str5 = call ptr @npk_string_concat_simple(ptr %desc, ptr @.str.88)
  %concat_str6 = call ptr @npk_string_concat_simple(ptr %descs, ptr %concat_str5)
  %descs.ptr = getelementptr inbounds nuw %ArgParser, ptr %out, i32 0, i32 1
  store ptr %concat_str6, ptr %descs.ptr, align 8
  %out7 = load %ArgParser, ptr %out, align 8
  %types = extractvalue %ArgParser %out7, 2
  %concat_str8 = call ptr @npk_string_concat_simple(ptr %types, ptr @.str.90)
  %types.ptr = getelementptr inbounds nuw %ArgParser, ptr %out, i32 0, i32 2
  store ptr %concat_str8, ptr %types.ptr, align 8
  %out9 = load %ArgParser, ptr %out, align 8
  %result.val = insertvalue { %ArgParser, ptr, i8 } undef, %ArgParser %out9, 0
  %result.err = insertvalue { %ArgParser, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { %ArgParser, ptr, i8 } %result.err, i8 0, 2
  ret { %ArgParser, ptr, i8 } %result.is_error
}

define linkonce_odr { %ArgParser, ptr, i8 } @nitpick_args.Parser_add_option(%ArgParser %p, ptr %key, ptr %desc) {
entry:
  %p_alloca = alloca %ArgParser, align 8
  store %ArgParser %p, ptr %p_alloca, align 8
  %out = alloca %ArgParser, align 8
  %p1 = load %ArgParser, ptr %p_alloca, align 8
  store %ArgParser %p1, ptr %out, align 8
  %out2 = load %ArgParser, ptr %out, align 8
  %keys = extractvalue %ArgParser %out2, 0
  %concat_str = call ptr @npk_string_concat_simple(ptr %key, ptr @.str.92)
  %concat_str3 = call ptr @npk_string_concat_simple(ptr %keys, ptr %concat_str)
  %keys.ptr = getelementptr inbounds nuw %ArgParser, ptr %out, i32 0, i32 0
  store ptr %concat_str3, ptr %keys.ptr, align 8
  %out4 = load %ArgParser, ptr %out, align 8
  %descs = extractvalue %ArgParser %out4, 1
  %concat_str5 = call ptr @npk_string_concat_simple(ptr %desc, ptr @.str.94)
  %concat_str6 = call ptr @npk_string_concat_simple(ptr %descs, ptr %concat_str5)
  %descs.ptr = getelementptr inbounds nuw %ArgParser, ptr %out, i32 0, i32 1
  store ptr %concat_str6, ptr %descs.ptr, align 8
  %out7 = load %ArgParser, ptr %out, align 8
  %types = extractvalue %ArgParser %out7, 2
  %concat_str8 = call ptr @npk_string_concat_simple(ptr %types, ptr @.str.96)
  %types.ptr = getelementptr inbounds nuw %ArgParser, ptr %out, i32 0, i32 2
  store ptr %concat_str8, ptr %types.ptr, align 8
  %out9 = load %ArgParser, ptr %out, align 8
  %result.val = insertvalue { %ArgParser, ptr, i8 } undef, %ArgParser %out9, 0
  %result.err = insertvalue { %ArgParser, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { %ArgParser, ptr, i8 } %result.err, i8 0, 2
  ret { %ArgParser, ptr, i8 } %result.is_error
}

define linkonce_odr { ptr, ptr, i8 } @nitpick_args.args_make1(ptr %a0) {
entry:
  %concat_str = call ptr @npk_string_concat_simple(ptr %a0, ptr @.str.99)
  %concat_str1 = call ptr @npk_string_concat_simple(ptr @.str.98, ptr %concat_str)
  %result.val = insertvalue { ptr, ptr, i8 } undef, ptr %concat_str1, 0
  %result.err = insertvalue { ptr, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { ptr, ptr, i8 } %result.err, i8 0, 2
  ret { ptr, ptr, i8 } %result.is_error
}

define linkonce_odr { ptr, ptr, i8 } @nitpick_args.args_make2(ptr %a0, ptr %a1) {
entry:
  %b = alloca ptr, align 8
  %calltmp = call { ptr, ptr, i8 } @nitpick_args.args_make1(ptr %a0)
  %raw.value = extractvalue { ptr, ptr, i8 } %calltmp, 0
  store ptr %raw.value, ptr %b, align 8
  %b1 = load ptr, ptr %b, align 8
  %concat_str = call ptr @npk_string_concat_simple(ptr %a1, ptr @.str.101)
  %concat_str2 = call ptr @npk_string_concat_simple(ptr %b1, ptr %concat_str)
  %result.val = insertvalue { ptr, ptr, i8 } undef, ptr %concat_str2, 0
  %result.err = insertvalue { ptr, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { ptr, ptr, i8 } %result.err, i8 0, 2
  ret { ptr, ptr, i8 } %result.is_error
}

define linkonce_odr { ptr, ptr, i8 } @nitpick_args.args_make3(ptr %a0, ptr %a1, ptr %a2) {
entry:
  %b = alloca ptr, align 8
  %calltmp = call { ptr, ptr, i8 } @nitpick_args.args_make2(ptr %a0, ptr %a1)
  %raw.value = extractvalue { ptr, ptr, i8 } %calltmp, 0
  store ptr %raw.value, ptr %b, align 8
  %b1 = load ptr, ptr %b, align 8
  %concat_str = call ptr @npk_string_concat_simple(ptr %a2, ptr @.str.103)
  %concat_str2 = call ptr @npk_string_concat_simple(ptr %b1, ptr %concat_str)
  %result.val = insertvalue { ptr, ptr, i8 } undef, ptr %concat_str2, 0
  %result.err = insertvalue { ptr, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { ptr, ptr, i8 } %result.err, i8 0, 2
  ret { ptr, ptr, i8 } %result.is_error
}

define linkonce_odr { ptr, ptr, i8 } @nitpick_args.args_make4(ptr %a0, ptr %a1, ptr %a2, ptr %a3) {
entry:
  %b = alloca ptr, align 8
  %calltmp = call { ptr, ptr, i8 } @nitpick_args.args_make3(ptr %a0, ptr %a1, ptr %a2)
  %raw.value = extractvalue { ptr, ptr, i8 } %calltmp, 0
  store ptr %raw.value, ptr %b, align 8
  %b1 = load ptr, ptr %b, align 8
  %concat_str = call ptr @npk_string_concat_simple(ptr %a3, ptr @.str.105)
  %concat_str2 = call ptr @npk_string_concat_simple(ptr %b1, ptr %concat_str)
  %result.val = insertvalue { ptr, ptr, i8 } undef, ptr %concat_str2, 0
  %result.err = insertvalue { ptr, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { ptr, ptr, i8 } %result.err, i8 0, 2
  ret { ptr, ptr, i8 } %result.is_error
}

define linkonce_odr { ptr, ptr, i8 } @nitpick_args.args_make5(ptr %a0, ptr %a1, ptr %a2, ptr %a3, ptr %a4) {
entry:
  %b = alloca ptr, align 8
  %calltmp = call { ptr, ptr, i8 } @nitpick_args.args_make4(ptr %a0, ptr %a1, ptr %a2, ptr %a3)
  %raw.value = extractvalue { ptr, ptr, i8 } %calltmp, 0
  store ptr %raw.value, ptr %b, align 8
  %b1 = load ptr, ptr %b, align 8
  %concat_str = call ptr @npk_string_concat_simple(ptr %a4, ptr @.str.107)
  %concat_str2 = call ptr @npk_string_concat_simple(ptr %b1, ptr %concat_str)
  %result.val = insertvalue { ptr, ptr, i8 } undef, ptr %concat_str2, 0
  %result.err = insertvalue { ptr, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { ptr, ptr, i8 } %result.err, i8 0, 2
  ret { ptr, ptr, i8 } %result.is_error
}

define linkonce_odr { ptr, ptr, i8 } @nitpick_args.args_make6(ptr %a0, ptr %a1, ptr %a2, ptr %a3, ptr %a4, ptr %a5) {
entry:
  %b = alloca ptr, align 8
  %calltmp = call { ptr, ptr, i8 } @nitpick_args.args_make5(ptr %a0, ptr %a1, ptr %a2, ptr %a3, ptr %a4)
  %raw.value = extractvalue { ptr, ptr, i8 } %calltmp, 0
  store ptr %raw.value, ptr %b, align 8
  %b1 = load ptr, ptr %b, align 8
  %concat_str = call ptr @npk_string_concat_simple(ptr %a5, ptr @.str.109)
  %concat_str2 = call ptr @npk_string_concat_simple(ptr %b1, ptr %concat_str)
  %result.val = insertvalue { ptr, ptr, i8 } undef, ptr %concat_str2, 0
  %result.err = insertvalue { ptr, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { ptr, ptr, i8 } %result.err, i8 0, 2
  ret { ptr, ptr, i8 } %result.is_error
}

declare i64 @fopen(ptr, ptr)

declare i32 @fgetc(i64)

declare i32 @fclose(i64)

declare i64 @npk_string_index_of_simple(ptr, ptr)

declare i1 @npk_string_contains(%struct.NpkString, %struct.NpkString)

declare i1 @npk_string_equals(%struct.NpkString, %struct.NpkString)

define linkonce_odr i32 @__nitpick_args_init() {
entry:
  ret i32 0
}

declare i64 @npk_handle_arena_create()

declare ptr @npk_handle_arena_destroy(i64)

declare i64 @npk_handle_alloc(i64, i64)

declare i64 @npk_handle_deref(i64)

declare ptr @npk_handle_free(i64)

define linkonce_odr { i64, ptr, i8 } @handle.HandleArena_create() {
entry:
  %calltmp = call i64 @npk_handle_arena_create()
  %result.val = insertvalue { i64, ptr, i8 } undef, i64 %calltmp, 0
  %result.err = insertvalue { i64, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i64, ptr, i8 } %result.err, i8 0, 2
  ret { i64, ptr, i8 } %result.is_error
}

define linkonce_odr { i32, ptr, i8 } @handle.HandleArena_destroy(i64 %arena) {
entry:
  %arena.addr = alloca i64, align 8
  store i64 %arena, ptr %arena.addr, align 4
  %arena1 = load i64, ptr %arena.addr, align 4
  %calltmp = call ptr @npk_handle_arena_destroy(i64 %arena1)
  ret { i32, ptr, i8 } zeroinitializer
}

define linkonce_odr { i64, ptr, i8 } @handle.HandleArena_alloc(i64 %arena, i64 %size) {
entry:
  %arena.addr = alloca i64, align 8
  store i64 %arena, ptr %arena.addr, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, ptr %size.addr, align 4
  %arena1 = load i64, ptr %arena.addr, align 4
  %size2 = load i64, ptr %size.addr, align 4
  %calltmp = call i64 @npk_handle_alloc(i64 %arena1, i64 %size2)
  %result.val = insertvalue { i64, ptr, i8 } undef, i64 %calltmp, 0
  %result.err = insertvalue { i64, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i64, ptr, i8 } %result.err, i8 0, 2
  ret { i64, ptr, i8 } %result.is_error
}

define linkonce_odr { i64, ptr, i8 } @handle.HandleArena_deref(i64 %h) {
entry:
  %h.addr = alloca i64, align 8
  store i64 %h, ptr %h.addr, align 4
  %h1 = load i64, ptr %h.addr, align 4
  %calltmp = call i64 @npk_handle_deref(i64 %h1)
  %result.val = insertvalue { i64, ptr, i8 } undef, i64 %calltmp, 0
  %result.err = insertvalue { i64, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i64, ptr, i8 } %result.err, i8 0, 2
  ret { i64, ptr, i8 } %result.is_error
}

define linkonce_odr { i32, ptr, i8 } @handle.HandleArena_free(i64 %h) {
entry:
  %h.addr = alloca i64, align 8
  store i64 %h, ptr %h.addr, align 4
  %h1 = load i64, ptr %h.addr, align 4
  %calltmp = call ptr @npk_handle_free(i64 %h1)
  ret { i32, ptr, i8 } zeroinitializer
}

define linkonce_odr i32 @__handle_init() {
entry:
  ret i32 0
}

define linkonce_odr { i64, ptr, i8 } @singly.sl_node_val(i64 %n) {
entry:
  %n.addr = alloca i64, align 8
  store i64 %n, ptr %n.addr, align 4
  %n1 = load i64, ptr %n.addr, align 4
  %calltmp = call { i64, ptr, i8 } @handle.HandleArena_deref(i64 %n1)
  %raw.value = extractvalue { i64, ptr, i8 } %calltmp, 0
  %calltmp2 = call i64 @nitpick_libc_mem_read_i64(i64 %raw.value, i64 0)
  %result.val = insertvalue { i64, ptr, i8 } undef, i64 %calltmp2, 0
  %result.err = insertvalue { i64, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i64, ptr, i8 } %result.err, i8 0, 2
  ret { i64, ptr, i8 } %result.is_error
}

define linkonce_odr { i64, ptr, i8 } @singly.sl_node_next(i64 %n) {
entry:
  %n.addr = alloca i64, align 8
  store i64 %n, ptr %n.addr, align 4
  %n1 = load i64, ptr %n.addr, align 4
  %calltmp = call { i64, ptr, i8 } @handle.HandleArena_deref(i64 %n1)
  %raw.value = extractvalue { i64, ptr, i8 } %calltmp, 0
  %calltmp2 = call i64 @nitpick_libc_mem_read_i64(i64 %raw.value, i64 8)
  %result.val = insertvalue { i64, ptr, i8 } undef, i64 %calltmp2, 0
  %result.err = insertvalue { i64, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i64, ptr, i8 } %result.err, i8 0, 2
  ret { i64, ptr, i8 } %result.is_error
}

define linkonce_odr void @singly.sl_node_set_val(i64 %n, i64 %v) {
entry:
  %n.addr = alloca i64, align 8
  store i64 %n, ptr %n.addr, align 4
  %v.addr = alloca i64, align 8
  store i64 %v, ptr %v.addr, align 4
  %n1 = load i64, ptr %n.addr, align 4
  %calltmp = call { i64, ptr, i8 } @handle.HandleArena_deref(i64 %n1)
  %raw.value = extractvalue { i64, ptr, i8 } %calltmp, 0
  %v2 = load i64, ptr %v.addr, align 4
  %calltmp3 = call i32 @nitpick_libc_mem_write_i64(i64 %raw.value, i64 0, i64 %v2)
  ret void
}

define linkonce_odr void @singly.sl_node_set_next(i64 %n, i64 %v) {
entry:
  %n.addr = alloca i64, align 8
  store i64 %n, ptr %n.addr, align 4
  %v.addr = alloca i64, align 8
  store i64 %v, ptr %v.addr, align 4
  %n1 = load i64, ptr %n.addr, align 4
  %calltmp = call { i64, ptr, i8 } @handle.HandleArena_deref(i64 %n1)
  %raw.value = extractvalue { i64, ptr, i8 } %calltmp, 0
  %v2 = load i64, ptr %v.addr, align 4
  %calltmp3 = call i32 @nitpick_libc_mem_write_i64(i64 %raw.value, i64 8, i64 %v2)
  ret void
}

define linkonce_odr { i64, ptr, i8 } @singly.sl_alloc_node(i64 %arena, i64 %val) {
entry:
  %arena.addr = alloca i64, align 8
  store i64 %arena, ptr %arena.addr, align 4
  %val.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 4
  %n = alloca i64, align 8
  %arena1 = load i64, ptr %arena.addr, align 4
  %calltmp = call { i64, ptr, i8 } @handle.HandleArena_alloc(i64 %arena1, i64 16)
  %raw.value = extractvalue { i64, ptr, i8 } %calltmp, 0
  store i64 %raw.value, ptr %n, align 4
  %n_val = alloca i64, align 8
  %n2 = load i64, ptr %n, align 4
  store i64 %n2, ptr %n_val, align 4
  %n_val3 = load i64, ptr %n_val, align 4
  %val4 = load i64, ptr %val.addr, align 4
  call void @singly.sl_node_set_val(i64 %n_val3, i64 %val4)
  %n_val5 = load i64, ptr %n_val, align 4
  call void @singly.sl_node_set_next(i64 %n_val5, i64 0)
  %n_val6 = load i64, ptr %n_val, align 4
  %result.val = insertvalue { i64, ptr, i8 } undef, i64 %n_val6, 0
  %result.err = insertvalue { i64, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i64, ptr, i8 } %result.err, i8 0, 2
  ret { i64, ptr, i8 } %result.is_error
}

define linkonce_odr { i64, ptr, i8 } @singly.sl_head(i64 %sl) {
entry:
  %sl.addr = alloca i64, align 8
  store i64 %sl, ptr %sl.addr, align 4
  %sl1 = load i64, ptr %sl.addr, align 4
  %calltmp = call { i64, ptr, i8 } @handle.HandleArena_deref(i64 %sl1)
  %raw.value = extractvalue { i64, ptr, i8 } %calltmp, 0
  %calltmp2 = call i64 @nitpick_libc_mem_read_i64(i64 %raw.value, i64 0)
  %result.val = insertvalue { i64, ptr, i8 } undef, i64 %calltmp2, 0
  %result.err = insertvalue { i64, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i64, ptr, i8 } %result.err, i8 0, 2
  ret { i64, ptr, i8 } %result.is_error
}

define linkonce_odr { i64, ptr, i8 } @singly.sl_tail(i64 %sl) {
entry:
  %sl.addr = alloca i64, align 8
  store i64 %sl, ptr %sl.addr, align 4
  %sl1 = load i64, ptr %sl.addr, align 4
  %calltmp = call { i64, ptr, i8 } @handle.HandleArena_deref(i64 %sl1)
  %raw.value = extractvalue { i64, ptr, i8 } %calltmp, 0
  %calltmp2 = call i64 @nitpick_libc_mem_read_i64(i64 %raw.value, i64 8)
  %result.val = insertvalue { i64, ptr, i8 } undef, i64 %calltmp2, 0
  %result.err = insertvalue { i64, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i64, ptr, i8 } %result.err, i8 0, 2
  ret { i64, ptr, i8 } %result.is_error
}

define linkonce_odr { i64, ptr, i8 } @singly.sl_size(i64 %sl) {
entry:
  %sl.addr = alloca i64, align 8
  store i64 %sl, ptr %sl.addr, align 4
  %sl1 = load i64, ptr %sl.addr, align 4
  %calltmp = call { i64, ptr, i8 } @handle.HandleArena_deref(i64 %sl1)
  %raw.value = extractvalue { i64, ptr, i8 } %calltmp, 0
  %calltmp2 = call i64 @nitpick_libc_mem_read_i64(i64 %raw.value, i64 16)
  %result.val = insertvalue { i64, ptr, i8 } undef, i64 %calltmp2, 0
  %result.err = insertvalue { i64, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i64, ptr, i8 } %result.err, i8 0, 2
  ret { i64, ptr, i8 } %result.is_error
}

define linkonce_odr { i64, ptr, i8 } @singly.sl_arena(i64 %sl) {
entry:
  %sl.addr = alloca i64, align 8
  store i64 %sl, ptr %sl.addr, align 4
  %sl1 = load i64, ptr %sl.addr, align 4
  %calltmp = call { i64, ptr, i8 } @handle.HandleArena_deref(i64 %sl1)
  %raw.value = extractvalue { i64, ptr, i8 } %calltmp, 0
  %calltmp2 = call i64 @nitpick_libc_mem_read_i64(i64 %raw.value, i64 24)
  %result.val = insertvalue { i64, ptr, i8 } undef, i64 %calltmp2, 0
  %result.err = insertvalue { i64, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i64, ptr, i8 } %result.err, i8 0, 2
  ret { i64, ptr, i8 } %result.is_error
}

define linkonce_odr void @singly.sl_set_head(i64 %sl, i64 %v) {
entry:
  %sl.addr = alloca i64, align 8
  store i64 %sl, ptr %sl.addr, align 4
  %v.addr = alloca i64, align 8
  store i64 %v, ptr %v.addr, align 4
  %sl1 = load i64, ptr %sl.addr, align 4
  %calltmp = call { i64, ptr, i8 } @handle.HandleArena_deref(i64 %sl1)
  %raw.value = extractvalue { i64, ptr, i8 } %calltmp, 0
  %v2 = load i64, ptr %v.addr, align 4
  %calltmp3 = call i32 @nitpick_libc_mem_write_i64(i64 %raw.value, i64 0, i64 %v2)
  ret void
}

define linkonce_odr void @singly.sl_set_tail(i64 %sl, i64 %v) {
entry:
  %sl.addr = alloca i64, align 8
  store i64 %sl, ptr %sl.addr, align 4
  %v.addr = alloca i64, align 8
  store i64 %v, ptr %v.addr, align 4
  %sl1 = load i64, ptr %sl.addr, align 4
  %calltmp = call { i64, ptr, i8 } @handle.HandleArena_deref(i64 %sl1)
  %raw.value = extractvalue { i64, ptr, i8 } %calltmp, 0
  %v2 = load i64, ptr %v.addr, align 4
  %calltmp3 = call i32 @nitpick_libc_mem_write_i64(i64 %raw.value, i64 8, i64 %v2)
  ret void
}

define linkonce_odr void @singly.sl_set_size(i64 %sl, i64 %v) {
entry:
  %sl.addr = alloca i64, align 8
  store i64 %sl, ptr %sl.addr, align 4
  %v.addr = alloca i64, align 8
  store i64 %v, ptr %v.addr, align 4
  %sl1 = load i64, ptr %sl.addr, align 4
  %calltmp = call { i64, ptr, i8 } @handle.HandleArena_deref(i64 %sl1)
  %raw.value = extractvalue { i64, ptr, i8 } %calltmp, 0
  %v2 = load i64, ptr %v.addr, align 4
  %calltmp3 = call i32 @nitpick_libc_mem_write_i64(i64 %raw.value, i64 16, i64 %v2)
  ret void
}

define linkonce_odr void @singly.sl_set_arena(i64 %sl, i64 %v) {
entry:
  %sl.addr = alloca i64, align 8
  store i64 %sl, ptr %sl.addr, align 4
  %v.addr = alloca i64, align 8
  store i64 %v, ptr %v.addr, align 4
  %sl1 = load i64, ptr %sl.addr, align 4
  %calltmp = call { i64, ptr, i8 } @handle.HandleArena_deref(i64 %sl1)
  %raw.value = extractvalue { i64, ptr, i8 } %calltmp, 0
  %v2 = load i64, ptr %v.addr, align 4
  %calltmp3 = call i32 @nitpick_libc_mem_write_i64(i64 %raw.value, i64 24, i64 %v2)
  ret void
}

define linkonce_odr { i64, ptr, i8 } @singly.slist_create() {
entry:
  %arena = alloca i64, align 8
  %calltmp = call { i64, ptr, i8 } @handle.HandleArena_create()
  %raw.value = extractvalue { i64, ptr, i8 } %calltmp, 0
  store i64 %raw.value, ptr %arena, align 4
  %sl = alloca i64, align 8
  %arena1 = load i64, ptr %arena, align 4
  %calltmp2 = call { i64, ptr, i8 } @handle.HandleArena_alloc(i64 %arena1, i64 32)
  %raw.value3 = extractvalue { i64, ptr, i8 } %calltmp2, 0
  store i64 %raw.value3, ptr %sl, align 4
  %sl_val = alloca i64, align 8
  %sl4 = load i64, ptr %sl, align 4
  store i64 %sl4, ptr %sl_val, align 4
  %sl_val5 = load i64, ptr %sl_val, align 4
  call void @singly.sl_set_head(i64 %sl_val5, i64 0)
  %sl_val6 = load i64, ptr %sl_val, align 4
  call void @singly.sl_set_tail(i64 %sl_val6, i64 0)
  %sl_val7 = load i64, ptr %sl_val, align 4
  call void @singly.sl_set_size(i64 %sl_val7, i64 0)
  %sl_val8 = load i64, ptr %sl_val, align 4
  %arena9 = load i64, ptr %arena, align 4
  call void @singly.sl_set_arena(i64 %sl_val8, i64 %arena9)
  %sl_val10 = load i64, ptr %sl_val, align 4
  %result.val = insertvalue { i64, ptr, i8 } undef, i64 %sl_val10, 0
  %result.err = insertvalue { i64, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i64, ptr, i8 } %result.err, i8 0, 2
  ret { i64, ptr, i8 } %result.is_error
}

define linkonce_odr { i32, ptr, i8 } @singly.slist_push_front(i64 %sl, i64 %val) {
entry:
  %sl.addr = alloca i64, align 8
  store i64 %sl, ptr %sl.addr, align 4
  %val.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 4
  %arena = alloca i64, align 8
  %sl1 = load i64, ptr %sl.addr, align 4
  %calltmp = call { i64, ptr, i8 } @singly.sl_arena(i64 %sl1)
  %raw.value = extractvalue { i64, ptr, i8 } %calltmp, 0
  store i64 %raw.value, ptr %arena, align 4
  %n = alloca i64, align 8
  %arena2 = load i64, ptr %arena, align 4
  %val3 = load i64, ptr %val.addr, align 4
  %calltmp4 = call { i64, ptr, i8 } @singly.sl_alloc_node(i64 %arena2, i64 %val3)
  %raw.value5 = extractvalue { i64, ptr, i8 } %calltmp4, 0
  store i64 %raw.value5, ptr %n, align 4
  %head = alloca i64, align 8
  %sl6 = load i64, ptr %sl.addr, align 4
  %calltmp7 = call { i64, ptr, i8 } @singly.sl_head(i64 %sl6)
  %raw.value8 = extractvalue { i64, ptr, i8 } %calltmp7, 0
  store i64 %raw.value8, ptr %head, align 4
  %n9 = load i64, ptr %n, align 4
  %head10 = load i64, ptr %head, align 4
  call void @singly.sl_node_set_next(i64 %n9, i64 %head10)
  %sl11 = load i64, ptr %sl.addr, align 4
  %n12 = load i64, ptr %n, align 4
  call void @singly.sl_set_head(i64 %sl11, i64 %n12)
  %head13 = load i64, ptr %head, align 4
  %eqtmp = icmp eq i64 %head13, 0
  %ifcond = icmp ne i1 %eqtmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %entry
  %sl14 = load i64, ptr %sl.addr, align 4
  %n15 = load i64, ptr %n, align 4
  call void @singly.sl_set_tail(i64 %sl14, i64 %n15)
  br label %ifcont

ifcont:                                           ; preds = %then, %entry
  %sl16 = load i64, ptr %sl.addr, align 4
  %sl17 = load i64, ptr %sl.addr, align 4
  %calltmp18 = call { i64, ptr, i8 } @singly.sl_size(i64 %sl17)
  %raw.value19 = extractvalue { i64, ptr, i8 } %calltmp18, 0
  %addtmp = add i64 %raw.value19, 1
  call void @singly.sl_set_size(i64 %sl16, i64 %addtmp)
  ret { i32, ptr, i8 } zeroinitializer
}

define linkonce_odr { i32, ptr, i8 } @singly.slist_push_back(i64 %sl, i64 %val) {
entry:
  %sl.addr = alloca i64, align 8
  store i64 %sl, ptr %sl.addr, align 4
  %val.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 4
  %arena = alloca i64, align 8
  %sl1 = load i64, ptr %sl.addr, align 4
  %calltmp = call { i64, ptr, i8 } @singly.sl_arena(i64 %sl1)
  %raw.value = extractvalue { i64, ptr, i8 } %calltmp, 0
  store i64 %raw.value, ptr %arena, align 4
  %n = alloca i64, align 8
  %arena2 = load i64, ptr %arena, align 4
  %val3 = load i64, ptr %val.addr, align 4
  %calltmp4 = call { i64, ptr, i8 } @singly.sl_alloc_node(i64 %arena2, i64 %val3)
  %raw.value5 = extractvalue { i64, ptr, i8 } %calltmp4, 0
  store i64 %raw.value5, ptr %n, align 4
  %tail = alloca i64, align 8
  %sl6 = load i64, ptr %sl.addr, align 4
  %calltmp7 = call { i64, ptr, i8 } @singly.sl_tail(i64 %sl6)
  %raw.value8 = extractvalue { i64, ptr, i8 } %calltmp7, 0
  store i64 %raw.value8, ptr %tail, align 4
  %tail9 = load i64, ptr %tail, align 4
  %eqtmp = icmp eq i64 %tail9, 0
  %ifcond = icmp ne i1 %eqtmp, false
  br i1 %ifcond, label %then, label %else

then:                                             ; preds = %entry
  %sl10 = load i64, ptr %sl.addr, align 4
  %n11 = load i64, ptr %n, align 4
  call void @singly.sl_set_head(i64 %sl10, i64 %n11)
  br label %ifcont

else:                                             ; preds = %entry
  %tail12 = load i64, ptr %tail, align 4
  %n13 = load i64, ptr %n, align 4
  call void @singly.sl_node_set_next(i64 %tail12, i64 %n13)
  br label %ifcont

ifcont:                                           ; preds = %else, %then
  %sl14 = load i64, ptr %sl.addr, align 4
  %n15 = load i64, ptr %n, align 4
  call void @singly.sl_set_tail(i64 %sl14, i64 %n15)
  %sl16 = load i64, ptr %sl.addr, align 4
  %sl17 = load i64, ptr %sl.addr, align 4
  %calltmp18 = call { i64, ptr, i8 } @singly.sl_size(i64 %sl17)
  %raw.value19 = extractvalue { i64, ptr, i8 } %calltmp18, 0
  %addtmp = add i64 %raw.value19, 1
  call void @singly.sl_set_size(i64 %sl16, i64 %addtmp)
  ret { i32, ptr, i8 } zeroinitializer
}

define linkonce_odr { i64, ptr, i8 } @singly.slist_pop_front(i64 %sl) {
entry:
  %sl.addr = alloca i64, align 8
  store i64 %sl, ptr %sl.addr, align 4
  %head = alloca i64, align 8
  %sl1 = load i64, ptr %sl.addr, align 4
  %calltmp = call { i64, ptr, i8 } @singly.sl_head(i64 %sl1)
  %raw.value = extractvalue { i64, ptr, i8 } %calltmp, 0
  store i64 %raw.value, ptr %head, align 4
  %head2 = load i64, ptr %head, align 4
  %eqtmp = icmp eq i64 %head2, 0
  %ifcond = icmp ne i1 %eqtmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %entry
  ret { i64, ptr, i8 } { i64 -1, ptr null, i8 0 }

ifcont:                                           ; preds = %entry
  %val = alloca i64, align 8
  %head3 = load i64, ptr %head, align 4
  %calltmp4 = call { i64, ptr, i8 } @singly.sl_node_val(i64 %head3)
  %raw.value5 = extractvalue { i64, ptr, i8 } %calltmp4, 0
  store i64 %raw.value5, ptr %val, align 4
  %next = alloca i64, align 8
  %head6 = load i64, ptr %head, align 4
  %calltmp7 = call { i64, ptr, i8 } @singly.sl_node_next(i64 %head6)
  %raw.value8 = extractvalue { i64, ptr, i8 } %calltmp7, 0
  store i64 %raw.value8, ptr %next, align 4
  %sl9 = load i64, ptr %sl.addr, align 4
  %next10 = load i64, ptr %next, align 4
  call void @singly.sl_set_head(i64 %sl9, i64 %next10)
  %next11 = load i64, ptr %next, align 4
  %eqtmp12 = icmp eq i64 %next11, 0
  %ifcond13 = icmp ne i1 %eqtmp12, false
  br i1 %ifcond13, label %then14, label %ifcont16

then14:                                           ; preds = %ifcont
  %sl15 = load i64, ptr %sl.addr, align 4
  call void @singly.sl_set_tail(i64 %sl15, i64 0)
  br label %ifcont16

ifcont16:                                         ; preds = %then14, %ifcont
  %sl17 = load i64, ptr %sl.addr, align 4
  %sl18 = load i64, ptr %sl.addr, align 4
  %calltmp19 = call { i64, ptr, i8 } @singly.sl_size(i64 %sl18)
  %raw.value20 = extractvalue { i64, ptr, i8 } %calltmp19, 0
  %subtmp = sub i64 %raw.value20, 1
  call void @singly.sl_set_size(i64 %sl17, i64 %subtmp)
  %head21 = load i64, ptr %head, align 4
  %calltmp22 = call { i32, ptr, i8 } @handle.HandleArena_free(i64 %head21)
  %raw.value23 = extractvalue { i32, ptr, i8 } %calltmp22, 0
  %val24 = load i64, ptr %val, align 4
  %result.val = insertvalue { i64, ptr, i8 } undef, i64 %val24, 0
  %result.err = insertvalue { i64, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i64, ptr, i8 } %result.err, i8 0, 2
  ret { i64, ptr, i8 } %result.is_error
}

define linkonce_odr { i64, ptr, i8 } @singly.slist_peek_front(i64 %sl) {
entry:
  %sl.addr = alloca i64, align 8
  store i64 %sl, ptr %sl.addr, align 4
  %head = alloca i64, align 8
  %sl1 = load i64, ptr %sl.addr, align 4
  %calltmp = call { i64, ptr, i8 } @singly.sl_head(i64 %sl1)
  %raw.value = extractvalue { i64, ptr, i8 } %calltmp, 0
  store i64 %raw.value, ptr %head, align 4
  %head2 = load i64, ptr %head, align 4
  %eqtmp = icmp eq i64 %head2, 0
  %ifcond = icmp ne i1 %eqtmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %entry
  ret { i64, ptr, i8 } { i64 -1, ptr null, i8 0 }

ifcont:                                           ; preds = %entry
  %head3 = load i64, ptr %head, align 4
  %calltmp4 = call { i64, ptr, i8 } @singly.sl_node_val(i64 %head3)
  %raw.value5 = extractvalue { i64, ptr, i8 } %calltmp4, 0
  %result.val = insertvalue { i64, ptr, i8 } undef, i64 %raw.value5, 0
  %result.err = insertvalue { i64, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i64, ptr, i8 } %result.err, i8 0, 2
  ret { i64, ptr, i8 } %result.is_error
}

define linkonce_odr { i64, ptr, i8 } @singly.slist_peek_back(i64 %sl) {
entry:
  %sl.addr = alloca i64, align 8
  store i64 %sl, ptr %sl.addr, align 4
  %tail = alloca i64, align 8
  %sl1 = load i64, ptr %sl.addr, align 4
  %calltmp = call { i64, ptr, i8 } @singly.sl_tail(i64 %sl1)
  %raw.value = extractvalue { i64, ptr, i8 } %calltmp, 0
  store i64 %raw.value, ptr %tail, align 4
  %tail2 = load i64, ptr %tail, align 4
  %eqtmp = icmp eq i64 %tail2, 0
  %ifcond = icmp ne i1 %eqtmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %entry
  ret { i64, ptr, i8 } { i64 -1, ptr null, i8 0 }

ifcont:                                           ; preds = %entry
  %tail3 = load i64, ptr %tail, align 4
  %calltmp4 = call { i64, ptr, i8 } @singly.sl_node_val(i64 %tail3)
  %raw.value5 = extractvalue { i64, ptr, i8 } %calltmp4, 0
  %result.val = insertvalue { i64, ptr, i8 } undef, i64 %raw.value5, 0
  %result.err = insertvalue { i64, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i64, ptr, i8 } %result.err, i8 0, 2
  ret { i64, ptr, i8 } %result.is_error
}

define linkonce_odr { i32, ptr, i8 } @singly.slist_contains(i64 %sl, i64 %val) {
entry:
  %sl.addr = alloca i64, align 8
  store i64 %sl, ptr %sl.addr, align 4
  %val.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 4
  %cur = alloca i64, align 8
  %sl1 = load i64, ptr %sl.addr, align 4
  %calltmp = call { i64, ptr, i8 } @singly.sl_head(i64 %sl1)
  %raw.value = extractvalue { i64, ptr, i8 } %calltmp, 0
  store i64 %raw.value, ptr %cur, align 4
  %sl2 = load i64, ptr %sl.addr, align 4
  %calltmp3 = call { i64, ptr, i8 } @singly.sl_size(i64 %sl2)
  %raw.value4 = extractvalue { i64, ptr, i8 } %calltmp3, 0
  br label %loop.cond

loop.cond:                                        ; preds = %loop.inc, %entry
  %"$" = phi i64 [ 0, %entry ], [ %"$.next", %loop.inc ]
  %"$5" = alloca i64, align 8
  store i64 %"$", ptr %"$5", align 4
  %loop.asc = icmp slt i64 %"$", %raw.value4
  %loop.desc = icmp sgt i64 %"$", %raw.value4
  %loop.cond6 = select i1 false, i1 %loop.desc, i1 %loop.asc
  br i1 %loop.cond6, label %loop.body, label %loop.end

loop.body:                                        ; preds = %loop.cond
  %cur7 = load i64, ptr %cur, align 4
  %eqtmp = icmp eq i64 %cur7, 0
  %ifcond = icmp ne i1 %eqtmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %loop.body
  ret { i32, ptr, i8 } zeroinitializer

ifcont:                                           ; preds = %loop.body
  %v = alloca i64, align 8
  %cur8 = load i64, ptr %cur, align 4
  %calltmp9 = call { i64, ptr, i8 } @singly.sl_node_val(i64 %cur8)
  %raw.value10 = extractvalue { i64, ptr, i8 } %calltmp9, 0
  store i64 %raw.value10, ptr %v, align 4
  %v11 = load i64, ptr %v, align 4
  %val12 = load i64, ptr %val.addr, align 4
  %eqtmp13 = icmp eq i64 %v11, %val12
  %ifcond14 = icmp ne i1 %eqtmp13, false
  br i1 %ifcond14, label %then15, label %ifcont16

then15:                                           ; preds = %ifcont
  ret { i32, ptr, i8 } { i32 1, ptr null, i8 0 }

ifcont16:                                         ; preds = %ifcont
  %cur17 = load i64, ptr %cur, align 4
  %calltmp18 = call { i64, ptr, i8 } @singly.sl_node_next(i64 %cur17)
  %raw.value19 = extractvalue { i64, ptr, i8 } %calltmp18, 0
  store i64 %raw.value19, ptr %cur, align 4
  br label %loop.inc

loop.inc:                                         ; preds = %ifcont16
  %"$20" = load i64, ptr %"$5", align 4
  %"$.next" = add i64 %"$20", 1
  call void @npk_gc_safepoint()
  br label %loop.cond

loop.end:                                         ; preds = %loop.cond
  ret { i32, ptr, i8 } zeroinitializer
}

define linkonce_odr { i32, ptr, i8 } @singly.slist_remove_first(i64 %sl, i64 %val) {
entry:
  %sl.addr = alloca i64, align 8
  store i64 %sl, ptr %sl.addr, align 4
  %val.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 4
  %cur = alloca i64, align 8
  %sl1 = load i64, ptr %sl.addr, align 4
  %calltmp = call { i64, ptr, i8 } @singly.sl_head(i64 %sl1)
  %raw.value = extractvalue { i64, ptr, i8 } %calltmp, 0
  store i64 %raw.value, ptr %cur, align 4
  %prev = alloca i64, align 8
  store i64 0, ptr %prev, align 4
  %sz = alloca i64, align 8
  %sl2 = load i64, ptr %sl.addr, align 4
  %calltmp3 = call { i64, ptr, i8 } @singly.sl_size(i64 %sl2)
  %raw.value4 = extractvalue { i64, ptr, i8 } %calltmp3, 0
  store i64 %raw.value4, ptr %sz, align 4
  %sz5 = load i64, ptr %sz, align 4
  br label %loop.cond

loop.cond:                                        ; preds = %loop.inc, %entry
  %"$" = phi i64 [ 0, %entry ], [ %"$.next", %loop.inc ]
  %"$6" = alloca i64, align 8
  store i64 %"$", ptr %"$6", align 4
  %loop.asc = icmp slt i64 %"$", %sz5
  %loop.desc = icmp sgt i64 %"$", %sz5
  %loop.cond7 = select i1 false, i1 %loop.desc, i1 %loop.asc
  br i1 %loop.cond7, label %loop.body, label %loop.end

loop.body:                                        ; preds = %loop.cond
  %cur8 = load i64, ptr %cur, align 4
  %eqtmp = icmp eq i64 %cur8, 0
  %ifcond = icmp ne i1 %eqtmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %loop.body
  ret { i32, ptr, i8 } { i32 -1, ptr null, i8 0 }

ifcont:                                           ; preds = %loop.body
  %v = alloca i64, align 8
  %cur9 = load i64, ptr %cur, align 4
  %calltmp10 = call { i64, ptr, i8 } @singly.sl_node_val(i64 %cur9)
  %raw.value11 = extractvalue { i64, ptr, i8 } %calltmp10, 0
  store i64 %raw.value11, ptr %v, align 4
  %v12 = load i64, ptr %v, align 4
  %val13 = load i64, ptr %val.addr, align 4
  %eqtmp14 = icmp eq i64 %v12, %val13
  %ifcond15 = icmp ne i1 %eqtmp14, false
  br i1 %ifcond15, label %then16, label %ifcont41

then16:                                           ; preds = %ifcont
  %next = alloca i64, align 8
  %cur17 = load i64, ptr %cur, align 4
  %calltmp18 = call { i64, ptr, i8 } @singly.sl_node_next(i64 %cur17)
  %raw.value19 = extractvalue { i64, ptr, i8 } %calltmp18, 0
  store i64 %raw.value19, ptr %next, align 4
  %prev20 = load i64, ptr %prev, align 4
  %eqtmp21 = icmp eq i64 %prev20, 0
  %ifcond22 = icmp ne i1 %eqtmp21, false
  br i1 %ifcond22, label %then23, label %else

then23:                                           ; preds = %then16
  %sl24 = load i64, ptr %sl.addr, align 4
  %next25 = load i64, ptr %next, align 4
  call void @singly.sl_set_head(i64 %sl24, i64 %next25)
  br label %ifcont28

else:                                             ; preds = %then16
  %prev26 = load i64, ptr %prev, align 4
  %next27 = load i64, ptr %next, align 4
  call void @singly.sl_node_set_next(i64 %prev26, i64 %next27)
  br label %ifcont28

ifcont28:                                         ; preds = %else, %then23
  %next29 = load i64, ptr %next, align 4
  %eqtmp30 = icmp eq i64 %next29, 0
  %ifcond31 = icmp ne i1 %eqtmp30, false
  br i1 %ifcond31, label %then32, label %ifcont35

then32:                                           ; preds = %ifcont28
  %sl33 = load i64, ptr %sl.addr, align 4
  %prev34 = load i64, ptr %prev, align 4
  call void @singly.sl_set_tail(i64 %sl33, i64 %prev34)
  br label %ifcont35

ifcont35:                                         ; preds = %then32, %ifcont28
  %sl36 = load i64, ptr %sl.addr, align 4
  %sz37 = load i64, ptr %sz, align 4
  %subtmp = sub i64 %sz37, 1
  call void @singly.sl_set_size(i64 %sl36, i64 %subtmp)
  %cur38 = load i64, ptr %cur, align 4
  %calltmp39 = call { i32, ptr, i8 } @handle.HandleArena_free(i64 %cur38)
  %raw.value40 = extractvalue { i32, ptr, i8 } %calltmp39, 0
  ret { i32, ptr, i8 } zeroinitializer

ifcont41:                                         ; preds = %ifcont
  %cur42 = load i64, ptr %cur, align 4
  store i64 %cur42, ptr %prev, align 4
  %cur43 = load i64, ptr %cur, align 4
  %calltmp44 = call { i64, ptr, i8 } @singly.sl_node_next(i64 %cur43)
  %raw.value45 = extractvalue { i64, ptr, i8 } %calltmp44, 0
  store i64 %raw.value45, ptr %cur, align 4
  br label %loop.inc

loop.inc:                                         ; preds = %ifcont41
  %"$46" = load i64, ptr %"$6", align 4
  %"$.next" = add i64 %"$46", 1
  call void @npk_gc_safepoint()
  br label %loop.cond

loop.end:                                         ; preds = %loop.cond
  ret { i32, ptr, i8 } { i32 -1, ptr null, i8 0 }
}

define linkonce_odr { i32, ptr, i8 } @singly.slist_clear(i64 %sl) {
entry:
  %sl.addr = alloca i64, align 8
  store i64 %sl, ptr %sl.addr, align 4
  %cur = alloca i64, align 8
  %sl1 = load i64, ptr %sl.addr, align 4
  %calltmp = call { i64, ptr, i8 } @singly.sl_head(i64 %sl1)
  %raw.value = extractvalue { i64, ptr, i8 } %calltmp, 0
  store i64 %raw.value, ptr %cur, align 4
  %sl2 = load i64, ptr %sl.addr, align 4
  %calltmp3 = call { i64, ptr, i8 } @singly.sl_size(i64 %sl2)
  %raw.value4 = extractvalue { i64, ptr, i8 } %calltmp3, 0
  br label %loop.cond

loop.cond:                                        ; preds = %loop.inc, %entry
  %"$" = phi i64 [ 0, %entry ], [ %"$.next", %loop.inc ]
  %"$5" = alloca i64, align 8
  store i64 %"$", ptr %"$5", align 4
  %loop.asc = icmp slt i64 %"$", %raw.value4
  %loop.desc = icmp sgt i64 %"$", %raw.value4
  %loop.cond6 = select i1 false, i1 %loop.desc, i1 %loop.asc
  br i1 %loop.cond6, label %loop.body, label %loop.end

loop.body:                                        ; preds = %loop.cond
  %cur7 = load i64, ptr %cur, align 4
  %eqtmp = icmp eq i64 %cur7, 0
  %ifcond = icmp ne i1 %eqtmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %loop.body
  ret { i32, ptr, i8 } zeroinitializer

ifcont:                                           ; preds = %loop.body
  %next = alloca i64, align 8
  %cur8 = load i64, ptr %cur, align 4
  %calltmp9 = call { i64, ptr, i8 } @singly.sl_node_next(i64 %cur8)
  %raw.value10 = extractvalue { i64, ptr, i8 } %calltmp9, 0
  store i64 %raw.value10, ptr %next, align 4
  %cur11 = load i64, ptr %cur, align 4
  %calltmp12 = call { i32, ptr, i8 } @handle.HandleArena_free(i64 %cur11)
  %raw.value13 = extractvalue { i32, ptr, i8 } %calltmp12, 0
  %next14 = load i64, ptr %next, align 4
  store i64 %next14, ptr %cur, align 4
  br label %loop.inc

loop.inc:                                         ; preds = %ifcont
  %"$15" = load i64, ptr %"$5", align 4
  %"$.next" = add i64 %"$15", 1
  call void @npk_gc_safepoint()
  br label %loop.cond

loop.end:                                         ; preds = %loop.cond
  %sl16 = load i64, ptr %sl.addr, align 4
  call void @singly.sl_set_head(i64 %sl16, i64 0)
  %sl17 = load i64, ptr %sl.addr, align 4
  call void @singly.sl_set_tail(i64 %sl17, i64 0)
  %sl18 = load i64, ptr %sl.addr, align 4
  call void @singly.sl_set_size(i64 %sl18, i64 0)
  ret { i32, ptr, i8 } zeroinitializer
}

define linkonce_odr { i32, ptr, i8 } @singly.slist_destroy(i64 %sl) {
entry:
  %sl.addr = alloca i64, align 8
  store i64 %sl, ptr %sl.addr, align 4
  %c = alloca i32, align 4
  %sl1 = load i64, ptr %sl.addr, align 4
  %calltmp = call { i32, ptr, i8 } @singly.slist_clear(i64 %sl1)
  %raw.value = extractvalue { i32, ptr, i8 } %calltmp, 0
  store i32 %raw.value, ptr %c, align 4
  %arena = alloca i64, align 8
  %sl2 = load i64, ptr %sl.addr, align 4
  %calltmp3 = call { i64, ptr, i8 } @singly.sl_arena(i64 %sl2)
  %raw.value4 = extractvalue { i64, ptr, i8 } %calltmp3, 0
  store i64 %raw.value4, ptr %arena, align 4
  %sl5 = load i64, ptr %sl.addr, align 4
  %calltmp6 = call { i32, ptr, i8 } @handle.HandleArena_free(i64 %sl5)
  %raw.value7 = extractvalue { i32, ptr, i8 } %calltmp6, 0
  %arena8 = load i64, ptr %arena, align 4
  %calltmp9 = call { i32, ptr, i8 } @handle.HandleArena_destroy(i64 %arena8)
  %raw.value10 = extractvalue { i32, ptr, i8 } %calltmp9, 0
  ret { i32, ptr, i8 } zeroinitializer
}

define linkonce_odr { i32, ptr, i8 } @singly.slist_reverse(i64 %sl) {
entry:
  %sl.addr = alloca i64, align 8
  store i64 %sl, ptr %sl.addr, align 4
  %prev = alloca i64, align 8
  store i64 0, ptr %prev, align 4
  %cur = alloca i64, align 8
  %sl1 = load i64, ptr %sl.addr, align 4
  %calltmp = call { i64, ptr, i8 } @singly.sl_head(i64 %sl1)
  %raw.value = extractvalue { i64, ptr, i8 } %calltmp, 0
  store i64 %raw.value, ptr %cur, align 4
  %tail = alloca i64, align 8
  %sl2 = load i64, ptr %sl.addr, align 4
  %calltmp3 = call { i64, ptr, i8 } @singly.sl_tail(i64 %sl2)
  %raw.value4 = extractvalue { i64, ptr, i8 } %calltmp3, 0
  store i64 %raw.value4, ptr %tail, align 4
  %sz = alloca i64, align 8
  %sl5 = load i64, ptr %sl.addr, align 4
  %calltmp6 = call { i64, ptr, i8 } @singly.sl_size(i64 %sl5)
  %raw.value7 = extractvalue { i64, ptr, i8 } %calltmp6, 0
  store i64 %raw.value7, ptr %sz, align 4
  %sz8 = load i64, ptr %sz, align 4
  br label %loop.cond

loop.cond:                                        ; preds = %loop.inc, %entry
  %"$" = phi i64 [ 0, %entry ], [ %"$.next", %loop.inc ]
  %"$9" = alloca i64, align 8
  store i64 %"$", ptr %"$9", align 4
  %loop.asc = icmp slt i64 %"$", %sz8
  %loop.desc = icmp sgt i64 %"$", %sz8
  %loop.cond10 = select i1 false, i1 %loop.desc, i1 %loop.asc
  br i1 %loop.cond10, label %loop.body, label %loop.end

loop.body:                                        ; preds = %loop.cond
  %cur11 = load i64, ptr %cur, align 4
  %eqtmp = icmp eq i64 %cur11, 0
  %ifcond = icmp ne i1 %eqtmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %loop.body
  ret { i32, ptr, i8 } zeroinitializer

ifcont:                                           ; preds = %loop.body
  %next = alloca i64, align 8
  %cur12 = load i64, ptr %cur, align 4
  %calltmp13 = call { i64, ptr, i8 } @singly.sl_node_next(i64 %cur12)
  %raw.value14 = extractvalue { i64, ptr, i8 } %calltmp13, 0
  store i64 %raw.value14, ptr %next, align 4
  %cur15 = load i64, ptr %cur, align 4
  %prev16 = load i64, ptr %prev, align 4
  call void @singly.sl_node_set_next(i64 %cur15, i64 %prev16)
  %cur17 = load i64, ptr %cur, align 4
  store i64 %cur17, ptr %prev, align 4
  %next18 = load i64, ptr %next, align 4
  store i64 %next18, ptr %cur, align 4
  br label %loop.inc

loop.inc:                                         ; preds = %ifcont
  %"$19" = load i64, ptr %"$9", align 4
  %"$.next" = add i64 %"$19", 1
  call void @npk_gc_safepoint()
  br label %loop.cond

loop.end:                                         ; preds = %loop.cond
  %old_head = alloca i64, align 8
  %sl20 = load i64, ptr %sl.addr, align 4
  %calltmp21 = call { i64, ptr, i8 } @singly.sl_head(i64 %sl20)
  %raw.value22 = extractvalue { i64, ptr, i8 } %calltmp21, 0
  store i64 %raw.value22, ptr %old_head, align 4
  %sl23 = load i64, ptr %sl.addr, align 4
  %tail24 = load i64, ptr %tail, align 4
  call void @singly.sl_set_head(i64 %sl23, i64 %tail24)
  %sl25 = load i64, ptr %sl.addr, align 4
  %old_head26 = load i64, ptr %old_head, align 4
  call void @singly.sl_set_tail(i64 %sl25, i64 %old_head26)
  ret { i32, ptr, i8 } zeroinitializer
}

define linkonce_odr { i64, ptr, i8 } @singly.SList_create() {
entry:
  %calltmp = call { i64, ptr, i8 } @singly.slist_create()
  %raw.value = extractvalue { i64, ptr, i8 } %calltmp, 0
  %result.val = insertvalue { i64, ptr, i8 } undef, i64 %raw.value, 0
  %result.err = insertvalue { i64, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i64, ptr, i8 } %result.err, i8 0, 2
  ret { i64, ptr, i8 } %result.is_error
}

define linkonce_odr { i32, ptr, i8 } @singly.SList_destroy(i64 %sl) {
entry:
  %sl.addr = alloca i64, align 8
  store i64 %sl, ptr %sl.addr, align 4
  %sl1 = load i64, ptr %sl.addr, align 4
  %calltmp = call { i32, ptr, i8 } @singly.slist_destroy(i64 %sl1)
  %raw.value = extractvalue { i32, ptr, i8 } %calltmp, 0
  %result.val = insertvalue { i32, ptr, i8 } undef, i32 %raw.value, 0
  %result.err = insertvalue { i32, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i32, ptr, i8 } %result.err, i8 0, 2
  ret { i32, ptr, i8 } %result.is_error
}

define linkonce_odr { i32, ptr, i8 } @singly.SList_push_front(i64 %sl, i64 %val) {
entry:
  %sl.addr = alloca i64, align 8
  store i64 %sl, ptr %sl.addr, align 4
  %val.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 4
  %sl1 = load i64, ptr %sl.addr, align 4
  %val2 = load i64, ptr %val.addr, align 4
  %calltmp = call { i32, ptr, i8 } @singly.slist_push_front(i64 %sl1, i64 %val2)
  %raw.value = extractvalue { i32, ptr, i8 } %calltmp, 0
  %result.val = insertvalue { i32, ptr, i8 } undef, i32 %raw.value, 0
  %result.err = insertvalue { i32, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i32, ptr, i8 } %result.err, i8 0, 2
  ret { i32, ptr, i8 } %result.is_error
}

define linkonce_odr { i32, ptr, i8 } @singly.SList_push_back(i64 %sl, i64 %val) {
entry:
  %sl.addr = alloca i64, align 8
  store i64 %sl, ptr %sl.addr, align 4
  %val.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 4
  %sl1 = load i64, ptr %sl.addr, align 4
  %val2 = load i64, ptr %val.addr, align 4
  %calltmp = call { i32, ptr, i8 } @singly.slist_push_back(i64 %sl1, i64 %val2)
  %raw.value = extractvalue { i32, ptr, i8 } %calltmp, 0
  %result.val = insertvalue { i32, ptr, i8 } undef, i32 %raw.value, 0
  %result.err = insertvalue { i32, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i32, ptr, i8 } %result.err, i8 0, 2
  ret { i32, ptr, i8 } %result.is_error
}

define linkonce_odr { i64, ptr, i8 } @singly.SList_pop_front(i64 %sl) {
entry:
  %sl.addr = alloca i64, align 8
  store i64 %sl, ptr %sl.addr, align 4
  %sl1 = load i64, ptr %sl.addr, align 4
  %calltmp = call { i64, ptr, i8 } @singly.slist_pop_front(i64 %sl1)
  %raw.value = extractvalue { i64, ptr, i8 } %calltmp, 0
  %result.val = insertvalue { i64, ptr, i8 } undef, i64 %raw.value, 0
  %result.err = insertvalue { i64, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i64, ptr, i8 } %result.err, i8 0, 2
  ret { i64, ptr, i8 } %result.is_error
}

define linkonce_odr { i64, ptr, i8 } @singly.SList_peek_front(i64 %sl) {
entry:
  %sl.addr = alloca i64, align 8
  store i64 %sl, ptr %sl.addr, align 4
  %sl1 = load i64, ptr %sl.addr, align 4
  %calltmp = call { i64, ptr, i8 } @singly.slist_peek_front(i64 %sl1)
  %raw.value = extractvalue { i64, ptr, i8 } %calltmp, 0
  %result.val = insertvalue { i64, ptr, i8 } undef, i64 %raw.value, 0
  %result.err = insertvalue { i64, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i64, ptr, i8 } %result.err, i8 0, 2
  ret { i64, ptr, i8 } %result.is_error
}

define linkonce_odr { i64, ptr, i8 } @singly.SList_peek_back(i64 %sl) {
entry:
  %sl.addr = alloca i64, align 8
  store i64 %sl, ptr %sl.addr, align 4
  %sl1 = load i64, ptr %sl.addr, align 4
  %calltmp = call { i64, ptr, i8 } @singly.slist_peek_back(i64 %sl1)
  %raw.value = extractvalue { i64, ptr, i8 } %calltmp, 0
  %result.val = insertvalue { i64, ptr, i8 } undef, i64 %raw.value, 0
  %result.err = insertvalue { i64, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i64, ptr, i8 } %result.err, i8 0, 2
  ret { i64, ptr, i8 } %result.is_error
}

define linkonce_odr { i32, ptr, i8 } @singly.SList_contains(i64 %sl, i64 %val) {
entry:
  %sl.addr = alloca i64, align 8
  store i64 %sl, ptr %sl.addr, align 4
  %val.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 4
  %sl1 = load i64, ptr %sl.addr, align 4
  %val2 = load i64, ptr %val.addr, align 4
  %calltmp = call { i32, ptr, i8 } @singly.slist_contains(i64 %sl1, i64 %val2)
  %raw.value = extractvalue { i32, ptr, i8 } %calltmp, 0
  %result.val = insertvalue { i32, ptr, i8 } undef, i32 %raw.value, 0
  %result.err = insertvalue { i32, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i32, ptr, i8 } %result.err, i8 0, 2
  ret { i32, ptr, i8 } %result.is_error
}

define linkonce_odr { i32, ptr, i8 } @singly.SList_remove_first(i64 %sl, i64 %val) {
entry:
  %sl.addr = alloca i64, align 8
  store i64 %sl, ptr %sl.addr, align 4
  %val.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 4
  %sl1 = load i64, ptr %sl.addr, align 4
  %val2 = load i64, ptr %val.addr, align 4
  %calltmp = call { i32, ptr, i8 } @singly.slist_remove_first(i64 %sl1, i64 %val2)
  %raw.value = extractvalue { i32, ptr, i8 } %calltmp, 0
  %result.val = insertvalue { i32, ptr, i8 } undef, i32 %raw.value, 0
  %result.err = insertvalue { i32, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i32, ptr, i8 } %result.err, i8 0, 2
  ret { i32, ptr, i8 } %result.is_error
}

define linkonce_odr { i64, ptr, i8 } @singly.SList_len(i64 %sl) {
entry:
  %sl.addr = alloca i64, align 8
  store i64 %sl, ptr %sl.addr, align 4
  %sl1 = load i64, ptr %sl.addr, align 4
  %calltmp = call { i64, ptr, i8 } @singly.sl_size(i64 %sl1)
  %raw.value = extractvalue { i64, ptr, i8 } %calltmp, 0
  %result.val = insertvalue { i64, ptr, i8 } undef, i64 %raw.value, 0
  %result.err = insertvalue { i64, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i64, ptr, i8 } %result.err, i8 0, 2
  ret { i64, ptr, i8 } %result.is_error
}

define linkonce_odr { i32, ptr, i8 } @singly.SList_is_empty(i64 %sl) {
entry:
  %sl.addr = alloca i64, align 8
  store i64 %sl, ptr %sl.addr, align 4
  %s = alloca i64, align 8
  %sl1 = load i64, ptr %sl.addr, align 4
  %calltmp = call { i64, ptr, i8 } @singly.sl_size(i64 %sl1)
  %raw.value = extractvalue { i64, ptr, i8 } %calltmp, 0
  store i64 %raw.value, ptr %s, align 4
  %s2 = load i64, ptr %s, align 4
  %eqtmp = icmp eq i64 %s2, 0
  %ifcond = icmp ne i1 %eqtmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %entry
  ret { i32, ptr, i8 } { i32 1, ptr null, i8 0 }

ifcont:                                           ; preds = %entry
  ret { i32, ptr, i8 } zeroinitializer
}

define linkonce_odr { i32, ptr, i8 } @singly.SList_clear(i64 %sl) {
entry:
  %sl.addr = alloca i64, align 8
  store i64 %sl, ptr %sl.addr, align 4
  %sl1 = load i64, ptr %sl.addr, align 4
  %calltmp = call { i32, ptr, i8 } @singly.slist_clear(i64 %sl1)
  %raw.value = extractvalue { i32, ptr, i8 } %calltmp, 0
  %result.val = insertvalue { i32, ptr, i8 } undef, i32 %raw.value, 0
  %result.err = insertvalue { i32, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i32, ptr, i8 } %result.err, i8 0, 2
  ret { i32, ptr, i8 } %result.is_error
}

define linkonce_odr { i32, ptr, i8 } @singly.SList_reverse(i64 %sl) {
entry:
  %sl.addr = alloca i64, align 8
  store i64 %sl, ptr %sl.addr, align 4
  %sl1 = load i64, ptr %sl.addr, align 4
  %calltmp = call { i32, ptr, i8 } @singly.slist_reverse(i64 %sl1)
  %raw.value = extractvalue { i32, ptr, i8 } %calltmp, 0
  %result.val = insertvalue { i32, ptr, i8 } undef, i32 %raw.value, 0
  %result.err = insertvalue { i32, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i32, ptr, i8 } %result.err, i8 0, 2
  ret { i32, ptr, i8 } %result.is_error
}

define linkonce_odr i32 @__singly_init() {
entry:
  ret i32 0
}

define internal { i32, ptr, i8 } @failsafe(i32 %err) {
entry:
  %err.addr = alloca i32, align 4
  store i32 %err, ptr %err.addr, align 4
  %calltmp = call { i32, ptr, i8 } @io_utils.print_err(ptr @.str.111)
  %ustack_handle = call i64 @npk_ustack_new(i64 64)
  %__aria_ustack_handle = alloca i64, align 8
  store i64 %ustack_handle, ptr %__aria_ustack_handle, align 4
  %e = alloca i64, align 8
  %err1 = load i32, ptr %err.addr, align 4
  %cast.sext = sext i32 %err1 to i64
  store i64 %cast.sext, ptr %e, align 4
  %len = alloca i64, align 8
  store i64 0, ptr %len, align 4
  %e2 = load i64, ptr %e, align 4
  %eqtmp = icmp eq i64 %e2, 0
  %ifcond = icmp ne i1 %eqtmp, false
  br i1 %ifcond, label %then, label %else

then:                                             ; preds = %entry
  %ustack_h = load i64, ptr %__aria_ustack_handle, align 4
  call void @npk_ustack_push(i64 %ustack_h, i64 48, i64 3)
  store i64 1, ptr %len, align 4
  br label %ifcont

else:                                             ; preds = %entry
  br label %whilecond

whilecond:                                        ; preds = %whilebody, %else
  %e3 = load i64, ptr %e, align 4
  %gttmp = icmp sgt i64 %e3, 0
  %whilecond4 = icmp ne i1 %gttmp, false
  br i1 %whilecond4, label %whilebody, label %afterwhile

whilebody:                                        ; preds = %whilecond
  %ustack_h5 = load i64, ptr %__aria_ustack_handle, align 4
  %e6 = load i64, ptr %e, align 4
  %modtmp = srem i64 %e6, 10
  %addtmp = add i64 %modtmp, 48
  call void @npk_ustack_push(i64 %ustack_h5, i64 %addtmp, i64 3)
  %e7 = load i64, ptr %e, align 4
  %divtmp = sdiv i64 %e7, 10
  %safe.divtmp = select i1 false, i64 9223372036854775807, i64 %divtmp
  store i64 %safe.divtmp, ptr %e, align 4
  %len8 = load i64, ptr %len, align 4
  %addtmp9 = add i64 %len8, 1
  store i64 %addtmp9, ptr %len, align 4
  call void @npk_gc_safepoint()
  br label %whilecond

afterwhile:                                       ; preds = %whilecond
  br label %ifcont

ifcont:                                           ; preds = %afterwhile, %then
  br label %whilecond10

whilecond10:                                      ; preds = %whilebody14, %ifcont
  %len11 = load i64, ptr %len, align 4
  %gttmp12 = icmp sgt i64 %len11, 0
  %whilecond13 = icmp ne i1 %gttmp12, false
  br i1 %whilecond13, label %whilebody14, label %afterwhile18

whilebody14:                                      ; preds = %whilecond10
  %c = alloca i64, align 8
  %ustack_h15 = load i64, ptr %__aria_ustack_handle, align 4
  %ustack_pop = call i64 @npk_ustack_pop(i64 %ustack_h15, i64 3)
  store i64 %ustack_pop, ptr %c, align 4
  %c16 = load i64, ptr %c, align 4
  %cast.trunc = trunc i64 %c16 to i8
  %char_str = call ptr @npk_string_from_char_simple(i8 %cast.trunc)
  %sys_str_struct = load %struct.NpkString, ptr %char_str, align 8
  %sys_str_data = extractvalue %struct.NpkString %sys_str_struct, 0
  %sys_strvar_int = ptrtoint ptr %sys_str_data to i64
  %syscall_ret = call i64 asm sideeffect "syscall", "={rax},{rax},{rdi},{rsi},{rdx},~{rcx},~{r11},~{memory}"(i64 1, i64 2, i64 %sys_strvar_int, i64 1)
  %sys_is_err = icmp slt i64 %syscall_ret, 0
  %sys_neg_errno = sub i64 0, %syscall_ret
  %sys_err_ptr = inttoptr i64 %sys_neg_errno to ptr
  %sys_val = select i1 %sys_is_err, i64 0, i64 %syscall_ret
  %sys_err = select i1 %sys_is_err, ptr %sys_err_ptr, ptr null
  %sys_flag = select i1 %sys_is_err, i8 1, i8 0
  %sys_result.val = insertvalue %struct.NpkResult_int64 undef, i64 %sys_val, 0
  %sys_result.err = insertvalue %struct.NpkResult_int64 %sys_result.val, ptr %sys_err, 1
  %sys_result.is_error = insertvalue %struct.NpkResult_int64 %sys_result.err, i8 %sys_flag, 2
  %len17 = load i64, ptr %len, align 4
  %subtmp = sub i64 %len17, 1
  store i64 %subtmp, ptr %len, align 4
  call void @npk_gc_safepoint()
  br label %whilecond10

afterwhile18:                                     ; preds = %whilecond10
  %sys_str_struct19 = load %struct.NpkString, ptr @.str.113, align 8
  %sys_str_data20 = extractvalue %struct.NpkString %sys_str_struct19, 0
  %sys_str_int = ptrtoint ptr %sys_str_data20 to i64
  %syscall_ret21 = call i64 asm sideeffect "syscall", "={rax},{rax},{rdi},{rsi},{rdx},~{rcx},~{r11},~{memory}"(i64 1, i64 2, i64 %sys_str_int, i64 1)
  %sys_is_err22 = icmp slt i64 %syscall_ret21, 0
  %sys_neg_errno23 = sub i64 0, %syscall_ret21
  %sys_err_ptr24 = inttoptr i64 %sys_neg_errno23 to ptr
  %sys_val25 = select i1 %sys_is_err22, i64 0, i64 %syscall_ret21
  %sys_err26 = select i1 %sys_is_err22, ptr %sys_err_ptr24, ptr null
  %sys_flag27 = select i1 %sys_is_err22, i8 1, i8 0
  %sys_result.val28 = insertvalue %struct.NpkResult_int64 undef, i64 %sys_val25, 0
  %sys_result.err29 = insertvalue %struct.NpkResult_int64 %sys_result.val28, ptr %sys_err26, 1
  %sys_result.is_error30 = insertvalue %struct.NpkResult_int64 %sys_result.err29, i8 %sys_flag27, 2
  call void @proc_exit(i32 1)
  ret { i32, ptr, i8 } zeroinitializer
}

define internal { i32, ptr, i8 } @copy_file(ptr %src_path, ptr %dst_path) {
entry:
  %src_fd = alloca i64, align 8
  %sys_str_struct = load %struct.NpkString, ptr %src_path, align 8
  %sys_str_data = extractvalue %struct.NpkString %sys_str_struct, 0
  %sys_strvar_int = ptrtoint ptr %sys_str_data to i64
  %syscall_ret = call i64 asm sideeffect "syscall", "={rax},{rax},{rdi},{rsi},{rdx},~{rcx},~{r11},~{memory}"(i64 2, i64 %sys_strvar_int, i64 0, i64 0)
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
  store i64 %unwrap_result, ptr %src_fd, align 4
  %src_fd1 = load i64, ptr %src_fd, align 4
  %lttmp = icmp slt i64 %src_fd1, 0
  %ifcond = icmp ne i1 %lttmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %merge_block
  %calltmp = call { i32, ptr, i8 } @io_utils.print_err(ptr @.str.115)
  %calltmp2 = call { i32, ptr, i8 } @io_utils.print_err(ptr %src_path)
  %calltmp3 = call { i32, ptr, i8 } @io_utils.print_err(ptr @.str.117)
  %src_fd4 = load i64, ptr %src_fd, align 4
  %syscall_ret5 = call i64 asm sideeffect "syscall", "={rax},{rax},{rdi},~{rcx},~{r11},~{memory}"(i64 3, i64 %src_fd4)
  %sys_is_err6 = icmp slt i64 %syscall_ret5, 0
  %sys_neg_errno7 = sub i64 0, %syscall_ret5
  %sys_err_ptr8 = inttoptr i64 %sys_neg_errno7 to ptr
  %sys_val9 = select i1 %sys_is_err6, i64 0, i64 %syscall_ret5
  %sys_err10 = select i1 %sys_is_err6, ptr %sys_err_ptr8, ptr null
  %sys_flag11 = select i1 %sys_is_err6, i8 1, i8 0
  %sys_result.val12 = insertvalue %struct.NpkResult_int64 undef, i64 %sys_val9, 0
  %sys_result.err13 = insertvalue %struct.NpkResult_int64 %sys_result.val12, ptr %sys_err10, 1
  %sys_result.is_error14 = insertvalue %struct.NpkResult_int64 %sys_result.err13, i8 %sys_flag11, 2
  ret { i32, ptr, i8 } { i32 1, ptr null, i8 0 }

ifcont:                                           ; preds = %merge_block
  %dst_fd = alloca i64, align 8
  %sys_str_struct15 = load %struct.NpkString, ptr %dst_path, align 8
  %sys_str_data16 = extractvalue %struct.NpkString %sys_str_struct15, 0
  %sys_strvar_int17 = ptrtoint ptr %sys_str_data16 to i64
  %syscall_ret18 = call i64 asm sideeffect "syscall", "={rax},{rax},{rdi},{rsi},{rdx},~{rcx},~{r11},~{memory}"(i64 2, i64 %sys_strvar_int17, i64 577, i64 438)
  %sys_is_err19 = icmp slt i64 %syscall_ret18, 0
  %sys_neg_errno20 = sub i64 0, %syscall_ret18
  %sys_err_ptr21 = inttoptr i64 %sys_neg_errno20 to ptr
  %sys_val22 = select i1 %sys_is_err19, i64 0, i64 %syscall_ret18
  %sys_err23 = select i1 %sys_is_err19, ptr %sys_err_ptr21, ptr null
  %sys_flag24 = select i1 %sys_is_err19, i8 1, i8 0
  %sys_result.val25 = insertvalue %struct.NpkResult_int64 undef, i64 %sys_val22, 0
  %sys_result.err26 = insertvalue %struct.NpkResult_int64 %sys_result.val25, ptr %sys_err23, 1
  %sys_result.is_error27 = insertvalue %struct.NpkResult_int64 %sys_result.err26, i8 %sys_flag24, 2
  %is_error28 = extractvalue %struct.NpkResult_int64 %sys_result.is_error27, 2
  %is_error_bool29 = icmp ne i8 %is_error28, 0
  br i1 %is_error_bool29, label %error_block30, label %success_block31

error_block30:                                    ; preds = %ifcont
  br label %merge_block32

success_block31:                                  ; preds = %ifcont
  %value33 = extractvalue %struct.NpkResult_int64 %sys_result.is_error27, 0
  br label %merge_block32

merge_block32:                                    ; preds = %success_block31, %error_block30
  %unwrap_result34 = phi i64 [ -1, %error_block30 ], [ %value33, %success_block31 ]
  store i64 %unwrap_result34, ptr %dst_fd, align 4
  %dst_fd35 = load i64, ptr %dst_fd, align 4
  %lttmp36 = icmp slt i64 %dst_fd35, 0
  %ifcond37 = icmp ne i1 %lttmp36, false
  br i1 %ifcond37, label %then38, label %ifcont64

then38:                                           ; preds = %merge_block32
  %calltmp39 = call { i32, ptr, i8 } @io_utils.print_err(ptr @.str.119)
  %calltmp40 = call { i32, ptr, i8 } @io_utils.print_err(ptr %dst_path)
  %calltmp41 = call { i32, ptr, i8 } @io_utils.print_err(ptr @.str.121)
  %dst_fd42 = load i64, ptr %dst_fd, align 4
  %syscall_ret43 = call i64 asm sideeffect "syscall", "={rax},{rax},{rdi},~{rcx},~{r11},~{memory}"(i64 3, i64 %dst_fd42)
  %sys_is_err44 = icmp slt i64 %syscall_ret43, 0
  %sys_neg_errno45 = sub i64 0, %syscall_ret43
  %sys_err_ptr46 = inttoptr i64 %sys_neg_errno45 to ptr
  %sys_val47 = select i1 %sys_is_err44, i64 0, i64 %syscall_ret43
  %sys_err48 = select i1 %sys_is_err44, ptr %sys_err_ptr46, ptr null
  %sys_flag49 = select i1 %sys_is_err44, i8 1, i8 0
  %sys_result.val50 = insertvalue %struct.NpkResult_int64 undef, i64 %sys_val47, 0
  %sys_result.err51 = insertvalue %struct.NpkResult_int64 %sys_result.val50, ptr %sys_err48, 1
  %sys_result.is_error52 = insertvalue %struct.NpkResult_int64 %sys_result.err51, i8 %sys_flag49, 2
  %src_fd53 = load i64, ptr %src_fd, align 4
  %syscall_ret54 = call i64 asm sideeffect "syscall", "={rax},{rax},{rdi},~{rcx},~{r11},~{memory}"(i64 3, i64 %src_fd53)
  %sys_is_err55 = icmp slt i64 %syscall_ret54, 0
  %sys_neg_errno56 = sub i64 0, %syscall_ret54
  %sys_err_ptr57 = inttoptr i64 %sys_neg_errno56 to ptr
  %sys_val58 = select i1 %sys_is_err55, i64 0, i64 %syscall_ret54
  %sys_err59 = select i1 %sys_is_err55, ptr %sys_err_ptr57, ptr null
  %sys_flag60 = select i1 %sys_is_err55, i8 1, i8 0
  %sys_result.val61 = insertvalue %struct.NpkResult_int64 undef, i64 %sys_val58, 0
  %sys_result.err62 = insertvalue %struct.NpkResult_int64 %sys_result.val61, ptr %sys_err59, 1
  %sys_result.is_error63 = insertvalue %struct.NpkResult_int64 %sys_result.err62, i8 %sys_flag60, 2
  ret { i32, ptr, i8 } { i32 1, ptr null, i8 0 }

ifcont64:                                         ; preds = %merge_block32
  %buf = alloca i64, align 8
  %syscall_ret65 = call i64 asm sideeffect "syscall", "={rax},{rax},{rdi},{rsi},{rdx},{r10},{r8},{r9},~{rcx},~{r11},~{memory}"(i64 9, i64 0, i64 8192, i64 3, i64 34, i64 -1, i64 0)
  %sys_is_err66 = icmp slt i64 %syscall_ret65, 0
  %sys_neg_errno67 = sub i64 0, %syscall_ret65
  %sys_err_ptr68 = inttoptr i64 %sys_neg_errno67 to ptr
  %sys_val69 = select i1 %sys_is_err66, i64 0, i64 %syscall_ret65
  %sys_err70 = select i1 %sys_is_err66, ptr %sys_err_ptr68, ptr null
  %sys_flag71 = select i1 %sys_is_err66, i8 1, i8 0
  %sys_result.val72 = insertvalue %struct.NpkResult_int64 undef, i64 %sys_val69, 0
  %sys_result.err73 = insertvalue %struct.NpkResult_int64 %sys_result.val72, ptr %sys_err70, 1
  %sys_result.is_error74 = insertvalue %struct.NpkResult_int64 %sys_result.err73, i8 %sys_flag71, 2
  %is_error75 = extractvalue %struct.NpkResult_int64 %sys_result.is_error74, 2
  %is_error_bool76 = icmp ne i8 %is_error75, 0
  br i1 %is_error_bool76, label %error_block77, label %success_block78

error_block77:                                    ; preds = %ifcont64
  br label %merge_block79

success_block78:                                  ; preds = %ifcont64
  %value80 = extractvalue %struct.NpkResult_int64 %sys_result.is_error74, 0
  br label %merge_block79

merge_block79:                                    ; preds = %success_block78, %error_block77
  %unwrap_result81 = phi i64 [ 0, %error_block77 ], [ %value80, %success_block78 ]
  store i64 %unwrap_result81, ptr %buf, align 4
  %buf82 = load i64, ptr %buf, align 4
  %letmp = icmp sle i64 %buf82, 0
  %ifcond83 = icmp ne i1 %letmp, false
  br i1 %ifcond83, label %then84, label %ifcont108

then84:                                           ; preds = %merge_block79
  %calltmp85 = call { i32, ptr, i8 } @io_utils.print_err(ptr @.str.123)
  %dst_fd86 = load i64, ptr %dst_fd, align 4
  %syscall_ret87 = call i64 asm sideeffect "syscall", "={rax},{rax},{rdi},~{rcx},~{r11},~{memory}"(i64 3, i64 %dst_fd86)
  %sys_is_err88 = icmp slt i64 %syscall_ret87, 0
  %sys_neg_errno89 = sub i64 0, %syscall_ret87
  %sys_err_ptr90 = inttoptr i64 %sys_neg_errno89 to ptr
  %sys_val91 = select i1 %sys_is_err88, i64 0, i64 %syscall_ret87
  %sys_err92 = select i1 %sys_is_err88, ptr %sys_err_ptr90, ptr null
  %sys_flag93 = select i1 %sys_is_err88, i8 1, i8 0
  %sys_result.val94 = insertvalue %struct.NpkResult_int64 undef, i64 %sys_val91, 0
  %sys_result.err95 = insertvalue %struct.NpkResult_int64 %sys_result.val94, ptr %sys_err92, 1
  %sys_result.is_error96 = insertvalue %struct.NpkResult_int64 %sys_result.err95, i8 %sys_flag93, 2
  %src_fd97 = load i64, ptr %src_fd, align 4
  %syscall_ret98 = call i64 asm sideeffect "syscall", "={rax},{rax},{rdi},~{rcx},~{r11},~{memory}"(i64 3, i64 %src_fd97)
  %sys_is_err99 = icmp slt i64 %syscall_ret98, 0
  %sys_neg_errno100 = sub i64 0, %syscall_ret98
  %sys_err_ptr101 = inttoptr i64 %sys_neg_errno100 to ptr
  %sys_val102 = select i1 %sys_is_err99, i64 0, i64 %syscall_ret98
  %sys_err103 = select i1 %sys_is_err99, ptr %sys_err_ptr101, ptr null
  %sys_flag104 = select i1 %sys_is_err99, i8 1, i8 0
  %sys_result.val105 = insertvalue %struct.NpkResult_int64 undef, i64 %sys_val102, 0
  %sys_result.err106 = insertvalue %struct.NpkResult_int64 %sys_result.val105, ptr %sys_err103, 1
  %sys_result.is_error107 = insertvalue %struct.NpkResult_int64 %sys_result.err106, i8 %sys_flag104, 2
  ret { i32, ptr, i8 } { i32 1, ptr null, i8 0 }

ifcont108:                                        ; preds = %merge_block79
  %running = alloca i32, align 4
  store i32 1, ptr %running, align 4
  %exit_status = alloca i32, align 4
  store i32 0, ptr %exit_status, align 4
  br label %whilecond

whilecond:                                        ; preds = %ifcont166, %ifcont108
  %running109 = load i32, ptr %running, align 4
  %eqtmp = icmp eq i32 %running109, 1
  %whilecond110 = icmp ne i1 %eqtmp, false
  br i1 %whilecond110, label %whilebody, label %afterwhile

whilebody:                                        ; preds = %whilecond
  %bytes_read = alloca i64, align 8
  %src_fd111 = load i64, ptr %src_fd, align 4
  %buf112 = load i64, ptr %buf, align 4
  %syscall_ret113 = call i64 asm sideeffect "syscall", "={rax},{rax},{rdi},{rsi},{rdx},~{rcx},~{r11},~{memory}"(i64 0, i64 %src_fd111, i64 %buf112, i64 8192)
  %sys_is_err114 = icmp slt i64 %syscall_ret113, 0
  %sys_neg_errno115 = sub i64 0, %syscall_ret113
  %sys_err_ptr116 = inttoptr i64 %sys_neg_errno115 to ptr
  %sys_val117 = select i1 %sys_is_err114, i64 0, i64 %syscall_ret113
  %sys_err118 = select i1 %sys_is_err114, ptr %sys_err_ptr116, ptr null
  %sys_flag119 = select i1 %sys_is_err114, i8 1, i8 0
  %sys_result.val120 = insertvalue %struct.NpkResult_int64 undef, i64 %sys_val117, 0
  %sys_result.err121 = insertvalue %struct.NpkResult_int64 %sys_result.val120, ptr %sys_err118, 1
  %sys_result.is_error122 = insertvalue %struct.NpkResult_int64 %sys_result.err121, i8 %sys_flag119, 2
  %is_error123 = extractvalue %struct.NpkResult_int64 %sys_result.is_error122, 2
  %is_error_bool124 = icmp ne i8 %is_error123, 0
  br i1 %is_error_bool124, label %error_block125, label %success_block126

error_block125:                                   ; preds = %whilebody
  br label %merge_block127

success_block126:                                 ; preds = %whilebody
  %value128 = extractvalue %struct.NpkResult_int64 %sys_result.is_error122, 0
  br label %merge_block127

merge_block127:                                   ; preds = %success_block126, %error_block125
  %unwrap_result129 = phi i64 [ -1, %error_block125 ], [ %value128, %success_block126 ]
  store i64 %unwrap_result129, ptr %bytes_read, align 4
  %bytes_read130 = load i64, ptr %bytes_read, align 4
  %letmp131 = icmp sle i64 %bytes_read130, 0
  %ifcond132 = icmp ne i1 %letmp131, false
  br i1 %ifcond132, label %then133, label %else

then133:                                          ; preds = %merge_block127
  store i32 0, ptr %running, align 4
  %bytes_read134 = load i64, ptr %bytes_read, align 4
  %lttmp135 = icmp slt i64 %bytes_read134, 0
  %ifcond136 = icmp ne i1 %lttmp135, false
  br i1 %ifcond136, label %then137, label %ifcont139

then137:                                          ; preds = %then133
  %calltmp138 = call { i32, ptr, i8 } @io_utils.print_err(ptr @.str.125)
  store i32 1, ptr %exit_status, align 4
  br label %ifcont139

ifcont139:                                        ; preds = %then137, %then133
  br label %ifcont166

else:                                             ; preds = %merge_block127
  %bytes_written = alloca i64, align 8
  %dst_fd140 = load i64, ptr %dst_fd, align 4
  %buf141 = load i64, ptr %buf, align 4
  %bytes_read142 = load i64, ptr %bytes_read, align 4
  %syscall_ret143 = call i64 asm sideeffect "syscall", "={rax},{rax},{rdi},{rsi},{rdx},~{rcx},~{r11},~{memory}"(i64 1, i64 %dst_fd140, i64 %buf141, i64 %bytes_read142)
  %sys_is_err144 = icmp slt i64 %syscall_ret143, 0
  %sys_neg_errno145 = sub i64 0, %syscall_ret143
  %sys_err_ptr146 = inttoptr i64 %sys_neg_errno145 to ptr
  %sys_val147 = select i1 %sys_is_err144, i64 0, i64 %syscall_ret143
  %sys_err148 = select i1 %sys_is_err144, ptr %sys_err_ptr146, ptr null
  %sys_flag149 = select i1 %sys_is_err144, i8 1, i8 0
  %sys_result.val150 = insertvalue %struct.NpkResult_int64 undef, i64 %sys_val147, 0
  %sys_result.err151 = insertvalue %struct.NpkResult_int64 %sys_result.val150, ptr %sys_err148, 1
  %sys_result.is_error152 = insertvalue %struct.NpkResult_int64 %sys_result.err151, i8 %sys_flag149, 2
  %is_error153 = extractvalue %struct.NpkResult_int64 %sys_result.is_error152, 2
  %is_error_bool154 = icmp ne i8 %is_error153, 0
  br i1 %is_error_bool154, label %error_block155, label %success_block156

error_block155:                                   ; preds = %else
  br label %merge_block157

success_block156:                                 ; preds = %else
  %value158 = extractvalue %struct.NpkResult_int64 %sys_result.is_error152, 0
  br label %merge_block157

merge_block157:                                   ; preds = %success_block156, %error_block155
  %unwrap_result159 = phi i64 [ -1, %error_block155 ], [ %value158, %success_block156 ]
  store i64 %unwrap_result159, ptr %bytes_written, align 4
  %bytes_written160 = load i64, ptr %bytes_written, align 4
  %bytes_read161 = load i64, ptr %bytes_read, align 4
  %netmp = icmp ne i64 %bytes_written160, %bytes_read161
  %ifcond162 = icmp ne i1 %netmp, false
  br i1 %ifcond162, label %then163, label %ifcont165

then163:                                          ; preds = %merge_block157
  %calltmp164 = call { i32, ptr, i8 } @io_utils.print_err(ptr @.str.127)
  store i32 0, ptr %running, align 4
  store i32 1, ptr %exit_status, align 4
  br label %ifcont165

ifcont165:                                        ; preds = %then163, %merge_block157
  br label %ifcont166

ifcont166:                                        ; preds = %ifcont165, %ifcont139
  call void @npk_gc_safepoint()
  br label %whilecond

afterwhile:                                       ; preds = %whilecond
  %buf167 = load i64, ptr %buf, align 4
  %syscall_ret168 = call i64 asm sideeffect "syscall", "={rax},{rax},{rdi},{rsi},~{rcx},~{r11},~{memory}"(i64 11, i64 %buf167, i64 8192)
  %sys_is_err169 = icmp slt i64 %syscall_ret168, 0
  %sys_neg_errno170 = sub i64 0, %syscall_ret168
  %sys_err_ptr171 = inttoptr i64 %sys_neg_errno170 to ptr
  %sys_val172 = select i1 %sys_is_err169, i64 0, i64 %syscall_ret168
  %sys_err173 = select i1 %sys_is_err169, ptr %sys_err_ptr171, ptr null
  %sys_flag174 = select i1 %sys_is_err169, i8 1, i8 0
  %sys_result.val175 = insertvalue %struct.NpkResult_int64 undef, i64 %sys_val172, 0
  %sys_result.err176 = insertvalue %struct.NpkResult_int64 %sys_result.val175, ptr %sys_err173, 1
  %sys_result.is_error177 = insertvalue %struct.NpkResult_int64 %sys_result.err176, i8 %sys_flag174, 2
  %dst_fd178 = load i64, ptr %dst_fd, align 4
  %syscall_ret179 = call i64 asm sideeffect "syscall", "={rax},{rax},{rdi},~{rcx},~{r11},~{memory}"(i64 3, i64 %dst_fd178)
  %sys_is_err180 = icmp slt i64 %syscall_ret179, 0
  %sys_neg_errno181 = sub i64 0, %syscall_ret179
  %sys_err_ptr182 = inttoptr i64 %sys_neg_errno181 to ptr
  %sys_val183 = select i1 %sys_is_err180, i64 0, i64 %syscall_ret179
  %sys_err184 = select i1 %sys_is_err180, ptr %sys_err_ptr182, ptr null
  %sys_flag185 = select i1 %sys_is_err180, i8 1, i8 0
  %sys_result.val186 = insertvalue %struct.NpkResult_int64 undef, i64 %sys_val183, 0
  %sys_result.err187 = insertvalue %struct.NpkResult_int64 %sys_result.val186, ptr %sys_err184, 1
  %sys_result.is_error188 = insertvalue %struct.NpkResult_int64 %sys_result.err187, i8 %sys_flag185, 2
  %src_fd189 = load i64, ptr %src_fd, align 4
  %syscall_ret190 = call i64 asm sideeffect "syscall", "={rax},{rax},{rdi},~{rcx},~{r11},~{memory}"(i64 3, i64 %src_fd189)
  %sys_is_err191 = icmp slt i64 %syscall_ret190, 0
  %sys_neg_errno192 = sub i64 0, %syscall_ret190
  %sys_err_ptr193 = inttoptr i64 %sys_neg_errno192 to ptr
  %sys_val194 = select i1 %sys_is_err191, i64 0, i64 %syscall_ret190
  %sys_err195 = select i1 %sys_is_err191, ptr %sys_err_ptr193, ptr null
  %sys_flag196 = select i1 %sys_is_err191, i8 1, i8 0
  %sys_result.val197 = insertvalue %struct.NpkResult_int64 undef, i64 %sys_val194, 0
  %sys_result.err198 = insertvalue %struct.NpkResult_int64 %sys_result.val197, ptr %sys_err195, 1
  %sys_result.is_error199 = insertvalue %struct.NpkResult_int64 %sys_result.err198, i8 %sys_flag196, 2
  %exit_status200 = load i32, ptr %exit_status, align 4
  %result.val = insertvalue { i32, ptr, i8 } undef, i32 %exit_status200, 0
  %result.err = insertvalue { i32, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i32, ptr, i8 } %result.err, i8 0, 2
  ret { i32, ptr, i8 } %result.is_error
}

define internal { i32, ptr, i8 } @copy_recursive(ptr %src, ptr %dst, i32 %recursive) {
entry:
  %recursive.addr = alloca i32, align 4
  store i32 %recursive, ptr %recursive.addr, align 4
  %statbuf = alloca i64, align 8
  %syscall_ret = call i64 asm sideeffect "syscall", "={rax},{rax},{rdi},{rsi},{rdx},{r10},{r8},{r9},~{rcx},~{r11},~{memory}"(i64 9, i64 0, i64 4096, i64 3, i64 34, i64 -1, i64 0)
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
  %unwrap_result = phi i64 [ 0, %error_block ], [ %value, %success_block ]
  store i64 %unwrap_result, ptr %statbuf, align 4
  %res = alloca i64, align 8
  %sys_str_struct = load %struct.NpkString, ptr %src, align 8
  %sys_str_data = extractvalue %struct.NpkString %sys_str_struct, 0
  %sys_strvar_int = ptrtoint ptr %sys_str_data to i64
  %statbuf1 = load i64, ptr %statbuf, align 4
  %syscall_ret2 = call i64 asm sideeffect "syscall", "={rax},{rax},{rdi},{rsi},~{rcx},~{r11},~{memory}"(i64 4, i64 %sys_strvar_int, i64 %statbuf1)
  %sys_is_err3 = icmp slt i64 %syscall_ret2, 0
  %sys_neg_errno4 = sub i64 0, %syscall_ret2
  %sys_err_ptr5 = inttoptr i64 %sys_neg_errno4 to ptr
  %sys_val6 = select i1 %sys_is_err3, i64 0, i64 %syscall_ret2
  %sys_err7 = select i1 %sys_is_err3, ptr %sys_err_ptr5, ptr null
  %sys_flag8 = select i1 %sys_is_err3, i8 1, i8 0
  %sys_result.val9 = insertvalue %struct.NpkResult_int64 undef, i64 %sys_val6, 0
  %sys_result.err10 = insertvalue %struct.NpkResult_int64 %sys_result.val9, ptr %sys_err7, 1
  %sys_result.is_error11 = insertvalue %struct.NpkResult_int64 %sys_result.err10, i8 %sys_flag8, 2
  %is_error12 = extractvalue %struct.NpkResult_int64 %sys_result.is_error11, 2
  %is_error_bool13 = icmp ne i8 %is_error12, 0
  br i1 %is_error_bool13, label %error_block14, label %success_block15

error_block14:                                    ; preds = %merge_block
  br label %merge_block16

success_block15:                                  ; preds = %merge_block
  %value17 = extractvalue %struct.NpkResult_int64 %sys_result.is_error11, 0
  br label %merge_block16

merge_block16:                                    ; preds = %success_block15, %error_block14
  %unwrap_result18 = phi i64 [ -1, %error_block14 ], [ %value17, %success_block15 ]
  store i64 %unwrap_result18, ptr %res, align 4
  %res19 = load i64, ptr %res, align 4
  %lttmp = icmp slt i64 %res19, 0
  %ifcond = icmp ne i1 %lttmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %merge_block16
  %calltmp = call { i32, ptr, i8 } @io_utils.print_err(ptr @.str.129)
  %calltmp20 = call { i32, ptr, i8 } @io_utils.print_err(ptr %src)
  %calltmp21 = call { i32, ptr, i8 } @io_utils.print_err(ptr @.str.131)
  %statbuf22 = load i64, ptr %statbuf, align 4
  %syscall_ret23 = call i64 asm sideeffect "syscall", "={rax},{rax},{rdi},{rsi},~{rcx},~{r11},~{memory}"(i64 11, i64 %statbuf22, i64 4096)
  %sys_is_err24 = icmp slt i64 %syscall_ret23, 0
  %sys_neg_errno25 = sub i64 0, %syscall_ret23
  %sys_err_ptr26 = inttoptr i64 %sys_neg_errno25 to ptr
  %sys_val27 = select i1 %sys_is_err24, i64 0, i64 %syscall_ret23
  %sys_err28 = select i1 %sys_is_err24, ptr %sys_err_ptr26, ptr null
  %sys_flag29 = select i1 %sys_is_err24, i8 1, i8 0
  %sys_result.val30 = insertvalue %struct.NpkResult_int64 undef, i64 %sys_val27, 0
  %sys_result.err31 = insertvalue %struct.NpkResult_int64 %sys_result.val30, ptr %sys_err28, 1
  %sys_result.is_error32 = insertvalue %struct.NpkResult_int64 %sys_result.err31, i8 %sys_flag29, 2
  ret { i32, ptr, i8 } { i32 1, ptr null, i8 0 }

ifcont:                                           ; preds = %merge_block16
  %b0 = alloca i64, align 8
  %statbuf33 = load i64, ptr %statbuf, align 4
  %calltmp34 = call i64 @npk_mem_read_byte(i64 %statbuf33, i64 24)
  store i64 %calltmp34, ptr %b0, align 4
  %b1 = alloca i64, align 8
  %statbuf35 = load i64, ptr %statbuf, align 4
  %calltmp36 = call i64 @npk_mem_read_byte(i64 %statbuf35, i64 25)
  store i64 %calltmp36, ptr %b1, align 4
  %b2 = alloca i64, align 8
  %statbuf37 = load i64, ptr %statbuf, align 4
  %calltmp38 = call i64 @npk_mem_read_byte(i64 %statbuf37, i64 26)
  store i64 %calltmp38, ptr %b2, align 4
  %b3 = alloca i64, align 8
  %statbuf39 = load i64, ptr %statbuf, align 4
  %calltmp40 = call i64 @npk_mem_read_byte(i64 %statbuf39, i64 27)
  store i64 %calltmp40, ptr %b3, align 4
  %mode = alloca i64, align 8
  %b041 = load i64, ptr %b0, align 4
  %b142 = load i64, ptr %b1, align 4
  %shltmp = shl i64 %b142, 8
  %ortmp = or i64 %b041, %shltmp
  %b243 = load i64, ptr %b2, align 4
  %shltmp44 = shl i64 %b243, 16
  %ortmp45 = or i64 %ortmp, %shltmp44
  %b346 = load i64, ptr %b3, align 4
  %shltmp47 = shl i64 %b346, 24
  %ortmp48 = or i64 %ortmp45, %shltmp47
  store i64 %ortmp48, ptr %mode, align 4
  %is_dir = alloca i64, align 8
  %mode49 = load i64, ptr %mode, align 4
  %andtmp = and i64 %mode49, 16384
  store i64 %andtmp, ptr %is_dir, align 4
  %statbuf50 = load i64, ptr %statbuf, align 4
  %syscall_ret51 = call i64 asm sideeffect "syscall", "={rax},{rax},{rdi},{rsi},~{rcx},~{r11},~{memory}"(i64 11, i64 %statbuf50, i64 4096)
  %sys_is_err52 = icmp slt i64 %syscall_ret51, 0
  %sys_neg_errno53 = sub i64 0, %syscall_ret51
  %sys_err_ptr54 = inttoptr i64 %sys_neg_errno53 to ptr
  %sys_val55 = select i1 %sys_is_err52, i64 0, i64 %syscall_ret51
  %sys_err56 = select i1 %sys_is_err52, ptr %sys_err_ptr54, ptr null
  %sys_flag57 = select i1 %sys_is_err52, i8 1, i8 0
  %sys_result.val58 = insertvalue %struct.NpkResult_int64 undef, i64 %sys_val55, 0
  %sys_result.err59 = insertvalue %struct.NpkResult_int64 %sys_result.val58, ptr %sys_err56, 1
  %sys_result.is_error60 = insertvalue %struct.NpkResult_int64 %sys_result.err59, i8 %sys_flag57, 2
  %is_dir61 = load i64, ptr %is_dir, align 4
  %netmp = icmp ne i64 %is_dir61, 0
  %ifcond62 = icmp ne i1 %netmp, false
  br i1 %ifcond62, label %then63, label %else301

then63:                                           ; preds = %ifcont
  %recursive64 = load i32, ptr %recursive.addr, align 4
  %eqtmp = icmp eq i32 %recursive64, 0
  %ifcond65 = icmp ne i1 %eqtmp, false
  br i1 %ifcond65, label %then66, label %ifcont70

then66:                                           ; preds = %then63
  %calltmp67 = call { i32, ptr, i8 } @io_utils.print_err(ptr @.str.133)
  %calltmp68 = call { i32, ptr, i8 } @io_utils.print_err(ptr %src)
  %calltmp69 = call { i32, ptr, i8 } @io_utils.print_err(ptr @.str.135)
  ret { i32, ptr, i8 } { i32 1, ptr null, i8 0 }

ifcont70:                                         ; preds = %then63
  %sys_str_struct71 = load %struct.NpkString, ptr %dst, align 8
  %sys_str_data72 = extractvalue %struct.NpkString %sys_str_struct71, 0
  %sys_strvar_int73 = ptrtoint ptr %sys_str_data72 to i64
  %syscall_ret74 = call i64 asm sideeffect "syscall", "={rax},{rax},{rdi},{rsi},~{rcx},~{r11},~{memory}"(i64 83, i64 %sys_strvar_int73, i64 493)
  %sys_is_err75 = icmp slt i64 %syscall_ret74, 0
  %sys_neg_errno76 = sub i64 0, %syscall_ret74
  %sys_err_ptr77 = inttoptr i64 %sys_neg_errno76 to ptr
  %sys_val78 = select i1 %sys_is_err75, i64 0, i64 %syscall_ret74
  %sys_err79 = select i1 %sys_is_err75, ptr %sys_err_ptr77, ptr null
  %sys_flag80 = select i1 %sys_is_err75, i8 1, i8 0
  %sys_result.val81 = insertvalue %struct.NpkResult_int64 undef, i64 %sys_val78, 0
  %sys_result.err82 = insertvalue %struct.NpkResult_int64 %sys_result.val81, ptr %sys_err79, 1
  %sys_result.is_error83 = insertvalue %struct.NpkResult_int64 %sys_result.err82, i8 %sys_flag80, 2
  %fd = alloca i64, align 8
  %sys_str_struct84 = load %struct.NpkString, ptr %src, align 8
  %sys_str_data85 = extractvalue %struct.NpkString %sys_str_struct84, 0
  %sys_strvar_int86 = ptrtoint ptr %sys_str_data85 to i64
  %syscall_ret87 = call i64 asm sideeffect "syscall", "={rax},{rax},{rdi},{rsi},{rdx},~{rcx},~{r11},~{memory}"(i64 2, i64 %sys_strvar_int86, i64 65536, i64 0)
  %sys_is_err88 = icmp slt i64 %syscall_ret87, 0
  %sys_neg_errno89 = sub i64 0, %syscall_ret87
  %sys_err_ptr90 = inttoptr i64 %sys_neg_errno89 to ptr
  %sys_val91 = select i1 %sys_is_err88, i64 0, i64 %syscall_ret87
  %sys_err92 = select i1 %sys_is_err88, ptr %sys_err_ptr90, ptr null
  %sys_flag93 = select i1 %sys_is_err88, i8 1, i8 0
  %sys_result.val94 = insertvalue %struct.NpkResult_int64 undef, i64 %sys_val91, 0
  %sys_result.err95 = insertvalue %struct.NpkResult_int64 %sys_result.val94, ptr %sys_err92, 1
  %sys_result.is_error96 = insertvalue %struct.NpkResult_int64 %sys_result.err95, i8 %sys_flag93, 2
  %is_error97 = extractvalue %struct.NpkResult_int64 %sys_result.is_error96, 2
  %is_error_bool98 = icmp ne i8 %is_error97, 0
  br i1 %is_error_bool98, label %error_block99, label %success_block100

error_block99:                                    ; preds = %ifcont70
  br label %merge_block101

success_block100:                                 ; preds = %ifcont70
  %value102 = extractvalue %struct.NpkResult_int64 %sys_result.is_error96, 0
  br label %merge_block101

merge_block101:                                   ; preds = %success_block100, %error_block99
  %unwrap_result103 = phi i64 [ -1, %error_block99 ], [ %value102, %success_block100 ]
  store i64 %unwrap_result103, ptr %fd, align 4
  %fd104 = load i64, ptr %fd, align 4
  %lttmp105 = icmp slt i64 %fd104, 0
  %ifcond106 = icmp ne i1 %lttmp105, false
  br i1 %ifcond106, label %then107, label %ifcont122

then107:                                          ; preds = %merge_block101
  %calltmp108 = call { i32, ptr, i8 } @io_utils.print_err(ptr @.str.137)
  %calltmp109 = call { i32, ptr, i8 } @io_utils.print_err(ptr %src)
  %calltmp110 = call { i32, ptr, i8 } @io_utils.print_err(ptr @.str.139)
  %fd111 = load i64, ptr %fd, align 4
  %syscall_ret112 = call i64 asm sideeffect "syscall", "={rax},{rax},{rdi},~{rcx},~{r11},~{memory}"(i64 3, i64 %fd111)
  %sys_is_err113 = icmp slt i64 %syscall_ret112, 0
  %sys_neg_errno114 = sub i64 0, %syscall_ret112
  %sys_err_ptr115 = inttoptr i64 %sys_neg_errno114 to ptr
  %sys_val116 = select i1 %sys_is_err113, i64 0, i64 %syscall_ret112
  %sys_err117 = select i1 %sys_is_err113, ptr %sys_err_ptr115, ptr null
  %sys_flag118 = select i1 %sys_is_err113, i8 1, i8 0
  %sys_result.val119 = insertvalue %struct.NpkResult_int64 undef, i64 %sys_val116, 0
  %sys_result.err120 = insertvalue %struct.NpkResult_int64 %sys_result.val119, ptr %sys_err117, 1
  %sys_result.is_error121 = insertvalue %struct.NpkResult_int64 %sys_result.err120, i8 %sys_flag118, 2
  ret { i32, ptr, i8 } { i32 1, ptr null, i8 0 }

ifcont122:                                        ; preds = %merge_block101
  %buf = alloca i64, align 8
  %syscall_ret123 = call i64 asm sideeffect "syscall", "={rax},{rax},{rdi},{rsi},{rdx},{r10},{r8},{r9},~{rcx},~{r11},~{memory}"(i64 9, i64 0, i64 32768, i64 3, i64 34, i64 -1, i64 0)
  %sys_is_err124 = icmp slt i64 %syscall_ret123, 0
  %sys_neg_errno125 = sub i64 0, %syscall_ret123
  %sys_err_ptr126 = inttoptr i64 %sys_neg_errno125 to ptr
  %sys_val127 = select i1 %sys_is_err124, i64 0, i64 %syscall_ret123
  %sys_err128 = select i1 %sys_is_err124, ptr %sys_err_ptr126, ptr null
  %sys_flag129 = select i1 %sys_is_err124, i8 1, i8 0
  %sys_result.val130 = insertvalue %struct.NpkResult_int64 undef, i64 %sys_val127, 0
  %sys_result.err131 = insertvalue %struct.NpkResult_int64 %sys_result.val130, ptr %sys_err128, 1
  %sys_result.is_error132 = insertvalue %struct.NpkResult_int64 %sys_result.err131, i8 %sys_flag129, 2
  %is_error133 = extractvalue %struct.NpkResult_int64 %sys_result.is_error132, 2
  %is_error_bool134 = icmp ne i8 %is_error133, 0
  br i1 %is_error_bool134, label %error_block135, label %success_block136

error_block135:                                   ; preds = %ifcont122
  br label %merge_block137

success_block136:                                 ; preds = %ifcont122
  %value138 = extractvalue %struct.NpkResult_int64 %sys_result.is_error132, 0
  br label %merge_block137

merge_block137:                                   ; preds = %success_block136, %error_block135
  %unwrap_result139 = phi i64 [ -1, %error_block135 ], [ %value138, %success_block136 ]
  store i64 %unwrap_result139, ptr %buf, align 4
  %buf140 = load i64, ptr %buf, align 4
  %lttmp141 = icmp slt i64 %buf140, 0
  %ifcond142 = icmp ne i1 %lttmp141, false
  br i1 %ifcond142, label %then143, label %ifcont155

then143:                                          ; preds = %merge_block137
  %fd144 = load i64, ptr %fd, align 4
  %syscall_ret145 = call i64 asm sideeffect "syscall", "={rax},{rax},{rdi},~{rcx},~{r11},~{memory}"(i64 3, i64 %fd144)
  %sys_is_err146 = icmp slt i64 %syscall_ret145, 0
  %sys_neg_errno147 = sub i64 0, %syscall_ret145
  %sys_err_ptr148 = inttoptr i64 %sys_neg_errno147 to ptr
  %sys_val149 = select i1 %sys_is_err146, i64 0, i64 %syscall_ret145
  %sys_err150 = select i1 %sys_is_err146, ptr %sys_err_ptr148, ptr null
  %sys_flag151 = select i1 %sys_is_err146, i8 1, i8 0
  %sys_result.val152 = insertvalue %struct.NpkResult_int64 undef, i64 %sys_val149, 0
  %sys_result.err153 = insertvalue %struct.NpkResult_int64 %sys_result.val152, ptr %sys_err150, 1
  %sys_result.is_error154 = insertvalue %struct.NpkResult_int64 %sys_result.err153, i8 %sys_flag151, 2
  ret { i32, ptr, i8 } { i32 1, ptr null, i8 0 }

ifcont155:                                        ; preds = %merge_block137
  %sl = alloca i64, align 8
  %calltmp156 = call { i64, ptr, i8 } @singly.SList_create()
  %raw.value = extractvalue { i64, ptr, i8 } %calltmp156, 0
  store i64 %raw.value, ptr %sl, align 4
  %running = alloca i32, align 4
  store i32 1, ptr %running, align 4
  %exit_status = alloca i32, align 4
  store i32 0, ptr %exit_status, align 4
  br label %whilecond

whilecond:                                        ; preds = %ifcont242, %ifcont155
  %running157 = load i32, ptr %running, align 4
  %eqtmp158 = icmp eq i32 %running157, 1
  %whilecond159 = icmp ne i1 %eqtmp158, false
  br i1 %whilecond159, label %whilebody, label %afterwhile243

whilebody:                                        ; preds = %whilecond
  %nread = alloca i64, align 8
  %fd160 = load i64, ptr %fd, align 4
  %buf161 = load i64, ptr %buf, align 4
  %syscall_ret162 = call i64 asm sideeffect "syscall", "={rax},{rax},{rdi},{rsi},{rdx},~{rcx},~{r11},~{memory}"(i64 217, i64 %fd160, i64 %buf161, i64 32768)
  %sys_is_err163 = icmp slt i64 %syscall_ret162, 0
  %sys_neg_errno164 = sub i64 0, %syscall_ret162
  %sys_err_ptr165 = inttoptr i64 %sys_neg_errno164 to ptr
  %sys_val166 = select i1 %sys_is_err163, i64 0, i64 %syscall_ret162
  %sys_err167 = select i1 %sys_is_err163, ptr %sys_err_ptr165, ptr null
  %sys_flag168 = select i1 %sys_is_err163, i8 1, i8 0
  %sys_result.val169 = insertvalue %struct.NpkResult_int64 undef, i64 %sys_val166, 0
  %sys_result.err170 = insertvalue %struct.NpkResult_int64 %sys_result.val169, ptr %sys_err167, 1
  %sys_result.is_error171 = insertvalue %struct.NpkResult_int64 %sys_result.err170, i8 %sys_flag168, 2
  %is_error172 = extractvalue %struct.NpkResult_int64 %sys_result.is_error171, 2
  %is_error_bool173 = icmp ne i8 %is_error172, 0
  br i1 %is_error_bool173, label %error_block174, label %success_block175

error_block174:                                   ; preds = %whilebody
  br label %merge_block176

success_block175:                                 ; preds = %whilebody
  %value177 = extractvalue %struct.NpkResult_int64 %sys_result.is_error171, 0
  br label %merge_block176

merge_block176:                                   ; preds = %success_block175, %error_block174
  %unwrap_result178 = phi i64 [ -1, %error_block174 ], [ %value177, %success_block175 ]
  store i64 %unwrap_result178, ptr %nread, align 4
  %nread179 = load i64, ptr %nread, align 4
  %letmp = icmp sle i64 %nread179, 0
  %ifcond180 = icmp ne i1 %letmp, false
  br i1 %ifcond180, label %then181, label %else

then181:                                          ; preds = %merge_block176
  store i32 0, ptr %running, align 4
  br label %ifcont242

else:                                             ; preds = %merge_block176
  %bpos = alloca i64, align 8
  store i64 0, ptr %bpos, align 4
  br label %whilecond182

whilecond182:                                     ; preds = %ifcont238, %else
  %bpos183 = load i64, ptr %bpos, align 4
  %nread184 = load i64, ptr %nread, align 4
  %lttmp185 = icmp slt i64 %bpos183, %nread184
  %whilecond186 = icmp ne i1 %lttmp185, false
  br i1 %whilecond186, label %whilebody187, label %afterwhile

whilebody187:                                     ; preds = %whilecond182
  %ent_ptr = alloca i64, align 8
  %buf188 = load i64, ptr %buf, align 4
  %bpos189 = load i64, ptr %bpos, align 4
  %addtmp = add i64 %buf188, %bpos189
  store i64 %addtmp, ptr %ent_ptr, align 4
  %b0_r = alloca i64, align 8
  %ent_ptr190 = load i64, ptr %ent_ptr, align 4
  %calltmp191 = call i64 @npk_mem_read_byte(i64 %ent_ptr190, i64 16)
  store i64 %calltmp191, ptr %b0_r, align 4
  %b1_r = alloca i64, align 8
  %ent_ptr192 = load i64, ptr %ent_ptr, align 4
  %calltmp193 = call i64 @npk_mem_read_byte(i64 %ent_ptr192, i64 17)
  store i64 %calltmp193, ptr %b1_r, align 4
  %reclen = alloca i64, align 8
  %b0_r194 = load i64, ptr %b0_r, align 4
  %b1_r195 = load i64, ptr %b1_r, align 4
  %shltmp196 = shl i64 %b1_r195, 8
  %ortmp197 = or i64 %b0_r194, %shltmp196
  store i64 %ortmp197, ptr %reclen, align 4
  %name_ptr = alloca i64, align 8
  %ent_ptr198 = load i64, ptr %ent_ptr, align 4
  %addtmp199 = add i64 %ent_ptr198, 19
  store i64 %addtmp199, ptr %name_ptr, align 4
  %c0 = alloca i64, align 8
  %name_ptr200 = load i64, ptr %name_ptr, align 4
  %calltmp201 = call i64 @npk_mem_read_byte(i64 %name_ptr200, i64 0)
  store i64 %calltmp201, ptr %c0, align 4
  %c1 = alloca i64, align 8
  %name_ptr202 = load i64, ptr %name_ptr, align 4
  %calltmp203 = call i64 @npk_mem_read_byte(i64 %name_ptr202, i64 1)
  store i64 %calltmp203, ptr %c1, align 4
  %c2 = alloca i64, align 8
  %name_ptr204 = load i64, ptr %name_ptr, align 4
  %calltmp205 = call i64 @npk_mem_read_byte(i64 %name_ptr204, i64 2)
  store i64 %calltmp205, ptr %c2, align 4
  %skip = alloca i32, align 4
  store i32 0, ptr %skip, align 4
  %c0206 = load i64, ptr %c0, align 4
  %eqtmp207 = icmp eq i64 %c0206, 46
  %ifcond208 = icmp ne i1 %eqtmp207, false
  br i1 %ifcond208, label %then209, label %ifcont226

then209:                                          ; preds = %whilebody187
  %c1210 = load i64, ptr %c1, align 4
  %eqtmp211 = icmp eq i64 %c1210, 0
  %ifcond212 = icmp ne i1 %eqtmp211, false
  br i1 %ifcond212, label %then213, label %else214

then213:                                          ; preds = %then209
  store i32 1, ptr %skip, align 4
  br label %ifcont225

else214:                                          ; preds = %then209
  %c1215 = load i64, ptr %c1, align 4
  %eqtmp216 = icmp eq i64 %c1215, 46
  %ifcond217 = icmp ne i1 %eqtmp216, false
  br i1 %ifcond217, label %then218, label %ifcont224

then218:                                          ; preds = %else214
  %c2219 = load i64, ptr %c2, align 4
  %eqtmp220 = icmp eq i64 %c2219, 0
  %ifcond221 = icmp ne i1 %eqtmp220, false
  br i1 %ifcond221, label %then222, label %ifcont223

then222:                                          ; preds = %then218
  store i32 1, ptr %skip, align 4
  br label %ifcont223

ifcont223:                                        ; preds = %then222, %then218
  br label %ifcont224

ifcont224:                                        ; preds = %ifcont223, %else214
  br label %ifcont225

ifcont225:                                        ; preds = %ifcont224, %then213
  br label %ifcont226

ifcont226:                                        ; preds = %ifcont225, %whilebody187
  %skip227 = load i32, ptr %skip, align 4
  %eqtmp228 = icmp eq i32 %skip227, 0
  %ifcond229 = icmp ne i1 %eqtmp228, false
  br i1 %ifcond229, label %then230, label %ifcont238

then230:                                          ; preds = %ifcont226
  %name_copy = alloca i64, align 8
  %name_ptr231 = load i64, ptr %name_ptr, align 4
  %calltmp232 = call { i64, ptr, i8 } @mem_utils.str_clone(i64 %name_ptr231)
  %raw.value233 = extractvalue { i64, ptr, i8 } %calltmp232, 0
  store i64 %raw.value233, ptr %name_copy, align 4
  %sl234 = load i64, ptr %sl, align 4
  %name_copy235 = load i64, ptr %name_copy, align 4
  %calltmp236 = call { i32, ptr, i8 } @singly.SList_push_back(i64 %sl234, i64 %name_copy235)
  %raw.value237 = extractvalue { i32, ptr, i8 } %calltmp236, 0
  br label %ifcont238

ifcont238:                                        ; preds = %then230, %ifcont226
  %bpos239 = load i64, ptr %bpos, align 4
  %reclen240 = load i64, ptr %reclen, align 4
  %addtmp241 = add i64 %bpos239, %reclen240
  store i64 %addtmp241, ptr %bpos, align 4
  call void @npk_gc_safepoint()
  br label %whilecond182

afterwhile:                                       ; preds = %whilecond182
  br label %ifcont242

ifcont242:                                        ; preds = %afterwhile, %then181
  call void @npk_gc_safepoint()
  br label %whilecond

afterwhile243:                                    ; preds = %whilecond
  %buf244 = load i64, ptr %buf, align 4
  %syscall_ret245 = call i64 asm sideeffect "syscall", "={rax},{rax},{rdi},{rsi},~{rcx},~{r11},~{memory}"(i64 11, i64 %buf244, i64 32768)
  %sys_is_err246 = icmp slt i64 %syscall_ret245, 0
  %sys_neg_errno247 = sub i64 0, %syscall_ret245
  %sys_err_ptr248 = inttoptr i64 %sys_neg_errno247 to ptr
  %sys_val249 = select i1 %sys_is_err246, i64 0, i64 %syscall_ret245
  %sys_err250 = select i1 %sys_is_err246, ptr %sys_err_ptr248, ptr null
  %sys_flag251 = select i1 %sys_is_err246, i8 1, i8 0
  %sys_result.val252 = insertvalue %struct.NpkResult_int64 undef, i64 %sys_val249, 0
  %sys_result.err253 = insertvalue %struct.NpkResult_int64 %sys_result.val252, ptr %sys_err250, 1
  %sys_result.is_error254 = insertvalue %struct.NpkResult_int64 %sys_result.err253, i8 %sys_flag251, 2
  br label %whilecond255

whilecond255:                                     ; preds = %ifcont282, %afterwhile243
  %sl256 = load i64, ptr %sl, align 4
  %calltmp257 = call { i32, ptr, i8 } @singly.SList_is_empty(i64 %sl256)
  %raw.value258 = extractvalue { i32, ptr, i8 } %calltmp257, 0
  %eqtmp259 = icmp eq i32 %raw.value258, 0
  %whilecond260 = icmp ne i1 %eqtmp259, false
  br i1 %whilecond260, label %whilebody261, label %afterwhile285

whilebody261:                                     ; preds = %whilecond255
  %child_ptr = alloca i64, align 8
  %sl262 = load i64, ptr %sl, align 4
  %calltmp263 = call { i64, ptr, i8 } @singly.SList_pop_front(i64 %sl262)
  %raw.value264 = extractvalue { i64, ptr, i8 } %calltmp263, 0
  store i64 %raw.value264, ptr %child_ptr, align 4
  %child_name = alloca ptr, align 8
  %child_ptr265 = load i64, ptr %child_ptr, align 4
  %calltmp266 = call { ptr, ptr, i8 } @mem_utils.ptr_to_string(i64 %child_ptr265)
  %raw.value267 = extractvalue { ptr, ptr, i8 } %calltmp266, 0
  store ptr %raw.value267, ptr %child_name, align 8
  %child_src = alloca ptr, align 8
  %child_name268 = load ptr, ptr %child_name, align 8
  %concat_str = call ptr @npk_string_concat_simple(ptr @.str.141, ptr %child_name268)
  %concat_str269 = call ptr @npk_string_concat_simple(ptr %src, ptr %concat_str)
  store ptr %concat_str269, ptr %child_src, align 8
  %child_dst = alloca ptr, align 8
  %child_name270 = load ptr, ptr %child_name, align 8
  %concat_str271 = call ptr @npk_string_concat_simple(ptr @.str.143, ptr %child_name270)
  %concat_str272 = call ptr @npk_string_concat_simple(ptr %dst, ptr %concat_str271)
  store ptr %concat_str272, ptr %child_dst, align 8
  %res_rec = alloca i32, align 4
  %child_src273 = load ptr, ptr %child_src, align 8
  %child_dst274 = load ptr, ptr %child_dst, align 8
  %recursive275 = load i32, ptr %recursive.addr, align 4
  %calltmp276 = call { i32, ptr, i8 } @copy_recursive(ptr %child_src273, ptr %child_dst274, i32 %recursive275)
  %raw.value277 = extractvalue { i32, ptr, i8 } %calltmp276, 0
  store i32 %raw.value277, ptr %res_rec, align 4
  %res_rec278 = load i32, ptr %res_rec, align 4
  %netmp279 = icmp ne i32 %res_rec278, 0
  %ifcond280 = icmp ne i1 %netmp279, false
  br i1 %ifcond280, label %then281, label %ifcont282

then281:                                          ; preds = %whilebody261
  store i32 1, ptr %exit_status, align 4
  br label %ifcont282

ifcont282:                                        ; preds = %then281, %whilebody261
  %child_ptr283 = load i64, ptr %child_ptr, align 4
  %calltmp284 = call i32 @nitpick_libc_mem_free(i64 %child_ptr283)
  call void @npk_gc_safepoint()
  br label %whilecond255

afterwhile285:                                    ; preds = %whilecond255
  %sl286 = load i64, ptr %sl, align 4
  %calltmp287 = call { i32, ptr, i8 } @singly.SList_destroy(i64 %sl286)
  %raw.value288 = extractvalue { i32, ptr, i8 } %calltmp287, 0
  %fd289 = load i64, ptr %fd, align 4
  %syscall_ret290 = call i64 asm sideeffect "syscall", "={rax},{rax},{rdi},~{rcx},~{r11},~{memory}"(i64 3, i64 %fd289)
  %sys_is_err291 = icmp slt i64 %syscall_ret290, 0
  %sys_neg_errno292 = sub i64 0, %syscall_ret290
  %sys_err_ptr293 = inttoptr i64 %sys_neg_errno292 to ptr
  %sys_val294 = select i1 %sys_is_err291, i64 0, i64 %syscall_ret290
  %sys_err295 = select i1 %sys_is_err291, ptr %sys_err_ptr293, ptr null
  %sys_flag296 = select i1 %sys_is_err291, i8 1, i8 0
  %sys_result.val297 = insertvalue %struct.NpkResult_int64 undef, i64 %sys_val294, 0
  %sys_result.err298 = insertvalue %struct.NpkResult_int64 %sys_result.val297, ptr %sys_err295, 1
  %sys_result.is_error299 = insertvalue %struct.NpkResult_int64 %sys_result.err298, i8 %sys_flag296, 2
  %exit_status300 = load i32, ptr %exit_status, align 4
  %result.val = insertvalue { i32, ptr, i8 } undef, i32 %exit_status300, 0
  %result.err = insertvalue { i32, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i32, ptr, i8 } %result.err, i8 0, 2
  ret { i32, ptr, i8 } %result.is_error

else301:                                          ; preds = %ifcont
  %calltmp302 = call { i32, ptr, i8 } @copy_file(ptr %src, ptr %dst)
  %raw.value303 = extractvalue { i32, ptr, i8 } %calltmp302, 0
  %result.val304 = insertvalue { i32, ptr, i8 } undef, i32 %raw.value303, 0
  %result.err305 = insertvalue { i32, ptr, i8 } %result.val304, ptr null, 1
  %result.is_error306 = insertvalue { i32, ptr, i8 } %result.err305, i8 0, 2
  ret { i32, ptr, i8 } %result.is_error306

ifcont307:                                        ; No predecessors!
  ret { i32, ptr, i8 } zeroinitializer
}

define i32 @main(i32 %0, ptr %1) {
entry:
  call void @npk_gc_init(i64 0, i64 0)
  call void @npk_args_init(i32 %0, ptr %1)
  call void @npk_streams_init()
  %args = alloca ptr, align 8
  %calltmp = call { ptr, ptr, i8 } @nitpick_args.args_load()
  %raw.value = extractvalue { ptr, ptr, i8 } %calltmp, 0
  store ptr %raw.value, ptr %args, align 8
  %arg_count = alloca i32, align 4
  %args1 = load ptr, ptr %args, align 8
  %calltmp2 = call { i32, ptr, i8 } @nitpick_args.args_count(ptr %args1)
  %raw.value3 = extractvalue { i32, ptr, i8 } %calltmp2, 0
  store i32 %raw.value3, ptr %arg_count, align 4
  %recursive = alloca i32, align 4
  store i32 0, ptr %recursive, align 4
  %args4 = load ptr, ptr %args, align 8
  %calltmp5 = call { i1, ptr, i8 } @nitpick_args.args_has(ptr %args4, ptr @.str.145)
  %raw.value6 = extractvalue { i1, ptr, i8 } %calltmp5, 0
  %ifcond = icmp ne i1 %raw.value6, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %entry
  store i32 1, ptr %recursive, align 4
  br label %ifcont

ifcont:                                           ; preds = %then, %entry
  %args7 = load ptr, ptr %args, align 8
  %calltmp8 = call { i1, ptr, i8 } @nitpick_args.args_has(ptr %args7, ptr @.str.147)
  %raw.value9 = extractvalue { i1, ptr, i8 } %calltmp8, 0
  %ifcond10 = icmp ne i1 %raw.value9, false
  br i1 %ifcond10, label %then11, label %ifcont12

then11:                                           ; preds = %ifcont
  store i32 1, ptr %recursive, align 4
  br label %ifcont12

ifcont12:                                         ; preds = %then11, %ifcont
  %args13 = load ptr, ptr %args, align 8
  %calltmp14 = call { i1, ptr, i8 } @nitpick_args.args_has(ptr %args13, ptr @.str.149)
  %raw.value15 = extractvalue { i1, ptr, i8 } %calltmp14, 0
  %ifcond16 = icmp ne i1 %raw.value15, false
  br i1 %ifcond16, label %then17, label %ifcont18

then17:                                           ; preds = %ifcont12
  store i32 1, ptr %recursive, align 4
  br label %ifcont18

ifcont18:                                         ; preds = %then17, %ifcont12
  %src_path = alloca ptr, align 8
  store ptr @.str.151, ptr %src_path, align 8
  %dst_path = alloca ptr, align 8
  store ptr @.str.153, ptr %dst_path, align 8
  %non_flags = alloca i32, align 4
  store i32 0, ptr %non_flags, align 4
  %i = alloca i32, align 4
  store i32 1, ptr %i, align 4
  br label %whilecond

whilecond:                                        ; preds = %ifcont42, %ifcont18
  %i19 = load i32, ptr %i, align 4
  %arg_count20 = load i32, ptr %arg_count, align 4
  %letmp = icmp sle i32 %i19, %arg_count20
  %whilecond21 = icmp ne i1 %letmp, false
  br i1 %whilecond21, label %whilebody, label %afterwhile

whilebody:                                        ; preds = %whilecond
  %arg = alloca ptr, align 8
  %args22 = load ptr, ptr %args, align 8
  %i23 = load i32, ptr %i, align 4
  %calltmp24 = call { ptr, ptr, i8 } @nitpick_args.args_at(ptr %args22, i32 %i23)
  %raw.value25 = extractvalue { ptr, ptr, i8 } %calltmp24, 0
  store ptr %raw.value25, ptr %arg, align 8
  %arg26 = load ptr, ptr %arg, align 8
  %str = load %struct.NpkString, ptr %arg26, align 8
  %prefix = load %struct.NpkString, ptr @.str.155, align 8
  %starts_with = call i1 @npk_string_starts_with(%struct.NpkString %str, %struct.NpkString %prefix)
  %eqtmp = icmp eq i1 %starts_with, false
  %ifcond27 = icmp ne i1 %eqtmp, false
  br i1 %ifcond27, label %then28, label %ifcont42

then28:                                           ; preds = %whilebody
  %non_flags29 = load i32, ptr %non_flags, align 4
  %eqtmp30 = icmp eq i32 %non_flags29, 0
  %ifcond31 = icmp ne i1 %eqtmp30, false
  br i1 %ifcond31, label %then32, label %else

then32:                                           ; preds = %then28
  %arg33 = load ptr, ptr %arg, align 8
  store ptr %arg33, ptr %src_path, align 8
  br label %ifcont40

else:                                             ; preds = %then28
  %non_flags34 = load i32, ptr %non_flags, align 4
  %eqtmp35 = icmp eq i32 %non_flags34, 1
  %ifcond36 = icmp ne i1 %eqtmp35, false
  br i1 %ifcond36, label %then37, label %ifcont39

then37:                                           ; preds = %else
  %arg38 = load ptr, ptr %arg, align 8
  store ptr %arg38, ptr %dst_path, align 8
  br label %ifcont39

ifcont39:                                         ; preds = %then37, %else
  br label %ifcont40

ifcont40:                                         ; preds = %ifcont39, %then32
  %non_flags41 = load i32, ptr %non_flags, align 4
  %addtmp = add i32 %non_flags41, 1
  store i32 %addtmp, ptr %non_flags, align 4
  br label %ifcont42

ifcont42:                                         ; preds = %ifcont40, %whilebody
  %i43 = load i32, ptr %i, align 4
  %addtmp44 = add i32 %i43, 1
  store i32 %addtmp44, ptr %i, align 4
  call void @npk_gc_safepoint()
  br label %whilecond

afterwhile:                                       ; preds = %whilecond
  %non_flags45 = load i32, ptr %non_flags, align 4
  %lttmp = icmp slt i32 %non_flags45, 2
  %ifcond46 = icmp ne i1 %lttmp, false
  br i1 %ifcond46, label %then47, label %ifcont49

then47:                                           ; preds = %afterwhile
  %calltmp48 = call { i32, ptr, i8 } @io_utils.print_err(ptr @.str.157)
  call void @proc_exit(i32 1)
  br label %ifcont49

ifcont49:                                         ; preds = %then47, %afterwhile
  %non_flags50 = load i32, ptr %non_flags, align 4
  %gttmp = icmp sgt i32 %non_flags50, 2
  %ifcond51 = icmp ne i1 %gttmp, false
  br i1 %ifcond51, label %then52, label %ifcont54

then52:                                           ; preds = %ifcont49
  %calltmp53 = call { i32, ptr, i8 } @io_utils.print_err(ptr @.str.159)
  call void @proc_exit(i32 1)
  br label %ifcont54

ifcont54:                                         ; preds = %then52, %ifcont49
  %status = alloca i32, align 4
  %src_path55 = load ptr, ptr %src_path, align 8
  %dst_path56 = load ptr, ptr %dst_path, align 8
  %recursive57 = load i32, ptr %recursive, align 4
  %calltmp58 = call { i32, ptr, i8 } @copy_recursive(ptr %src_path55, ptr %dst_path56, i32 %recursive57)
  %raw.value59 = extractvalue { i32, ptr, i8 } %calltmp58, 0
  store i32 %raw.value59, ptr %status, align 4
  %status60 = load i32, ptr %status, align 4
  call void @proc_exit(i32 %status60)
  ret i32 0
}

declare i32 @free(i64)

declare i64 @npk_ustack_new(i64)

declare void @npk_ustack_push(i64, i64, i64)

declare i64 @npk_ustack_pop(i64, i64)

declare void @proc_exit(i32)

declare void @npk_gc_init(i64, i64)

declare void @npk_args_init(i32, ptr)

declare void @npk_streams_init()

declare i1 @npk_string_starts_with(%struct.NpkString, %struct.NpkString)

define linkonce_odr i32 @__cp_init() {
entry:
  ret i32 0
}
