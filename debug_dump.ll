; ModuleID = 'src/dd/dd.npk'
source_filename = "src/dd/dd.npk"

%struct.NpkString = type { ptr, i64 }
%Numeric_vtable_t = type {}
%Display_vtable_t = type {}
%ArgParser = type { ptr, ptr, ptr }
%struct.NpkResult_int64 = type { i64, ptr, i8 }

@.str.data = private constant [1 x i8] zeroinitializer
@.str = private constant %struct.NpkString { ptr @.str.data, i64 0 }
@.str.data.1 = private constant [1 x i8] zeroinitializer
@.str.2 = private constant %struct.NpkString { ptr @.str.data.1, i64 0 }
@.str.data.3 = private constant [2 x i8] c"|\00"
@.str.4 = private constant %struct.NpkString { ptr @.str.data.3, i64 1 }
@.str.data.5 = private constant [1 x i8] zeroinitializer
@.str.6 = private constant %struct.NpkString { ptr @.str.data.5, i64 0 }
@.str.data.7 = private constant [1 x i8] zeroinitializer
@.str.8 = private constant %struct.NpkString { ptr @.str.data.7, i64 0 }
@.str.data.9 = private constant [2 x i8] c"|\00"
@.str.10 = private constant %struct.NpkString { ptr @.str.data.9, i64 1 }
@.str.11 = private constant %struct.NpkString { ptr @.str.data.9, i64 1 }
@.str.data.12 = private constant [2 x i8] c"|\00"
@.str.13 = private constant %struct.NpkString { ptr @.str.data.12, i64 1 }
@.str.14 = private constant %struct.NpkString { ptr @.str.data.12, i64 1 }
@.str.data.15 = private constant [1 x i8] zeroinitializer
@.str.16 = private constant %struct.NpkString { ptr @.str.data.15, i64 0 }
@.str.data.17 = private constant [1 x i8] zeroinitializer
@.str.18 = private constant %struct.NpkString { ptr @.str.data.17, i64 0 }
@.str.data.19 = private constant [1 x i8] zeroinitializer
@.str.20 = private constant %struct.NpkString { ptr @.str.data.19, i64 0 }
@.str.data.21 = private constant [2 x i8] c"|\00"
@.str.22 = private constant %struct.NpkString { ptr @.str.data.21, i64 1 }
@.str.data.23 = private constant [1 x i8] zeroinitializer
@.str.24 = private constant %struct.NpkString { ptr @.str.data.23, i64 0 }
@.str.data.25 = private constant [1 x i8] zeroinitializer
@.str.26 = private constant %struct.NpkString { ptr @.str.data.25, i64 0 }
@.str.data.27 = private constant [1 x i8] zeroinitializer
@.str.28 = private constant %struct.NpkString { ptr @.str.data.27, i64 0 }
@.str.data.29 = private constant [1 x i8] zeroinitializer
@.str.30 = private constant %struct.NpkString { ptr @.str.data.29, i64 0 }
@.str.data.31 = private constant [2 x i8] c"-\00"
@.str.32 = private constant %struct.NpkString { ptr @.str.data.31, i64 1 }
@.str.data.33 = private constant [2 x i8] c"1\00"
@.str.34 = private constant %struct.NpkString { ptr @.str.data.33, i64 1 }
@.str.data.35 = private constant [2 x i8] c"2\00"
@.str.36 = private constant %struct.NpkString { ptr @.str.data.35, i64 1 }
@.str.data.37 = private constant [2 x i8] c"3\00"
@.str.38 = private constant %struct.NpkString { ptr @.str.data.37, i64 1 }
@.str.data.39 = private constant [2 x i8] c"4\00"
@.str.40 = private constant %struct.NpkString { ptr @.str.data.39, i64 1 }
@.str.data.41 = private constant [2 x i8] c"5\00"
@.str.42 = private constant %struct.NpkString { ptr @.str.data.41, i64 1 }
@.str.data.43 = private constant [2 x i8] c"6\00"
@.str.44 = private constant %struct.NpkString { ptr @.str.data.43, i64 1 }
@.str.data.45 = private constant [2 x i8] c"7\00"
@.str.46 = private constant %struct.NpkString { ptr @.str.data.45, i64 1 }
@.str.data.47 = private constant [2 x i8] c"8\00"
@.str.48 = private constant %struct.NpkString { ptr @.str.data.47, i64 1 }
@.str.data.49 = private constant [2 x i8] c"9\00"
@.str.50 = private constant %struct.NpkString { ptr @.str.data.49, i64 1 }
@.str.data.51 = private constant [1 x i8] zeroinitializer
@.str.52 = private constant %struct.NpkString { ptr @.str.data.51, i64 0 }
@.str.data.53 = private constant [2 x i8] c"|\00"
@.str.54 = private constant %struct.NpkString { ptr @.str.data.53, i64 1 }
@.str.data.55 = private constant [2 x i8] c"|\00"
@.str.56 = private constant %struct.NpkString { ptr @.str.data.55, i64 1 }
@.str.data.57 = private constant [2 x i8] c"|\00"
@.str.58 = private constant %struct.NpkString { ptr @.str.data.57, i64 1 }
@.str.data.59 = private constant [2 x i8] c"|\00"
@.str.60 = private constant %struct.NpkString { ptr @.str.data.59, i64 1 }
@.str.data.61 = private constant [2 x i8] c"|\00"
@.str.62 = private constant %struct.NpkString { ptr @.str.data.61, i64 1 }
@.str.data.63 = private constant [2 x i8] c"|\00"
@.str.64 = private constant %struct.NpkString { ptr @.str.data.63, i64 1 }
@.str.data.65 = private constant [6 x i8] c"flag|\00"
@.str.66 = private constant %struct.NpkString { ptr @.str.data.65, i64 5 }
@.str.data.67 = private constant [2 x i8] c"|\00"
@.str.68 = private constant %struct.NpkString { ptr @.str.data.67, i64 1 }
@.str.data.69 = private constant [2 x i8] c"|\00"
@.str.70 = private constant %struct.NpkString { ptr @.str.data.69, i64 1 }
@.str.data.71 = private constant [5 x i8] c"opt|\00"
@.str.72 = private constant %struct.NpkString { ptr @.str.data.71, i64 4 }
@.str.data.73 = private constant [2 x i8] c"|\00"
@.str.74 = private constant %struct.NpkString { ptr @.str.data.73, i64 1 }
@.str.75 = private constant %struct.NpkString { ptr @.str.data.73, i64 1 }
@.str.data.76 = private constant [2 x i8] c"|\00"
@.str.77 = private constant %struct.NpkString { ptr @.str.data.76, i64 1 }
@.str.data.78 = private constant [2 x i8] c"|\00"
@.str.79 = private constant %struct.NpkString { ptr @.str.data.78, i64 1 }
@.str.data.80 = private constant [2 x i8] c"|\00"
@.str.81 = private constant %struct.NpkString { ptr @.str.data.80, i64 1 }
@.str.data.82 = private constant [2 x i8] c"|\00"
@.str.83 = private constant %struct.NpkString { ptr @.str.data.82, i64 1 }
@.str.data.84 = private constant [2 x i8] c"|\00"
@.str.85 = private constant %struct.NpkString { ptr @.str.data.84, i64 1 }
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
@.str.data.86 = private constant [19 x i8] c"/proc/self/cmdline\00"
@.str.87 = private constant %struct.NpkString { ptr @.str.data.86, i64 18 }
@.str.data.88 = private constant [2 x i8] c"|\00"
@.str.89 = private constant %struct.NpkString { ptr @.str.data.88, i64 1 }
@.str.data.90 = private constant [2 x i8] c"|\00"
@.str.91 = private constant %struct.NpkString { ptr @.str.data.90, i64 1 }
@.str.data.92 = private constant [1 x i8] zeroinitializer
@.str.93 = private constant %struct.NpkString { ptr @.str.data.92, i64 0 }
@.str.data.94 = private constant [2 x i8] c"|\00"
@.str.95 = private constant %struct.NpkString { ptr @.str.data.94, i64 1 }
@.str.data.96 = private constant [1 x i8] zeroinitializer
@.str.97 = private constant %struct.NpkString { ptr @.str.data.96, i64 0 }
@.str.data.98 = private constant [2 x i8] c"|\00"
@.str.99 = private constant %struct.NpkString { ptr @.str.data.98, i64 1 }
@.str.data.100 = private constant [2 x i8] c"0\00"
@.str.101 = private constant %struct.NpkString { ptr @.str.data.100, i64 1 }
@.str.data.102 = private constant [2 x i8] c"1\00"
@.str.103 = private constant %struct.NpkString { ptr @.str.data.102, i64 1 }
@.str.data.104 = private constant [2 x i8] c"2\00"
@.str.105 = private constant %struct.NpkString { ptr @.str.data.104, i64 1 }
@.str.data.106 = private constant [2 x i8] c"3\00"
@.str.107 = private constant %struct.NpkString { ptr @.str.data.106, i64 1 }
@.str.data.108 = private constant [2 x i8] c"4\00"
@.str.109 = private constant %struct.NpkString { ptr @.str.data.108, i64 1 }
@.str.data.110 = private constant [2 x i8] c"5\00"
@.str.111 = private constant %struct.NpkString { ptr @.str.data.110, i64 1 }
@.str.data.112 = private constant [2 x i8] c"6\00"
@.str.113 = private constant %struct.NpkString { ptr @.str.data.112, i64 1 }
@.str.data.114 = private constant [2 x i8] c"7\00"
@.str.115 = private constant %struct.NpkString { ptr @.str.data.114, i64 1 }
@.str.data.116 = private constant [2 x i8] c"8\00"
@.str.117 = private constant %struct.NpkString { ptr @.str.data.116, i64 1 }
@.str.data.118 = private constant [2 x i8] c"9\00"
@.str.119 = private constant %struct.NpkString { ptr @.str.data.118, i64 1 }
@.str.data.120 = private constant [2 x i8] c"K\00"
@.str.121 = private constant %struct.NpkString { ptr @.str.data.120, i64 1 }
@.str.data.122 = private constant [2 x i8] c"k\00"
@.str.123 = private constant %struct.NpkString { ptr @.str.data.122, i64 1 }
@.str.data.124 = private constant [2 x i8] c"M\00"
@.str.125 = private constant %struct.NpkString { ptr @.str.data.124, i64 1 }
@.str.data.126 = private constant [2 x i8] c"m\00"
@.str.127 = private constant %struct.NpkString { ptr @.str.data.126, i64 1 }
@.str.data.128 = private constant [2 x i8] c"G\00"
@.str.129 = private constant %struct.NpkString { ptr @.str.data.128, i64 1 }
@.str.data.130 = private constant [2 x i8] c"g\00"
@.str.131 = private constant %struct.NpkString { ptr @.str.data.130, i64 1 }
@.str.data.132 = private constant [1 x i8] zeroinitializer
@.str.133 = private constant %struct.NpkString { ptr @.str.data.132, i64 0 }
@.str.data.134 = private constant [1 x i8] zeroinitializer
@.str.135 = private constant %struct.NpkString { ptr @.str.data.134, i64 0 }
@.str.data.136 = private constant [4 x i8] c"if=\00"
@.str.137 = private constant %struct.NpkString { ptr @.str.data.136, i64 3 }
@.str.data.138 = private constant [4 x i8] c"of=\00"
@.str.139 = private constant %struct.NpkString { ptr @.str.data.138, i64 3 }
@.str.data.140 = private constant [4 x i8] c"bs=\00"
@.str.141 = private constant %struct.NpkString { ptr @.str.data.140, i64 3 }
@.str.data.142 = private constant [7 x i8] c"count=\00"
@.str.143 = private constant %struct.NpkString { ptr @.str.data.142, i64 6 }
@.str.data.144 = private constant [31 x i8] c"dd: failed to open input file\0A\00"
@.str.145 = private constant %struct.NpkString { ptr @.str.data.144, i64 30 }
@.str.data.146 = private constant [32 x i8] c"dd: failed to open output file\0A\00"
@.str.147 = private constant %struct.NpkString { ptr @.str.data.146, i64 31 }
@.str.data.148 = private constant [18 x i8] c"dd: memory error\0A\00"
@.str.149 = private constant %struct.NpkString { ptr @.str.data.148, i64 17 }

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
  store ptr @.str, ptr %rest, align 8
  %sep = alloca i64, align 8
  store i64 0, ptr %sep, align 4
  %len2 = load i64, ptr %len, align 4
  %lttmp = icmp slt i64 %len2, 2
  %ifcond = icmp ne i1 %lttmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %entry
  ret { ptr, ptr, i8 } { ptr @.str.2, ptr null, i8 0 }

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
  %index_of_result = call i64 @npk_string_index_of_simple(ptr %rest7, ptr @.str.4)
  store i64 %index_of_result, ptr %sep, align 4
  %sep8 = load i64, ptr %sep, align 4
  %lttmp9 = icmp slt i64 %sep8, 0
  %ifcond10 = icmp ne i1 %lttmp9, false
  br i1 %ifcond10, label %then11, label %ifcont12

then11:                                           ; preds = %whilebody
  ret { ptr, ptr, i8 } { ptr @.str.6, ptr null, i8 0 }

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
  ret { ptr, ptr, i8 } { ptr @.str.8, ptr null, i8 0 }
}

define linkonce_odr { i1, ptr, i8 } @nitpick_args.args_has(ptr %args, ptr %flag) {
entry:
  %needle = alloca ptr, align 8
  %concat_str = call ptr @npk_string_concat_simple(ptr %flag, ptr @.str.11)
  %concat_str1 = call ptr @npk_string_concat_simple(ptr @.str.10, ptr %concat_str)
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
  %concat_str = call ptr @npk_string_concat_simple(ptr %key, ptr @.str.14)
  %concat_str1 = call ptr @npk_string_concat_simple(ptr @.str.13, ptr %concat_str)
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
  store ptr @.str.16, ptr %rest, align 8
  %sep = alloca i64, align 8
  store i64 0, ptr %sep, align 4
  %pos7 = load i64, ptr %pos, align 4
  %lttmp = icmp slt i64 %pos7, 0
  %ifcond = icmp ne i1 %lttmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %entry
  ret { ptr, ptr, i8 } { ptr @.str.18, ptr null, i8 0 }

ifcont:                                           ; preds = %entry
  %value_start8 = load i64, ptr %value_start, align 4
  %len9 = load i64, ptr %len, align 4
  %getmp = icmp sge i64 %value_start8, %len9
  %ifcond10 = icmp ne i1 %getmp, false
  br i1 %ifcond10, label %then11, label %ifcont12

then11:                                           ; preds = %ifcont
  ret { ptr, ptr, i8 } { ptr @.str.20, ptr null, i8 0 }

ifcont12:                                         ; preds = %ifcont
  %value_start13 = load i64, ptr %value_start, align 4
  %len14 = load i64, ptr %len, align 4
  %substr_result = call ptr @npk_string_substring_simple(ptr %args, i64 %value_start13, i64 %len14)
  store ptr %substr_result, ptr %rest, align 8
  %rest15 = load ptr, ptr %rest, align 8
  %index_of_result16 = call i64 @npk_string_index_of_simple(ptr %rest15, ptr @.str.22)
  store i64 %index_of_result16, ptr %sep, align 4
  %sep17 = load i64, ptr %sep, align 4
  %letmp = icmp sle i64 %sep17, 0
  %ifcond18 = icmp ne i1 %letmp, false
  br i1 %ifcond18, label %then19, label %ifcont20

then19:                                           ; preds = %ifcont12
  ret { ptr, ptr, i8 } { ptr @.str.24, ptr null, i8 0 }

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
  %calltmp = call { ptr, ptr, i8 } @nitpick_args.args_get_or(ptr %args, ptr %key, ptr @.str.26)
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
  store ptr @.str.28, ptr %c0, align 8
  %c = alloca ptr, align 8
  store ptr @.str.30, ptr %c, align 8
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
  %str2 = load %struct.NpkString, ptr @.str.32, align 8
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
  %str219 = load %struct.NpkString, ptr @.str.34, align 8
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
  %str228 = load %struct.NpkString, ptr @.str.36, align 8
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
  %str237 = load %struct.NpkString, ptr @.str.38, align 8
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
  %str246 = load %struct.NpkString, ptr @.str.40, align 8
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
  %str255 = load %struct.NpkString, ptr @.str.42, align 8
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
  %str264 = load %struct.NpkString, ptr @.str.44, align 8
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
  %str273 = load %struct.NpkString, ptr @.str.46, align 8
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
  %str282 = load %struct.NpkString, ptr @.str.48, align 8
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
  %str291 = load %struct.NpkString, ptr @.str.50, align 8
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
  store ptr @.str.52, ptr %ch, align 8
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
  %str2 = load %struct.NpkString, ptr @.str.54, align 8
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
  store ptr @.str.56, ptr %keys.ptr, align 8
  %descs.ptr = getelementptr inbounds nuw %ArgParser, ptr %p, i32 0, i32 1
  store ptr @.str.58, ptr %descs.ptr, align 8
  %types.ptr = getelementptr inbounds nuw %ArgParser, ptr %p, i32 0, i32 2
  store ptr @.str.60, ptr %types.ptr, align 8
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
  %concat_str = call ptr @npk_string_concat_simple(ptr %key, ptr @.str.62)
  %concat_str3 = call ptr @npk_string_concat_simple(ptr %keys, ptr %concat_str)
  %keys.ptr = getelementptr inbounds nuw %ArgParser, ptr %out, i32 0, i32 0
  store ptr %concat_str3, ptr %keys.ptr, align 8
  %out4 = load %ArgParser, ptr %out, align 8
  %descs = extractvalue %ArgParser %out4, 1
  %concat_str5 = call ptr @npk_string_concat_simple(ptr %desc, ptr @.str.64)
  %concat_str6 = call ptr @npk_string_concat_simple(ptr %descs, ptr %concat_str5)
  %descs.ptr = getelementptr inbounds nuw %ArgParser, ptr %out, i32 0, i32 1
  store ptr %concat_str6, ptr %descs.ptr, align 8
  %out7 = load %ArgParser, ptr %out, align 8
  %types = extractvalue %ArgParser %out7, 2
  %concat_str8 = call ptr @npk_string_concat_simple(ptr %types, ptr @.str.66)
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
  %concat_str = call ptr @npk_string_concat_simple(ptr %key, ptr @.str.68)
  %concat_str3 = call ptr @npk_string_concat_simple(ptr %keys, ptr %concat_str)
  %keys.ptr = getelementptr inbounds nuw %ArgParser, ptr %out, i32 0, i32 0
  store ptr %concat_str3, ptr %keys.ptr, align 8
  %out4 = load %ArgParser, ptr %out, align 8
  %descs = extractvalue %ArgParser %out4, 1
  %concat_str5 = call ptr @npk_string_concat_simple(ptr %desc, ptr @.str.70)
  %concat_str6 = call ptr @npk_string_concat_simple(ptr %descs, ptr %concat_str5)
  %descs.ptr = getelementptr inbounds nuw %ArgParser, ptr %out, i32 0, i32 1
  store ptr %concat_str6, ptr %descs.ptr, align 8
  %out7 = load %ArgParser, ptr %out, align 8
  %types = extractvalue %ArgParser %out7, 2
  %concat_str8 = call ptr @npk_string_concat_simple(ptr %types, ptr @.str.72)
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
  %concat_str = call ptr @npk_string_concat_simple(ptr %a0, ptr @.str.75)
  %concat_str1 = call ptr @npk_string_concat_simple(ptr @.str.74, ptr %concat_str)
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
  %concat_str = call ptr @npk_string_concat_simple(ptr %a1, ptr @.str.77)
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
  %concat_str = call ptr @npk_string_concat_simple(ptr %a2, ptr @.str.79)
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
  %concat_str = call ptr @npk_string_concat_simple(ptr %a3, ptr @.str.81)
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
  %concat_str = call ptr @npk_string_concat_simple(ptr %a4, ptr @.str.83)
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
  %concat_str = call ptr @npk_string_concat_simple(ptr %a5, ptr @.str.85)
  %concat_str2 = call ptr @npk_string_concat_simple(ptr %b1, ptr %concat_str)
  %result.val = insertvalue { ptr, ptr, i8 } undef, ptr %concat_str2, 0
  %result.err = insertvalue { ptr, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { ptr, ptr, i8 } %result.err, i8 0, 2
  ret { ptr, ptr, i8 } %result.is_error
}

declare i64 @string_length(ptr)

declare ptr @npk_string_substring_simple(ptr, i64, i64)

declare i64 @npk_string_index_of_simple(ptr, ptr)

declare void @npk_gc_safepoint()

declare ptr @npk_string_concat_simple(ptr, ptr)

declare i1 @npk_string_contains(%struct.NpkString, %struct.NpkString)

declare i1 @npk_string_equals(%struct.NpkString, %struct.NpkString)

define linkonce_odr i32 @__nitpick_args_init() {
entry:
  ret i32 0
}

declare void @npk_mem_write_byte(i64, i64, i64)

declare i64 @npk_mem_read_byte(i64, i64)

define internal { ptr, ptr, i8 } @args_load() {
entry:
  %fd = alloca i64, align 8
  %sys_str_struct = load %struct.NpkString, ptr @.str.87, align 8
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
  %fd1 = load i64, ptr %fd, align 4
  %lttmp = icmp slt i64 %fd1, 0
  %ifcond = icmp ne i1 %lttmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %merge_block
  ret { ptr, ptr, i8 } { ptr @.str.89, ptr null, i8 0 }

ifcont:                                           ; preds = %merge_block
  %result = alloca ptr, align 8
  store ptr @.str.91, ptr %result, align 8
  %current = alloca ptr, align 8
  store ptr @.str.93, ptr %current, align 8
  %buf = alloca i64, align 8
  %syscall_ret2 = call i64 asm sideeffect "syscall", "={rax},{rax},{rdi},{rsi},{rdx},{r10},{r8},{r9},~{rcx},~{r11},~{memory}"(i64 9, i64 0, i64 65536, i64 3, i64 34, i64 -1, i64 0)
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

error_block14:                                    ; preds = %ifcont
  br label %merge_block16

success_block15:                                  ; preds = %ifcont
  %value17 = extractvalue %struct.NpkResult_int64 %sys_result.is_error11, 0
  br label %merge_block16

merge_block16:                                    ; preds = %success_block15, %error_block14
  %unwrap_result18 = phi i64 [ 0, %error_block14 ], [ %value17, %success_block15 ]
  store i64 %unwrap_result18, ptr %buf, align 4
  %buf19 = load i64, ptr %buf, align 4
  %gttmp = icmp sgt i64 %buf19, 0
  %ifcond20 = icmp ne i1 %gttmp, false
  br i1 %ifcond20, label %then21, label %ifcont79

then21:                                           ; preds = %merge_block16
  %nread = alloca i64, align 8
  %fd22 = load i64, ptr %fd, align 4
  %buf23 = load i64, ptr %buf, align 4
  %syscall_ret24 = call i64 asm sideeffect "syscall", "={rax},{rax},{rdi},{rsi},{rdx},~{rcx},~{r11},~{memory}"(i64 0, i64 %fd22, i64 %buf23, i64 65536)
  %sys_is_err25 = icmp slt i64 %syscall_ret24, 0
  %sys_neg_errno26 = sub i64 0, %syscall_ret24
  %sys_err_ptr27 = inttoptr i64 %sys_neg_errno26 to ptr
  %sys_val28 = select i1 %sys_is_err25, i64 0, i64 %syscall_ret24
  %sys_err29 = select i1 %sys_is_err25, ptr %sys_err_ptr27, ptr null
  %sys_flag30 = select i1 %sys_is_err25, i8 1, i8 0
  %sys_result.val31 = insertvalue %struct.NpkResult_int64 undef, i64 %sys_val28, 0
  %sys_result.err32 = insertvalue %struct.NpkResult_int64 %sys_result.val31, ptr %sys_err29, 1
  %sys_result.is_error33 = insertvalue %struct.NpkResult_int64 %sys_result.err32, i8 %sys_flag30, 2
  %is_error34 = extractvalue %struct.NpkResult_int64 %sys_result.is_error33, 2
  %is_error_bool35 = icmp ne i8 %is_error34, 0
  br i1 %is_error_bool35, label %error_block36, label %success_block37

error_block36:                                    ; preds = %then21
  br label %merge_block38

success_block37:                                  ; preds = %then21
  %value39 = extractvalue %struct.NpkResult_int64 %sys_result.is_error33, 0
  br label %merge_block38

merge_block38:                                    ; preds = %success_block37, %error_block36
  %unwrap_result40 = phi i64 [ -1, %error_block36 ], [ %value39, %success_block37 ]
  store i64 %unwrap_result40, ptr %nread, align 4
  %nread41 = load i64, ptr %nread, align 4
  %gttmp42 = icmp sgt i64 %nread41, 0
  %ifcond43 = icmp ne i1 %gttmp42, false
  br i1 %ifcond43, label %then44, label %ifcont67

then44:                                           ; preds = %merge_block38
  %i = alloca i64, align 8
  store i64 0, ptr %i, align 4
  br label %whilecond

whilecond:                                        ; preds = %ifcont65, %then44
  %i45 = load i64, ptr %i, align 4
  %nread46 = load i64, ptr %nread, align 4
  %lttmp47 = icmp slt i64 %i45, %nread46
  %whilecond48 = icmp ne i1 %lttmp47, false
  br i1 %whilecond48, label %whilebody, label %afterwhile

whilebody:                                        ; preds = %whilecond
  %c = alloca i64, align 8
  %buf49 = load i64, ptr %buf, align 4
  %i50 = load i64, ptr %i, align 4
  %calltmp = call i64 @npk_mem_read_byte(i64 %buf49, i64 %i50)
  store i64 %calltmp, ptr %c, align 4
  %c51 = load i64, ptr %c, align 4
  %eqtmp = icmp eq i64 %c51, 0
  %ifcond52 = icmp ne i1 %eqtmp, false
  br i1 %ifcond52, label %then53, label %else

then53:                                           ; preds = %whilebody
  %current54 = load ptr, ptr %current, align 8
  %str = load %struct.NpkString, ptr %current54, align 8
  %length = extractvalue %struct.NpkString %str, 1
  %gttmp55 = icmp sgt i64 %length, 0
  %ifcond56 = icmp ne i1 %gttmp55, false
  br i1 %ifcond56, label %then57, label %ifcont61

then57:                                           ; preds = %then53
  %result58 = load ptr, ptr %result, align 8
  %current59 = load ptr, ptr %current, align 8
  %concat_str = call ptr @npk_string_concat_simple(ptr %current59, ptr @.str.95)
  %concat_str60 = call ptr @npk_string_concat_simple(ptr %result58, ptr %concat_str)
  store ptr %concat_str60, ptr %result, align 8
  store ptr @.str.97, ptr %current, align 8
  br label %ifcont61

ifcont61:                                         ; preds = %then57, %then53
  br label %ifcont65

else:                                             ; preds = %whilebody
  %current62 = load ptr, ptr %current, align 8
  %c63 = load i64, ptr %c, align 4
  %cast.trunc = trunc i64 %c63 to i8
  %char_str = call ptr @npk_string_from_char_simple(i8 %cast.trunc)
  %concat_str64 = call ptr @npk_string_concat_simple(ptr %current62, ptr %char_str)
  store ptr %concat_str64, ptr %current, align 8
  br label %ifcont65

ifcont65:                                         ; preds = %else, %ifcont61
  %i66 = load i64, ptr %i, align 4
  %addtmp = add i64 %i66, 1
  store i64 %addtmp, ptr %i, align 4
  call void @npk_gc_safepoint()
  br label %whilecond

afterwhile:                                       ; preds = %whilecond
  br label %ifcont67

ifcont67:                                         ; preds = %afterwhile, %merge_block38
  %buf68 = load i64, ptr %buf, align 4
  %syscall_ret69 = call i64 asm sideeffect "syscall", "={rax},{rax},{rdi},{rsi},~{rcx},~{r11},~{memory}"(i64 11, i64 %buf68, i64 65536)
  %sys_is_err70 = icmp slt i64 %syscall_ret69, 0
  %sys_neg_errno71 = sub i64 0, %syscall_ret69
  %sys_err_ptr72 = inttoptr i64 %sys_neg_errno71 to ptr
  %sys_val73 = select i1 %sys_is_err70, i64 0, i64 %syscall_ret69
  %sys_err74 = select i1 %sys_is_err70, ptr %sys_err_ptr72, ptr null
  %sys_flag75 = select i1 %sys_is_err70, i8 1, i8 0
  %sys_result.val76 = insertvalue %struct.NpkResult_int64 undef, i64 %sys_val73, 0
  %sys_result.err77 = insertvalue %struct.NpkResult_int64 %sys_result.val76, ptr %sys_err74, 1
  %sys_result.is_error78 = insertvalue %struct.NpkResult_int64 %sys_result.err77, i8 %sys_flag75, 2
  br label %ifcont79

ifcont79:                                         ; preds = %ifcont67, %merge_block16
  %fd80 = load i64, ptr %fd, align 4
  %syscall_ret81 = call i64 asm sideeffect "syscall", "={rax},{rax},{rdi},~{rcx},~{r11},~{memory}"(i64 3, i64 %fd80)
  %sys_is_err82 = icmp slt i64 %syscall_ret81, 0
  %sys_neg_errno83 = sub i64 0, %syscall_ret81
  %sys_err_ptr84 = inttoptr i64 %sys_neg_errno83 to ptr
  %sys_val85 = select i1 %sys_is_err82, i64 0, i64 %syscall_ret81
  %sys_err86 = select i1 %sys_is_err82, ptr %sys_err_ptr84, ptr null
  %sys_flag87 = select i1 %sys_is_err82, i8 1, i8 0
  %sys_result.val88 = insertvalue %struct.NpkResult_int64 undef, i64 %sys_val85, 0
  %sys_result.err89 = insertvalue %struct.NpkResult_int64 %sys_result.val88, ptr %sys_err86, 1
  %sys_result.is_error90 = insertvalue %struct.NpkResult_int64 %sys_result.err89, i8 %sys_flag87, 2
  %current91 = load ptr, ptr %current, align 8
  %str92 = load %struct.NpkString, ptr %current91, align 8
  %length93 = extractvalue %struct.NpkString %str92, 1
  %gttmp94 = icmp sgt i64 %length93, 0
  %ifcond95 = icmp ne i1 %gttmp94, false
  br i1 %ifcond95, label %then96, label %ifcont101

then96:                                           ; preds = %ifcont79
  %result97 = load ptr, ptr %result, align 8
  %current98 = load ptr, ptr %current, align 8
  %concat_str99 = call ptr @npk_string_concat_simple(ptr %current98, ptr @.str.99)
  %concat_str100 = call ptr @npk_string_concat_simple(ptr %result97, ptr %concat_str99)
  store ptr %concat_str100, ptr %result, align 8
  br label %ifcont101

ifcont101:                                        ; preds = %then96, %ifcont79
  %result102 = load ptr, ptr %result, align 8
  %result.val = insertvalue { ptr, ptr, i8 } undef, ptr %result102, 0
  %result.err = insertvalue { ptr, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { ptr, ptr, i8 } %result.err, i8 0, 2
  ret { ptr, ptr, i8 } %result.is_error
}

define internal { i32, ptr, i8 } @print_err(ptr %s) {
entry:
  %len = alloca i64, align 8
  %str = load %struct.NpkString, ptr %s, align 8
  %length = extractvalue %struct.NpkString %str, 1
  store i64 %length, ptr %len, align 4
  %sys_str_struct = load %struct.NpkString, ptr %s, align 8
  %sys_str_data = extractvalue %struct.NpkString %sys_str_struct, 0
  %sys_strvar_int = ptrtoint ptr %sys_str_data to i64
  %len1 = load i64, ptr %len, align 4
  %syscall_ret = call i64 asm sideeffect "syscall", "={rax},{rax},{rdi},{rsi},{rdx},~{rcx},~{r11},~{memory}"(i64 1, i64 2, i64 %sys_strvar_int, i64 %len1)
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
  %cast.trunc = trunc i64 %unwrap_result to i32
  %result.val = insertvalue { i32, ptr, i8 } undef, i32 %cast.trunc, 0
  %result.err = insertvalue { i32, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i32, ptr, i8 } %result.err, i8 0, 2
  ret { i32, ptr, i8 } %result.is_error
}

define internal { i32, ptr, i8 } @failsafe(i32 %err) {
entry:
  %err.addr = alloca i32, align 4
  store i32 %err, ptr %err.addr, align 4
  %err1 = load i32, ptr %err.addr, align 4
  call void @proc_exit(i32 1)
  ret { i32, ptr, i8 } zeroinitializer
}

define internal { i64, ptr, i8 } @parse_int(ptr %s) {
entry:
  %res = alloca i64, align 8
  store i64 0, ptr %res, align 4
  %len = alloca i64, align 8
  %str = load %struct.NpkString, ptr %s, align 8
  %length = extractvalue %struct.NpkString %str, 1
  store i64 %length, ptr %len, align 4
  %i = alloca i64, align 8
  store i64 0, ptr %i, align 4
  %mult = alloca i64, align 8
  store i64 1, ptr %mult, align 4
  br label %whilecond

whilecond:                                        ; preds = %ifcont119, %entry
  %i1 = load i64, ptr %i, align 4
  %len2 = load i64, ptr %len, align 4
  %lttmp = icmp slt i64 %i1, %len2
  %whilecond3 = icmp ne i1 %lttmp, false
  br i1 %whilecond3, label %whilebody, label %afterwhile

whilebody:                                        ; preds = %whilecond
  %ch = alloca ptr, align 8
  %i4 = load i64, ptr %i, align 4
  %i5 = load i64, ptr %i, align 4
  %addtmp = add i64 %i5, 1
  %substr_result = call ptr @npk_string_substring_simple(ptr %s, i64 %i4, i64 %addtmp)
  store ptr %substr_result, ptr %ch, align 8
  %d = alloca i64, align 8
  store i64 -1, ptr %d, align 4
  %ch6 = load ptr, ptr %ch, align 8
  %str1 = load %struct.NpkString, ptr %ch6, align 8
  %str2 = load %struct.NpkString, ptr @.str.101, align 8
  %equals = call i1 @npk_string_equals(%struct.NpkString %str1, %struct.NpkString %str2)
  %ifcond = icmp ne i1 %equals, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %whilebody
  store i64 0, ptr %d, align 4
  br label %ifcont

ifcont:                                           ; preds = %then, %whilebody
  %ch7 = load ptr, ptr %ch, align 8
  %str18 = load %struct.NpkString, ptr %ch7, align 8
  %str29 = load %struct.NpkString, ptr @.str.103, align 8
  %equals10 = call i1 @npk_string_equals(%struct.NpkString %str18, %struct.NpkString %str29)
  %ifcond11 = icmp ne i1 %equals10, false
  br i1 %ifcond11, label %then12, label %ifcont13

then12:                                           ; preds = %ifcont
  store i64 1, ptr %d, align 4
  br label %ifcont13

ifcont13:                                         ; preds = %then12, %ifcont
  %ch14 = load ptr, ptr %ch, align 8
  %str115 = load %struct.NpkString, ptr %ch14, align 8
  %str216 = load %struct.NpkString, ptr @.str.105, align 8
  %equals17 = call i1 @npk_string_equals(%struct.NpkString %str115, %struct.NpkString %str216)
  %ifcond18 = icmp ne i1 %equals17, false
  br i1 %ifcond18, label %then19, label %ifcont20

then19:                                           ; preds = %ifcont13
  store i64 2, ptr %d, align 4
  br label %ifcont20

ifcont20:                                         ; preds = %then19, %ifcont13
  %ch21 = load ptr, ptr %ch, align 8
  %str122 = load %struct.NpkString, ptr %ch21, align 8
  %str223 = load %struct.NpkString, ptr @.str.107, align 8
  %equals24 = call i1 @npk_string_equals(%struct.NpkString %str122, %struct.NpkString %str223)
  %ifcond25 = icmp ne i1 %equals24, false
  br i1 %ifcond25, label %then26, label %ifcont27

then26:                                           ; preds = %ifcont20
  store i64 3, ptr %d, align 4
  br label %ifcont27

ifcont27:                                         ; preds = %then26, %ifcont20
  %ch28 = load ptr, ptr %ch, align 8
  %str129 = load %struct.NpkString, ptr %ch28, align 8
  %str230 = load %struct.NpkString, ptr @.str.109, align 8
  %equals31 = call i1 @npk_string_equals(%struct.NpkString %str129, %struct.NpkString %str230)
  %ifcond32 = icmp ne i1 %equals31, false
  br i1 %ifcond32, label %then33, label %ifcont34

then33:                                           ; preds = %ifcont27
  store i64 4, ptr %d, align 4
  br label %ifcont34

ifcont34:                                         ; preds = %then33, %ifcont27
  %ch35 = load ptr, ptr %ch, align 8
  %str136 = load %struct.NpkString, ptr %ch35, align 8
  %str237 = load %struct.NpkString, ptr @.str.111, align 8
  %equals38 = call i1 @npk_string_equals(%struct.NpkString %str136, %struct.NpkString %str237)
  %ifcond39 = icmp ne i1 %equals38, false
  br i1 %ifcond39, label %then40, label %ifcont41

then40:                                           ; preds = %ifcont34
  store i64 5, ptr %d, align 4
  br label %ifcont41

ifcont41:                                         ; preds = %then40, %ifcont34
  %ch42 = load ptr, ptr %ch, align 8
  %str143 = load %struct.NpkString, ptr %ch42, align 8
  %str244 = load %struct.NpkString, ptr @.str.113, align 8
  %equals45 = call i1 @npk_string_equals(%struct.NpkString %str143, %struct.NpkString %str244)
  %ifcond46 = icmp ne i1 %equals45, false
  br i1 %ifcond46, label %then47, label %ifcont48

then47:                                           ; preds = %ifcont41
  store i64 6, ptr %d, align 4
  br label %ifcont48

ifcont48:                                         ; preds = %then47, %ifcont41
  %ch49 = load ptr, ptr %ch, align 8
  %str150 = load %struct.NpkString, ptr %ch49, align 8
  %str251 = load %struct.NpkString, ptr @.str.115, align 8
  %equals52 = call i1 @npk_string_equals(%struct.NpkString %str150, %struct.NpkString %str251)
  %ifcond53 = icmp ne i1 %equals52, false
  br i1 %ifcond53, label %then54, label %ifcont55

then54:                                           ; preds = %ifcont48
  store i64 7, ptr %d, align 4
  br label %ifcont55

ifcont55:                                         ; preds = %then54, %ifcont48
  %ch56 = load ptr, ptr %ch, align 8
  %str157 = load %struct.NpkString, ptr %ch56, align 8
  %str258 = load %struct.NpkString, ptr @.str.117, align 8
  %equals59 = call i1 @npk_string_equals(%struct.NpkString %str157, %struct.NpkString %str258)
  %ifcond60 = icmp ne i1 %equals59, false
  br i1 %ifcond60, label %then61, label %ifcont62

then61:                                           ; preds = %ifcont55
  store i64 8, ptr %d, align 4
  br label %ifcont62

ifcont62:                                         ; preds = %then61, %ifcont55
  %ch63 = load ptr, ptr %ch, align 8
  %str164 = load %struct.NpkString, ptr %ch63, align 8
  %str265 = load %struct.NpkString, ptr @.str.119, align 8
  %equals66 = call i1 @npk_string_equals(%struct.NpkString %str164, %struct.NpkString %str265)
  %ifcond67 = icmp ne i1 %equals66, false
  br i1 %ifcond67, label %then68, label %ifcont69

then68:                                           ; preds = %ifcont62
  store i64 9, ptr %d, align 4
  br label %ifcont69

ifcont69:                                         ; preds = %then68, %ifcont62
  %d70 = load i64, ptr %d, align 4
  %getmp = icmp sge i64 %d70, 0
  %ifcond71 = icmp ne i1 %getmp, false
  br i1 %ifcond71, label %then72, label %else

then72:                                           ; preds = %ifcont69
  %res73 = load i64, ptr %res, align 4
  %multmp = mul i64 %res73, 10
  %d74 = load i64, ptr %d, align 4
  %addtmp75 = add i64 %multmp, %d74
  store i64 %addtmp75, ptr %res, align 4
  br label %ifcont119

else:                                             ; preds = %ifcont69
  %ch76 = load ptr, ptr %ch, align 8
  %str177 = load %struct.NpkString, ptr %ch76, align 8
  %str278 = load %struct.NpkString, ptr @.str.121, align 8
  %equals79 = call i1 @npk_string_equals(%struct.NpkString %str177, %struct.NpkString %str278)
  %ifcond80 = icmp ne i1 %equals79, false
  br i1 %ifcond80, label %then81, label %ifcont82

then81:                                           ; preds = %else
  store i64 1024, ptr %mult, align 4
  br label %ifcont82

ifcont82:                                         ; preds = %then81, %else
  %ch83 = load ptr, ptr %ch, align 8
  %str184 = load %struct.NpkString, ptr %ch83, align 8
  %str285 = load %struct.NpkString, ptr @.str.123, align 8
  %equals86 = call i1 @npk_string_equals(%struct.NpkString %str184, %struct.NpkString %str285)
  %ifcond87 = icmp ne i1 %equals86, false
  br i1 %ifcond87, label %then88, label %ifcont89

then88:                                           ; preds = %ifcont82
  store i64 1024, ptr %mult, align 4
  br label %ifcont89

ifcont89:                                         ; preds = %then88, %ifcont82
  %ch90 = load ptr, ptr %ch, align 8
  %str191 = load %struct.NpkString, ptr %ch90, align 8
  %str292 = load %struct.NpkString, ptr @.str.125, align 8
  %equals93 = call i1 @npk_string_equals(%struct.NpkString %str191, %struct.NpkString %str292)
  %ifcond94 = icmp ne i1 %equals93, false
  br i1 %ifcond94, label %then95, label %ifcont96

then95:                                           ; preds = %ifcont89
  store i64 1048576, ptr %mult, align 4
  br label %ifcont96

ifcont96:                                         ; preds = %then95, %ifcont89
  %ch97 = load ptr, ptr %ch, align 8
  %str198 = load %struct.NpkString, ptr %ch97, align 8
  %str299 = load %struct.NpkString, ptr @.str.127, align 8
  %equals100 = call i1 @npk_string_equals(%struct.NpkString %str198, %struct.NpkString %str299)
  %ifcond101 = icmp ne i1 %equals100, false
  br i1 %ifcond101, label %then102, label %ifcont103

then102:                                          ; preds = %ifcont96
  store i64 1048576, ptr %mult, align 4
  br label %ifcont103

ifcont103:                                        ; preds = %then102, %ifcont96
  %ch104 = load ptr, ptr %ch, align 8
  %str1105 = load %struct.NpkString, ptr %ch104, align 8
  %str2106 = load %struct.NpkString, ptr @.str.129, align 8
  %equals107 = call i1 @npk_string_equals(%struct.NpkString %str1105, %struct.NpkString %str2106)
  %ifcond108 = icmp ne i1 %equals107, false
  br i1 %ifcond108, label %then109, label %ifcont110

then109:                                          ; preds = %ifcont103
  store i64 1073741824, ptr %mult, align 4
  br label %ifcont110

ifcont110:                                        ; preds = %then109, %ifcont103
  %ch111 = load ptr, ptr %ch, align 8
  %str1112 = load %struct.NpkString, ptr %ch111, align 8
  %str2113 = load %struct.NpkString, ptr @.str.131, align 8
  %equals114 = call i1 @npk_string_equals(%struct.NpkString %str1112, %struct.NpkString %str2113)
  %ifcond115 = icmp ne i1 %equals114, false
  br i1 %ifcond115, label %then116, label %ifcont117

then116:                                          ; preds = %ifcont110
  store i64 1073741824, ptr %mult, align 4
  br label %ifcont117

ifcont117:                                        ; preds = %then116, %ifcont110
  %len118 = load i64, ptr %len, align 4
  store i64 %len118, ptr %i, align 4
  br label %ifcont119

ifcont119:                                        ; preds = %ifcont117, %then72
  %i120 = load i64, ptr %i, align 4
  %addtmp121 = add i64 %i120, 1
  store i64 %addtmp121, ptr %i, align 4
  call void @npk_gc_safepoint()
  br label %whilecond

afterwhile:                                       ; preds = %whilecond
  %res122 = load i64, ptr %res, align 4
  %mult123 = load i64, ptr %mult, align 4
  %multmp124 = mul i64 %res122, %mult123
  %result.val = insertvalue { i64, ptr, i8 } undef, i64 %multmp124, 0
  %result.err = insertvalue { i64, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { i64, ptr, i8 } %result.err, i8 0, 2
  ret { i64, ptr, i8 } %result.is_error
}

define i32 @main(i32 %0, ptr %1) {
entry:
  call void @npk_gc_init(i64 0, i64 0)
  call void @npk_args_init(i32 %0, ptr %1)
  call void @npk_streams_init()
  %args = alloca ptr, align 8
  %calltmp = call { ptr, ptr, i8 } @args_load()
  %raw.value = extractvalue { ptr, ptr, i8 } %calltmp, 0
  store ptr %raw.value, ptr %args, align 8
  %arg_count = alloca i32, align 4
  %args1 = load ptr, ptr %args, align 8
  %calltmp2 = call { i32, ptr, i8 } @nitpick_args.args_count(ptr %args1)
  %raw.value3 = extractvalue { i32, ptr, i8 } %calltmp2, 0
  store i32 %raw.value3, ptr %arg_count, align 4
  %fd_in = alloca i64, align 8
  store i64 0, ptr %fd_in, align 4
  %fd_out = alloca i64, align 8
  store i64 1, ptr %fd_out, align 4
  %bs = alloca i64, align 8
  store i64 512, ptr %bs, align 4
  %count = alloca i64, align 8
  store i64 -1, ptr %count, align 4
  %ifile = alloca ptr, align 8
  store ptr @.str.133, ptr %ifile, align 8
  %ofile = alloca ptr, align 8
  store ptr @.str.135, ptr %ofile, align 8
  %i = alloca i32, align 4
  store i32 1, ptr %i, align 4
  br label %whilecond

whilecond:                                        ; preds = %ifcont51, %entry
  %i4 = load i32, ptr %i, align 4
  %arg_count5 = load i32, ptr %arg_count, align 4
  %letmp = icmp sle i32 %i4, %arg_count5
  %whilecond6 = icmp ne i1 %letmp, false
  br i1 %whilecond6, label %whilebody, label %afterwhile

whilebody:                                        ; preds = %whilecond
  %arg = alloca ptr, align 8
  %args7 = load ptr, ptr %args, align 8
  %i8 = load i32, ptr %i, align 4
  %calltmp9 = call { ptr, ptr, i8 } @nitpick_args.args_at(ptr %args7, i32 %i8)
  %raw.value10 = extractvalue { ptr, ptr, i8 } %calltmp9, 0
  store ptr %raw.value10, ptr %arg, align 8
  %arg_len = alloca i64, align 8
  %arg11 = load ptr, ptr %arg, align 8
  %str = load %struct.NpkString, ptr %arg11, align 8
  %length = extractvalue %struct.NpkString %str, 1
  store i64 %length, ptr %arg_len, align 4
  %arg12 = load ptr, ptr %arg, align 8
  %str13 = load %struct.NpkString, ptr %arg12, align 8
  %prefix = load %struct.NpkString, ptr @.str.137, align 8
  %starts_with = call i1 @npk_string_starts_with(%struct.NpkString %str13, %struct.NpkString %prefix)
  %ifcond = icmp ne i1 %starts_with, false
  br i1 %ifcond, label %then, label %else

then:                                             ; preds = %whilebody
  %arg14 = load ptr, ptr %arg, align 8
  %arg_len15 = load i64, ptr %arg_len, align 4
  %substr_result = call ptr @npk_string_substring_simple(ptr %arg14, i64 3, i64 %arg_len15)
  store ptr %substr_result, ptr %ifile, align 8
  br label %ifcont51

else:                                             ; preds = %whilebody
  %arg16 = load ptr, ptr %arg, align 8
  %str17 = load %struct.NpkString, ptr %arg16, align 8
  %prefix18 = load %struct.NpkString, ptr @.str.139, align 8
  %starts_with19 = call i1 @npk_string_starts_with(%struct.NpkString %str17, %struct.NpkString %prefix18)
  %ifcond20 = icmp ne i1 %starts_with19, false
  br i1 %ifcond20, label %then21, label %else25

then21:                                           ; preds = %else
  %arg22 = load ptr, ptr %arg, align 8
  %arg_len23 = load i64, ptr %arg_len, align 4
  %substr_result24 = call ptr @npk_string_substring_simple(ptr %arg22, i64 3, i64 %arg_len23)
  store ptr %substr_result24, ptr %ofile, align 8
  br label %ifcont50

else25:                                           ; preds = %else
  %arg26 = load ptr, ptr %arg, align 8
  %str27 = load %struct.NpkString, ptr %arg26, align 8
  %prefix28 = load %struct.NpkString, ptr @.str.141, align 8
  %starts_with29 = call i1 @npk_string_starts_with(%struct.NpkString %str27, %struct.NpkString %prefix28)
  %ifcond30 = icmp ne i1 %starts_with29, false
  br i1 %ifcond30, label %then31, label %else37

then31:                                           ; preds = %else25
  %arg32 = load ptr, ptr %arg, align 8
  %arg_len33 = load i64, ptr %arg_len, align 4
  %substr_result34 = call ptr @npk_string_substring_simple(ptr %arg32, i64 3, i64 %arg_len33)
  %calltmp35 = call { i64, ptr, i8 } @parse_int(ptr %substr_result34)
  %raw.value36 = extractvalue { i64, ptr, i8 } %calltmp35, 0
  store i64 %raw.value36, ptr %bs, align 4
  br label %ifcont49

else37:                                           ; preds = %else25
  %arg38 = load ptr, ptr %arg, align 8
  %str39 = load %struct.NpkString, ptr %arg38, align 8
  %prefix40 = load %struct.NpkString, ptr @.str.143, align 8
  %starts_with41 = call i1 @npk_string_starts_with(%struct.NpkString %str39, %struct.NpkString %prefix40)
  %ifcond42 = icmp ne i1 %starts_with41, false
  br i1 %ifcond42, label %then43, label %ifcont

then43:                                           ; preds = %else37
  %arg44 = load ptr, ptr %arg, align 8
  %arg_len45 = load i64, ptr %arg_len, align 4
  %substr_result46 = call ptr @npk_string_substring_simple(ptr %arg44, i64 6, i64 %arg_len45)
  %calltmp47 = call { i64, ptr, i8 } @parse_int(ptr %substr_result46)
  %raw.value48 = extractvalue { i64, ptr, i8 } %calltmp47, 0
  store i64 %raw.value48, ptr %count, align 4
  br label %ifcont

ifcont:                                           ; preds = %then43, %else37
  br label %ifcont49

ifcont49:                                         ; preds = %ifcont, %then31
  br label %ifcont50

ifcont50:                                         ; preds = %ifcont49, %then21
  br label %ifcont51

ifcont51:                                         ; preds = %ifcont50, %then
  %i52 = load i32, ptr %i, align 4
  %addtmp = add i32 %i52, 1
  store i32 %addtmp, ptr %i, align 4
  call void @npk_gc_safepoint()
  br label %whilecond

afterwhile:                                       ; preds = %whilecond
  %ifile53 = load ptr, ptr %ifile, align 8
  %str54 = load %struct.NpkString, ptr %ifile53, align 8
  %length55 = extractvalue %struct.NpkString %str54, 1
  %gttmp = icmp sgt i64 %length55, 0
  %ifcond56 = icmp ne i1 %gttmp, false
  br i1 %ifcond56, label %then57, label %ifcont64

then57:                                           ; preds = %afterwhile
  %ifile58 = load ptr, ptr %ifile, align 8
  %sys_str_struct = load %struct.NpkString, ptr %ifile58, align 8
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

error_block:                                      ; preds = %then57
  br label %merge_block

success_block:                                    ; preds = %then57
  %value = extractvalue %struct.NpkResult_int64 %sys_result.is_error, 0
  br label %merge_block

merge_block:                                      ; preds = %success_block, %error_block
  %unwrap_result = phi i64 [ -1, %error_block ], [ %value, %success_block ]
  store i64 %unwrap_result, ptr %fd_in, align 4
  %fd_in59 = load i64, ptr %fd_in, align 4
  %lttmp = icmp slt i64 %fd_in59, 0
  %ifcond60 = icmp ne i1 %lttmp, false
  br i1 %ifcond60, label %then61, label %ifcont63

then61:                                           ; preds = %merge_block
  %calltmp62 = call { i32, ptr, i8 } @print_err(ptr @.str.145)
  call void @proc_exit(i32 1)
  br label %ifcont63

ifcont63:                                         ; preds = %then61, %merge_block
  br label %ifcont64

ifcont64:                                         ; preds = %ifcont63, %afterwhile
  %ofile65 = load ptr, ptr %ofile, align 8
  %str66 = load %struct.NpkString, ptr %ofile65, align 8
  %length67 = extractvalue %struct.NpkString %str66, 1
  %gttmp68 = icmp sgt i64 %length67, 0
  %ifcond69 = icmp ne i1 %gttmp68, false
  br i1 %ifcond69, label %then70, label %ifcont98

then70:                                           ; preds = %ifcont64
  %ofile71 = load ptr, ptr %ofile, align 8
  %sys_str_struct72 = load %struct.NpkString, ptr %ofile71, align 8
  %sys_str_data73 = extractvalue %struct.NpkString %sys_str_struct72, 0
  %sys_strvar_int74 = ptrtoint ptr %sys_str_data73 to i64
  %syscall_ret75 = call i64 asm sideeffect "syscall", "={rax},{rax},{rdi},{rsi},{rdx},~{rcx},~{r11},~{memory}"(i64 2, i64 %sys_strvar_int74, i64 577, i64 438)
  %sys_is_err76 = icmp slt i64 %syscall_ret75, 0
  %sys_neg_errno77 = sub i64 0, %syscall_ret75
  %sys_err_ptr78 = inttoptr i64 %sys_neg_errno77 to ptr
  %sys_val79 = select i1 %sys_is_err76, i64 0, i64 %syscall_ret75
  %sys_err80 = select i1 %sys_is_err76, ptr %sys_err_ptr78, ptr null
  %sys_flag81 = select i1 %sys_is_err76, i8 1, i8 0
  %sys_result.val82 = insertvalue %struct.NpkResult_int64 undef, i64 %sys_val79, 0
  %sys_result.err83 = insertvalue %struct.NpkResult_int64 %sys_result.val82, ptr %sys_err80, 1
  %sys_result.is_error84 = insertvalue %struct.NpkResult_int64 %sys_result.err83, i8 %sys_flag81, 2
  %is_error85 = extractvalue %struct.NpkResult_int64 %sys_result.is_error84, 2
  %is_error_bool86 = icmp ne i8 %is_error85, 0
  br i1 %is_error_bool86, label %error_block87, label %success_block88

error_block87:                                    ; preds = %then70
  br label %merge_block89

success_block88:                                  ; preds = %then70
  %value90 = extractvalue %struct.NpkResult_int64 %sys_result.is_error84, 0
  br label %merge_block89

merge_block89:                                    ; preds = %success_block88, %error_block87
  %unwrap_result91 = phi i64 [ -1, %error_block87 ], [ %value90, %success_block88 ]
  store i64 %unwrap_result91, ptr %fd_out, align 4
  %fd_out92 = load i64, ptr %fd_out, align 4
  %lttmp93 = icmp slt i64 %fd_out92, 0
  %ifcond94 = icmp ne i1 %lttmp93, false
  br i1 %ifcond94, label %then95, label %ifcont97

then95:                                           ; preds = %merge_block89
  %calltmp96 = call { i32, ptr, i8 } @print_err(ptr @.str.147)
  call void @proc_exit(i32 1)
  br label %ifcont97

ifcont97:                                         ; preds = %then95, %merge_block89
  br label %ifcont98

ifcont98:                                         ; preds = %ifcont97, %ifcont64
  %buf = alloca i64, align 8
  %bs99 = load i64, ptr %bs, align 4
  %syscall_ret100 = call i64 asm sideeffect "syscall", "={rax},{rax},{rdi},{rsi},{rdx},{r10},{r8},{r9},~{rcx},~{r11},~{memory}"(i64 9, i64 0, i64 %bs99, i64 3, i64 34, i64 -1, i64 0)
  %sys_is_err101 = icmp slt i64 %syscall_ret100, 0
  %sys_neg_errno102 = sub i64 0, %syscall_ret100
  %sys_err_ptr103 = inttoptr i64 %sys_neg_errno102 to ptr
  %sys_val104 = select i1 %sys_is_err101, i64 0, i64 %syscall_ret100
  %sys_err105 = select i1 %sys_is_err101, ptr %sys_err_ptr103, ptr null
  %sys_flag106 = select i1 %sys_is_err101, i8 1, i8 0
  %sys_result.val107 = insertvalue %struct.NpkResult_int64 undef, i64 %sys_val104, 0
  %sys_result.err108 = insertvalue %struct.NpkResult_int64 %sys_result.val107, ptr %sys_err105, 1
  %sys_result.is_error109 = insertvalue %struct.NpkResult_int64 %sys_result.err108, i8 %sys_flag106, 2
  %is_error110 = extractvalue %struct.NpkResult_int64 %sys_result.is_error109, 2
  %is_error_bool111 = icmp ne i8 %is_error110, 0
  br i1 %is_error_bool111, label %error_block112, label %success_block113

error_block112:                                   ; preds = %ifcont98
  br label %merge_block114

success_block113:                                 ; preds = %ifcont98
  %value115 = extractvalue %struct.NpkResult_int64 %sys_result.is_error109, 0
  br label %merge_block114

merge_block114:                                   ; preds = %success_block113, %error_block112
  %unwrap_result116 = phi i64 [ 0, %error_block112 ], [ %value115, %success_block113 ]
  store i64 %unwrap_result116, ptr %buf, align 4
  %buf117 = load i64, ptr %buf, align 4
  %letmp118 = icmp sle i64 %buf117, 0
  %ifcond119 = icmp ne i1 %letmp118, false
  br i1 %ifcond119, label %then120, label %ifcont122

then120:                                          ; preds = %merge_block114
  %calltmp121 = call { i32, ptr, i8 } @print_err(ptr @.str.149)
  call void @proc_exit(i32 1)
  br label %ifcont122

ifcont122:                                        ; preds = %then120, %merge_block114
  %running = alloca i32, align 4
  store i32 1, ptr %running, align 4
  %blocks_in = alloca i64, align 8
  store i64 0, ptr %blocks_in, align 4
  %blocks_out = alloca i64, align 8
  store i64 0, ptr %blocks_out, align 4
  br label %whilecond123

whilecond123:                                     ; preds = %ifcont196, %ifcont122
  %running124 = load i32, ptr %running, align 4
  %eqtmp = icmp eq i32 %running124, 1
  %whilecond125 = icmp ne i1 %eqtmp, false
  br i1 %whilecond125, label %whilebody126, label %afterwhile197

whilebody126:                                     ; preds = %whilecond123
  %count127 = load i64, ptr %count, align 4
  %netmp = icmp ne i64 %count127, -1
  %ifcond128 = icmp ne i1 %netmp, false
  br i1 %ifcond128, label %then129, label %ifcont135

then129:                                          ; preds = %whilebody126
  %blocks_in130 = load i64, ptr %blocks_in, align 4
  %count131 = load i64, ptr %count, align 4
  %getmp = icmp sge i64 %blocks_in130, %count131
  %ifcond132 = icmp ne i1 %getmp, false
  br i1 %ifcond132, label %then133, label %ifcont134

then133:                                          ; preds = %then129
  store i32 0, ptr %running, align 4
  br label %ifcont134

ifcont134:                                        ; preds = %then133, %then129
  br label %ifcont135

ifcont135:                                        ; preds = %ifcont134, %whilebody126
  %running136 = load i32, ptr %running, align 4
  %eqtmp137 = icmp eq i32 %running136, 1
  %ifcond138 = icmp ne i1 %eqtmp137, false
  br i1 %ifcond138, label %then139, label %ifcont196

then139:                                          ; preds = %ifcont135
  %nread = alloca i64, align 8
  %fd_in140 = load i64, ptr %fd_in, align 4
  %buf141 = load i64, ptr %buf, align 4
  %bs142 = load i64, ptr %bs, align 4
  %syscall_ret143 = call i64 asm sideeffect "syscall", "={rax},{rax},{rdi},{rsi},{rdx},~{rcx},~{r11},~{memory}"(i64 0, i64 %fd_in140, i64 %buf141, i64 %bs142)
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

error_block155:                                   ; preds = %then139
  br label %merge_block157

success_block156:                                 ; preds = %then139
  %value158 = extractvalue %struct.NpkResult_int64 %sys_result.is_error152, 0
  br label %merge_block157

merge_block157:                                   ; preds = %success_block156, %error_block155
  %unwrap_result159 = phi i64 [ -1, %error_block155 ], [ %value158, %success_block156 ]
  store i64 %unwrap_result159, ptr %nread, align 4
  %nread160 = load i64, ptr %nread, align 4
  %letmp161 = icmp sle i64 %nread160, 0
  %ifcond162 = icmp ne i1 %letmp161, false
  br i1 %ifcond162, label %then163, label %else164

then163:                                          ; preds = %merge_block157
  store i32 0, ptr %running, align 4
  br label %ifcont195

else164:                                          ; preds = %merge_block157
  %blocks_in165 = load i64, ptr %blocks_in, align 4
  %addtmp166 = add i64 %blocks_in165, 1
  store i64 %addtmp166, ptr %blocks_in, align 4
  %nwritten = alloca i64, align 8
  %fd_out167 = load i64, ptr %fd_out, align 4
  %buf168 = load i64, ptr %buf, align 4
  %nread169 = load i64, ptr %nread, align 4
  %syscall_ret170 = call i64 asm sideeffect "syscall", "={rax},{rax},{rdi},{rsi},{rdx},~{rcx},~{r11},~{memory}"(i64 1, i64 %fd_out167, i64 %buf168, i64 %nread169)
  %sys_is_err171 = icmp slt i64 %syscall_ret170, 0
  %sys_neg_errno172 = sub i64 0, %syscall_ret170
  %sys_err_ptr173 = inttoptr i64 %sys_neg_errno172 to ptr
  %sys_val174 = select i1 %sys_is_err171, i64 0, i64 %syscall_ret170
  %sys_err175 = select i1 %sys_is_err171, ptr %sys_err_ptr173, ptr null
  %sys_flag176 = select i1 %sys_is_err171, i8 1, i8 0
  %sys_result.val177 = insertvalue %struct.NpkResult_int64 undef, i64 %sys_val174, 0
  %sys_result.err178 = insertvalue %struct.NpkResult_int64 %sys_result.val177, ptr %sys_err175, 1
  %sys_result.is_error179 = insertvalue %struct.NpkResult_int64 %sys_result.err178, i8 %sys_flag176, 2
  %is_error180 = extractvalue %struct.NpkResult_int64 %sys_result.is_error179, 2
  %is_error_bool181 = icmp ne i8 %is_error180, 0
  br i1 %is_error_bool181, label %error_block182, label %success_block183

error_block182:                                   ; preds = %else164
  br label %merge_block184

success_block183:                                 ; preds = %else164
  %value185 = extractvalue %struct.NpkResult_int64 %sys_result.is_error179, 0
  br label %merge_block184

merge_block184:                                   ; preds = %success_block183, %error_block182
  %unwrap_result186 = phi i64 [ -1, %error_block182 ], [ %value185, %success_block183 ]
  store i64 %unwrap_result186, ptr %nwritten, align 4
  %nwritten187 = load i64, ptr %nwritten, align 4
  %nread188 = load i64, ptr %nread, align 4
  %eqtmp189 = icmp eq i64 %nwritten187, %nread188
  %ifcond190 = icmp ne i1 %eqtmp189, false
  br i1 %ifcond190, label %then191, label %ifcont194

then191:                                          ; preds = %merge_block184
  %blocks_out192 = load i64, ptr %blocks_out, align 4
  %addtmp193 = add i64 %blocks_out192, 1
  store i64 %addtmp193, ptr %blocks_out, align 4
  br label %ifcont194

ifcont194:                                        ; preds = %then191, %merge_block184
  br label %ifcont195

ifcont195:                                        ; preds = %ifcont194, %then163
  br label %ifcont196

ifcont196:                                        ; preds = %ifcont195, %ifcont135
  call void @npk_gc_safepoint()
  br label %whilecond123

afterwhile197:                                    ; preds = %whilecond123
  %buf198 = load i64, ptr %buf, align 4
  %bs199 = load i64, ptr %bs, align 4
  %syscall_ret200 = call i64 asm sideeffect "syscall", "={rax},{rax},{rdi},{rsi},~{rcx},~{r11},~{memory}"(i64 11, i64 %buf198, i64 %bs199)
  %sys_is_err201 = icmp slt i64 %syscall_ret200, 0
  %sys_neg_errno202 = sub i64 0, %syscall_ret200
  %sys_err_ptr203 = inttoptr i64 %sys_neg_errno202 to ptr
  %sys_val204 = select i1 %sys_is_err201, i64 0, i64 %syscall_ret200
  %sys_err205 = select i1 %sys_is_err201, ptr %sys_err_ptr203, ptr null
  %sys_flag206 = select i1 %sys_is_err201, i8 1, i8 0
  %sys_result.val207 = insertvalue %struct.NpkResult_int64 undef, i64 %sys_val204, 0
  %sys_result.err208 = insertvalue %struct.NpkResult_int64 %sys_result.val207, ptr %sys_err205, 1
  %sys_result.is_error209 = insertvalue %struct.NpkResult_int64 %sys_result.err208, i8 %sys_flag206, 2
  %fd_in210 = load i64, ptr %fd_in, align 4
  %netmp211 = icmp ne i64 %fd_in210, 0
  %ifcond212 = icmp ne i1 %netmp211, false
  br i1 %ifcond212, label %then213, label %ifcont225

then213:                                          ; preds = %afterwhile197
  %fd_in214 = load i64, ptr %fd_in, align 4
  %syscall_ret215 = call i64 asm sideeffect "syscall", "={rax},{rax},{rdi},~{rcx},~{r11},~{memory}"(i64 3, i64 %fd_in214)
  %sys_is_err216 = icmp slt i64 %syscall_ret215, 0
  %sys_neg_errno217 = sub i64 0, %syscall_ret215
  %sys_err_ptr218 = inttoptr i64 %sys_neg_errno217 to ptr
  %sys_val219 = select i1 %sys_is_err216, i64 0, i64 %syscall_ret215
  %sys_err220 = select i1 %sys_is_err216, ptr %sys_err_ptr218, ptr null
  %sys_flag221 = select i1 %sys_is_err216, i8 1, i8 0
  %sys_result.val222 = insertvalue %struct.NpkResult_int64 undef, i64 %sys_val219, 0
  %sys_result.err223 = insertvalue %struct.NpkResult_int64 %sys_result.val222, ptr %sys_err220, 1
  %sys_result.is_error224 = insertvalue %struct.NpkResult_int64 %sys_result.err223, i8 %sys_flag221, 2
  br label %ifcont225

ifcont225:                                        ; preds = %then213, %afterwhile197
  %fd_out226 = load i64, ptr %fd_out, align 4
  %netmp227 = icmp ne i64 %fd_out226, 1
  %ifcond228 = icmp ne i1 %netmp227, false
  br i1 %ifcond228, label %then229, label %ifcont241

then229:                                          ; preds = %ifcont225
  %fd_out230 = load i64, ptr %fd_out, align 4
  %syscall_ret231 = call i64 asm sideeffect "syscall", "={rax},{rax},{rdi},~{rcx},~{r11},~{memory}"(i64 3, i64 %fd_out230)
  %sys_is_err232 = icmp slt i64 %syscall_ret231, 0
  %sys_neg_errno233 = sub i64 0, %syscall_ret231
  %sys_err_ptr234 = inttoptr i64 %sys_neg_errno233 to ptr
  %sys_val235 = select i1 %sys_is_err232, i64 0, i64 %syscall_ret231
  %sys_err236 = select i1 %sys_is_err232, ptr %sys_err_ptr234, ptr null
  %sys_flag237 = select i1 %sys_is_err232, i8 1, i8 0
  %sys_result.val238 = insertvalue %struct.NpkResult_int64 undef, i64 %sys_val235, 0
  %sys_result.err239 = insertvalue %struct.NpkResult_int64 %sys_result.val238, ptr %sys_err236, 1
  %sys_result.is_error240 = insertvalue %struct.NpkResult_int64 %sys_result.err239, i8 %sys_flag237, 2
  br label %ifcont241

ifcont241:                                        ; preds = %then229, %ifcont225
  call void @proc_exit(i32 0)
  ret i32 0
}

declare i64 @fopen(ptr, ptr)

declare i32 @fgetc(i64)

declare i32 @fclose(i64)

declare i64 @malloc(i64)

declare i32 @nitpick_libc_mem_free(i64)

declare ptr @npk_string_from_char_simple(i8)

declare void @proc_exit(i32)

declare void @npk_gc_init(i64, i64)

declare void @npk_args_init(i32, ptr)

declare void @npk_streams_init()

declare i1 @npk_string_starts_with(%struct.NpkString, %struct.NpkString)

define linkonce_odr i32 @__dd_init() {
entry:
  ret i32 0
}
