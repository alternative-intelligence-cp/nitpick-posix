; ModuleID = 'src/dd/dd.npk'
source_filename = "src/dd/dd.npk"

%struct.NpkString = type { ptr, i64 }
%Numeric_vtable_t = type {}
%Display_vtable_t = type {}
%ArgParser = type { ptr, ptr, ptr }
%struct.NpkResult_int64 = type { i64, ptr, i8 }

@.str.data = private constant [2 x i8] c"|\00"
@.str = private constant %struct.NpkString { ptr @.str.data, i64 1 }
@.str.data.1 = private constant [2 x i8] c"|\00"
@.str.2 = private constant %struct.NpkString { ptr @.str.data.1, i64 1 }
@.str.data.3 = private constant [1 x i8] zeroinitializer
@.str.4 = private constant %struct.NpkString { ptr @.str.data.3, i64 0 }
@.str.data.5 = private constant [1 x i8] zeroinitializer
@.str.6 = private constant %struct.NpkString { ptr @.str.data.5, i64 0 }
@.str.data.7 = private constant [2 x i8] c"|\00"
@.str.8 = private constant %struct.NpkString { ptr @.str.data.7, i64 1 }
@.str.data.9 = private constant [1 x i8] zeroinitializer
@.str.10 = private constant %struct.NpkString { ptr @.str.data.9, i64 0 }
@.str.data.11 = private constant [1 x i8] zeroinitializer
@.str.12 = private constant %struct.NpkString { ptr @.str.data.11, i64 0 }
@.str.data.13 = private constant [2 x i8] c"|\00"
@.str.14 = private constant %struct.NpkString { ptr @.str.data.13, i64 1 }
@.str.15 = private constant %struct.NpkString { ptr @.str.data.13, i64 1 }
@.str.data.16 = private constant [2 x i8] c"|\00"
@.str.17 = private constant %struct.NpkString { ptr @.str.data.16, i64 1 }
@.str.18 = private constant %struct.NpkString { ptr @.str.data.16, i64 1 }
@.str.data.19 = private constant [1 x i8] zeroinitializer
@.str.20 = private constant %struct.NpkString { ptr @.str.data.19, i64 0 }
@.str.data.21 = private constant [1 x i8] zeroinitializer
@.str.22 = private constant %struct.NpkString { ptr @.str.data.21, i64 0 }
@.str.data.23 = private constant [1 x i8] zeroinitializer
@.str.24 = private constant %struct.NpkString { ptr @.str.data.23, i64 0 }
@.str.data.25 = private constant [2 x i8] c"|\00"
@.str.26 = private constant %struct.NpkString { ptr @.str.data.25, i64 1 }
@.str.data.27 = private constant [1 x i8] zeroinitializer
@.str.28 = private constant %struct.NpkString { ptr @.str.data.27, i64 0 }
@.str.data.29 = private constant [1 x i8] zeroinitializer
@.str.30 = private constant %struct.NpkString { ptr @.str.data.29, i64 0 }
@.str.data.31 = private constant [1 x i8] zeroinitializer
@.str.32 = private constant %struct.NpkString { ptr @.str.data.31, i64 0 }
@.str.data.33 = private constant [1 x i8] zeroinitializer
@.str.34 = private constant %struct.NpkString { ptr @.str.data.33, i64 0 }
@.str.data.35 = private constant [2 x i8] c"-\00"
@.str.36 = private constant %struct.NpkString { ptr @.str.data.35, i64 1 }
@.str.data.37 = private constant [2 x i8] c"1\00"
@.str.38 = private constant %struct.NpkString { ptr @.str.data.37, i64 1 }
@.str.data.39 = private constant [2 x i8] c"2\00"
@.str.40 = private constant %struct.NpkString { ptr @.str.data.39, i64 1 }
@.str.data.41 = private constant [2 x i8] c"3\00"
@.str.42 = private constant %struct.NpkString { ptr @.str.data.41, i64 1 }
@.str.data.43 = private constant [2 x i8] c"4\00"
@.str.44 = private constant %struct.NpkString { ptr @.str.data.43, i64 1 }
@.str.data.45 = private constant [2 x i8] c"5\00"
@.str.46 = private constant %struct.NpkString { ptr @.str.data.45, i64 1 }
@.str.data.47 = private constant [2 x i8] c"6\00"
@.str.48 = private constant %struct.NpkString { ptr @.str.data.47, i64 1 }
@.str.data.49 = private constant [2 x i8] c"7\00"
@.str.50 = private constant %struct.NpkString { ptr @.str.data.49, i64 1 }
@.str.data.51 = private constant [2 x i8] c"8\00"
@.str.52 = private constant %struct.NpkString { ptr @.str.data.51, i64 1 }
@.str.data.53 = private constant [2 x i8] c"9\00"
@.str.54 = private constant %struct.NpkString { ptr @.str.data.53, i64 1 }
@.str.data.55 = private constant [1 x i8] zeroinitializer
@.str.56 = private constant %struct.NpkString { ptr @.str.data.55, i64 0 }
@.str.data.57 = private constant [2 x i8] c"|\00"
@.str.58 = private constant %struct.NpkString { ptr @.str.data.57, i64 1 }
@.str.data.59 = private constant [2 x i8] c"|\00"
@.str.60 = private constant %struct.NpkString { ptr @.str.data.59, i64 1 }
@.str.data.61 = private constant [2 x i8] c"|\00"
@.str.62 = private constant %struct.NpkString { ptr @.str.data.61, i64 1 }
@.str.data.63 = private constant [2 x i8] c"|\00"
@.str.64 = private constant %struct.NpkString { ptr @.str.data.63, i64 1 }
@.str.data.65 = private constant [2 x i8] c"|\00"
@.str.66 = private constant %struct.NpkString { ptr @.str.data.65, i64 1 }
@.str.data.67 = private constant [2 x i8] c"|\00"
@.str.68 = private constant %struct.NpkString { ptr @.str.data.67, i64 1 }
@.str.data.69 = private constant [6 x i8] c"flag|\00"
@.str.70 = private constant %struct.NpkString { ptr @.str.data.69, i64 5 }
@.str.data.71 = private constant [2 x i8] c"|\00"
@.str.72 = private constant %struct.NpkString { ptr @.str.data.71, i64 1 }
@.str.data.73 = private constant [2 x i8] c"|\00"
@.str.74 = private constant %struct.NpkString { ptr @.str.data.73, i64 1 }
@.str.data.75 = private constant [5 x i8] c"opt|\00"
@.str.76 = private constant %struct.NpkString { ptr @.str.data.75, i64 4 }
@.str.data.77 = private constant [2 x i8] c"|\00"
@.str.78 = private constant %struct.NpkString { ptr @.str.data.77, i64 1 }
@.str.79 = private constant %struct.NpkString { ptr @.str.data.77, i64 1 }
@.str.data.80 = private constant [2 x i8] c"|\00"
@.str.81 = private constant %struct.NpkString { ptr @.str.data.80, i64 1 }
@.str.data.82 = private constant [2 x i8] c"|\00"
@.str.83 = private constant %struct.NpkString { ptr @.str.data.82, i64 1 }
@.str.data.84 = private constant [2 x i8] c"|\00"
@.str.85 = private constant %struct.NpkString { ptr @.str.data.84, i64 1 }
@.str.data.86 = private constant [2 x i8] c"|\00"
@.str.87 = private constant %struct.NpkString { ptr @.str.data.86, i64 1 }
@.str.data.88 = private constant [2 x i8] c"|\00"
@.str.89 = private constant %struct.NpkString { ptr @.str.data.88, i64 1 }
@.str.data.90 = private constant [19 x i8] c"Fatal Error: code \00"
@.str.91 = private constant %struct.NpkString { ptr @.str.data.90, i64 18 }
@.str.data.92 = private constant [2 x i8] c"-\00"
@.str.93 = private constant %struct.NpkString { ptr @.str.data.92, i64 1 }
@.str.data.94 = private constant [2 x i8] c"\0A\00"
@.str.95 = private constant %struct.NpkString { ptr @.str.data.94, i64 1 }
@.str.data.96 = private constant [19 x i8] c"Fatal Error: code \00"
@.str.97 = private constant %struct.NpkString { ptr @.str.data.96, i64 18 }
@.str.data.98 = private constant [2 x i8] c"-\00"
@.str.99 = private constant %struct.NpkString { ptr @.str.data.98, i64 1 }
@.str.data.100 = private constant [2 x i8] c"\0A\00"
@.str.101 = private constant %struct.NpkString { ptr @.str.data.100, i64 1 }
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
@.str.data.102 = private constant [2 x i8] c"0\00"
@.str.103 = private constant %struct.NpkString { ptr @.str.data.102, i64 1 }
@.str.data.104 = private constant [2 x i8] c"1\00"
@.str.105 = private constant %struct.NpkString { ptr @.str.data.104, i64 1 }
@.str.data.106 = private constant [2 x i8] c"2\00"
@.str.107 = private constant %struct.NpkString { ptr @.str.data.106, i64 1 }
@.str.data.108 = private constant [2 x i8] c"3\00"
@.str.109 = private constant %struct.NpkString { ptr @.str.data.108, i64 1 }
@.str.data.110 = private constant [2 x i8] c"4\00"
@.str.111 = private constant %struct.NpkString { ptr @.str.data.110, i64 1 }
@.str.data.112 = private constant [2 x i8] c"5\00"
@.str.113 = private constant %struct.NpkString { ptr @.str.data.112, i64 1 }
@.str.data.114 = private constant [2 x i8] c"6\00"
@.str.115 = private constant %struct.NpkString { ptr @.str.data.114, i64 1 }
@.str.data.116 = private constant [2 x i8] c"7\00"
@.str.117 = private constant %struct.NpkString { ptr @.str.data.116, i64 1 }
@.str.data.118 = private constant [2 x i8] c"8\00"
@.str.119 = private constant %struct.NpkString { ptr @.str.data.118, i64 1 }
@.str.data.120 = private constant [2 x i8] c"9\00"
@.str.121 = private constant %struct.NpkString { ptr @.str.data.120, i64 1 }
@.str.data.122 = private constant [2 x i8] c"K\00"
@.str.123 = private constant %struct.NpkString { ptr @.str.data.122, i64 1 }
@.str.data.124 = private constant [2 x i8] c"k\00"
@.str.125 = private constant %struct.NpkString { ptr @.str.data.124, i64 1 }
@.str.data.126 = private constant [2 x i8] c"M\00"
@.str.127 = private constant %struct.NpkString { ptr @.str.data.126, i64 1 }
@.str.data.128 = private constant [2 x i8] c"m\00"
@.str.129 = private constant %struct.NpkString { ptr @.str.data.128, i64 1 }
@.str.data.130 = private constant [2 x i8] c"G\00"
@.str.131 = private constant %struct.NpkString { ptr @.str.data.130, i64 1 }
@.str.data.132 = private constant [2 x i8] c"g\00"
@.str.133 = private constant %struct.NpkString { ptr @.str.data.132, i64 1 }
@.str.data.134 = private constant [1 x i8] zeroinitializer
@.str.135 = private constant %struct.NpkString { ptr @.str.data.134, i64 0 }
@.str.data.136 = private constant [1 x i8] zeroinitializer
@.str.137 = private constant %struct.NpkString { ptr @.str.data.136, i64 0 }
@.str.data.138 = private constant [4 x i8] c"if=\00"
@.str.139 = private constant %struct.NpkString { ptr @.str.data.138, i64 3 }
@.str.data.140 = private constant [4 x i8] c"of=\00"
@.str.141 = private constant %struct.NpkString { ptr @.str.data.140, i64 3 }
@.str.data.142 = private constant [4 x i8] c"bs=\00"
@.str.143 = private constant %struct.NpkString { ptr @.str.data.142, i64 3 }
@.str.data.144 = private constant [7 x i8] c"count=\00"
@.str.145 = private constant %struct.NpkString { ptr @.str.data.144, i64 6 }
@.str.data.146 = private constant [31 x i8] c"dd: failed to open input file\0A\00"
@.str.147 = private constant %struct.NpkString { ptr @.str.data.146, i64 30 }
@.str.data.148 = private constant [32 x i8] c"dd: failed to open output file\0A\00"
@.str.149 = private constant %struct.NpkString { ptr @.str.data.148, i64 31 }
@.str.data.150 = private constant [18 x i8] c"dd: memory error\0A\00"
@.str.151 = private constant %struct.NpkString { ptr @.str.data.150, i64 17 }

declare ptr @npk_mem_read_string(i64, i64)

define linkonce_odr { ptr, ptr, i8 } @nitpick_args.args_load_native(i32 %argc, ptr %argv) {
entry:
  %argc.addr = alloca i32, align 4
  store i32 %argc, ptr %argc.addr, align 4
  %res = alloca ptr, align 8
  store ptr @.str, ptr %res, align 8
  %i = alloca i32, align 4
  store i32 0, ptr %i, align 4
  %argv_ptr = alloca i64, align 8
  %cast.ptrtoint = ptrtoint ptr %argv to i64
  store i64 %cast.ptrtoint, ptr %argv_ptr, align 4
  br label %whilecond

whilecond:                                        ; preds = %afterwhile, %entry
  %i1 = load i32, ptr %i, align 4
  %argc2 = load i32, ptr %argc.addr, align 4
  %lttmp = icmp slt i32 %i1, %argc2
  %whilecond3 = icmp ne i1 %lttmp, false
  br i1 %whilecond3, label %whilebody, label %afterwhile32

whilebody:                                        ; preds = %whilecond
  %ptr_to_str = alloca i64, align 8
  %argv_ptr4 = load i64, ptr %argv_ptr, align 4
  %i5 = load i32, ptr %i, align 4
  %cast.sext = sext i32 %i5 to i64
  %multmp = mul i64 %cast.sext, 8
  %addtmp = add i64 %argv_ptr4, %multmp
  %argv_ptr6 = load i64, ptr %argv_ptr, align 4
  %i7 = load i32, ptr %i, align 4
  %cast.sext8 = sext i32 %i7 to i64
  %multmp9 = mul i64 %cast.sext8, 8
  %addtmp10 = add i64 %argv_ptr6, %multmp9
  %cast.inttoptr = inttoptr i64 %addtmp10 to ptr
  %arrayidx = getelementptr i64, ptr %cast.inttoptr, i64 0
  %elem = load i64, ptr %arrayidx, align 4
  store i64 %elem, ptr %ptr_to_str, align 4
  %ptr = alloca i64, align 8
  %ptr_to_str11 = load i64, ptr %ptr_to_str, align 4
  store i64 %ptr_to_str11, ptr %ptr, align 4
  %len = alloca i64, align 8
  store i64 0, ptr %len, align 4
  br label %whilecond12

whilecond12:                                      ; preds = %whilebody22, %whilebody
  %ptr13 = load i64, ptr %ptr, align 4
  %len14 = load i64, ptr %len, align 4
  %addtmp15 = add i64 %ptr13, %len14
  %ptr16 = load i64, ptr %ptr, align 4
  %len17 = load i64, ptr %len, align 4
  %addtmp18 = add i64 %ptr16, %len17
  %cast.inttoptr19 = inttoptr i64 %addtmp18 to ptr
  %null.deref = icmp eq ptr %cast.inttoptr19, null
  br i1 %null.deref, label %null.fail, label %null.ok

null.fail:                                        ; preds = %whilecond12
  call void @exit(i32 46)
  unreachable

null.ok:                                          ; preds = %whilecond12
  %deref = load i32, ptr %cast.inttoptr19, align 4
  %cast.sext20 = sext i32 %deref to i64
  %netmp = icmp ne i64 %cast.sext20, 0
  %whilecond21 = icmp ne i1 %netmp, false
  br i1 %whilecond21, label %whilebody22, label %afterwhile

whilebody22:                                      ; preds = %null.ok
  %len23 = load i64, ptr %len, align 4
  %addtmp24 = add i64 %len23, 1
  store i64 %addtmp24, ptr %len, align 4
  call void @npk_gc_safepoint()
  br label %whilecond12

afterwhile:                                       ; preds = %null.ok
  %s = alloca ptr, align 8
  %ptr25 = load i64, ptr %ptr, align 4
  %len26 = load i64, ptr %len, align 4
  %calltmp = call ptr @npk_mem_read_string(i64 %ptr25, i64 %len26)
  %ffi_strlen = call i64 @strlen(ptr %calltmp)
  %ffi_str_gc = call ptr @npk_gc_alloc(i64 16)
  %ffi_data_sz = add i64 %ffi_strlen, 1
  %ffi_data_gc = call ptr @npk_gc_alloc(i64 %ffi_data_sz)
  %0 = call ptr @memcpy(ptr %ffi_data_gc, ptr %calltmp, i64 %ffi_data_sz)
  %ffi_str_data = getelementptr inbounds nuw %struct.NpkString, ptr %ffi_str_gc, i32 0, i32 0
  store ptr %ffi_data_gc, ptr %ffi_str_data, align 8
  %ffi_str_len = getelementptr inbounds nuw %struct.NpkString, ptr %ffi_str_gc, i32 0, i32 1
  store i64 %ffi_strlen, ptr %ffi_str_len, align 4
  store ptr %ffi_str_gc, ptr %s, align 8
  %res27 = load ptr, ptr %res, align 8
  %s28 = load ptr, ptr %s, align 8
  %concat_str = call ptr @npk_string_concat_simple(ptr %s28, ptr @.str.2)
  %concat_str29 = call ptr @npk_string_concat_simple(ptr %res27, ptr %concat_str)
  store ptr %concat_str29, ptr %res, align 8
  %i30 = load i32, ptr %i, align 4
  %addtmp31 = add i32 %i30, 1
  store i32 %addtmp31, ptr %i, align 4
  call void @npk_gc_safepoint()
  br label %whilecond

afterwhile32:                                     ; preds = %whilecond
  %res33 = load ptr, ptr %res, align 8
  %result.val = insertvalue { ptr, ptr, i8 } undef, ptr %res33, 0
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
  store ptr @.str.4, ptr %rest, align 8
  %sep = alloca i64, align 8
  store i64 0, ptr %sep, align 4
  %len2 = load i64, ptr %len, align 4
  %lttmp = icmp slt i64 %len2, 2
  %ifcond = icmp ne i1 %lttmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %entry
  ret { ptr, ptr, i8 } { ptr @.str.6, ptr null, i8 0 }

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
  %index_of_result = call i64 @npk_string_index_of_simple(ptr %rest7, ptr @.str.8)
  store i64 %index_of_result, ptr %sep, align 4
  %sep8 = load i64, ptr %sep, align 4
  %lttmp9 = icmp slt i64 %sep8, 0
  %ifcond10 = icmp ne i1 %lttmp9, false
  br i1 %ifcond10, label %then11, label %ifcont12

then11:                                           ; preds = %whilebody
  ret { ptr, ptr, i8 } { ptr @.str.10, ptr null, i8 0 }

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
  ret { ptr, ptr, i8 } { ptr @.str.12, ptr null, i8 0 }
}

define linkonce_odr { i1, ptr, i8 } @nitpick_args.args_has(ptr %args, ptr %flag) {
entry:
  %needle = alloca ptr, align 8
  %concat_str = call ptr @npk_string_concat_simple(ptr %flag, ptr @.str.15)
  %concat_str1 = call ptr @npk_string_concat_simple(ptr @.str.14, ptr %concat_str)
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
  %concat_str = call ptr @npk_string_concat_simple(ptr %key, ptr @.str.18)
  %concat_str1 = call ptr @npk_string_concat_simple(ptr @.str.17, ptr %concat_str)
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
  store ptr @.str.20, ptr %rest, align 8
  %sep = alloca i64, align 8
  store i64 0, ptr %sep, align 4
  %pos7 = load i64, ptr %pos, align 4
  %lttmp = icmp slt i64 %pos7, 0
  %ifcond = icmp ne i1 %lttmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %entry
  ret { ptr, ptr, i8 } { ptr @.str.22, ptr null, i8 0 }

ifcont:                                           ; preds = %entry
  %value_start8 = load i64, ptr %value_start, align 4
  %len9 = load i64, ptr %len, align 4
  %getmp = icmp sge i64 %value_start8, %len9
  %ifcond10 = icmp ne i1 %getmp, false
  br i1 %ifcond10, label %then11, label %ifcont12

then11:                                           ; preds = %ifcont
  ret { ptr, ptr, i8 } { ptr @.str.24, ptr null, i8 0 }

ifcont12:                                         ; preds = %ifcont
  %value_start13 = load i64, ptr %value_start, align 4
  %len14 = load i64, ptr %len, align 4
  %substr_result = call ptr @npk_string_substring_simple(ptr %args, i64 %value_start13, i64 %len14)
  store ptr %substr_result, ptr %rest, align 8
  %rest15 = load ptr, ptr %rest, align 8
  %index_of_result16 = call i64 @npk_string_index_of_simple(ptr %rest15, ptr @.str.26)
  store i64 %index_of_result16, ptr %sep, align 4
  %sep17 = load i64, ptr %sep, align 4
  %letmp = icmp sle i64 %sep17, 0
  %ifcond18 = icmp ne i1 %letmp, false
  br i1 %ifcond18, label %then19, label %ifcont20

then19:                                           ; preds = %ifcont12
  ret { ptr, ptr, i8 } { ptr @.str.28, ptr null, i8 0 }

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
  %calltmp = call { ptr, ptr, i8 } @nitpick_args.args_get_or(ptr %args, ptr %key, ptr @.str.30)
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
  store ptr @.str.32, ptr %c0, align 8
  %c = alloca ptr, align 8
  store ptr @.str.34, ptr %c, align 8
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
  %str2 = load %struct.NpkString, ptr @.str.36, align 8
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
  %str219 = load %struct.NpkString, ptr @.str.38, align 8
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
  %str228 = load %struct.NpkString, ptr @.str.40, align 8
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
  %str237 = load %struct.NpkString, ptr @.str.42, align 8
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
  %str246 = load %struct.NpkString, ptr @.str.44, align 8
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
  %str255 = load %struct.NpkString, ptr @.str.46, align 8
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
  %str264 = load %struct.NpkString, ptr @.str.48, align 8
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
  %str273 = load %struct.NpkString, ptr @.str.50, align 8
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
  %str282 = load %struct.NpkString, ptr @.str.52, align 8
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
  %str291 = load %struct.NpkString, ptr @.str.54, align 8
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
  store ptr @.str.56, ptr %ch, align 8
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
  %str2 = load %struct.NpkString, ptr @.str.58, align 8
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
  store ptr @.str.60, ptr %keys.ptr, align 8
  %descs.ptr = getelementptr inbounds nuw %ArgParser, ptr %p, i32 0, i32 1
  store ptr @.str.62, ptr %descs.ptr, align 8
  %types.ptr = getelementptr inbounds nuw %ArgParser, ptr %p, i32 0, i32 2
  store ptr @.str.64, ptr %types.ptr, align 8
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
  %concat_str = call ptr @npk_string_concat_simple(ptr %key, ptr @.str.66)
  %concat_str3 = call ptr @npk_string_concat_simple(ptr %keys, ptr %concat_str)
  %keys.ptr = getelementptr inbounds nuw %ArgParser, ptr %out, i32 0, i32 0
  store ptr %concat_str3, ptr %keys.ptr, align 8
  %out4 = load %ArgParser, ptr %out, align 8
  %descs = extractvalue %ArgParser %out4, 1
  %concat_str5 = call ptr @npk_string_concat_simple(ptr %desc, ptr @.str.68)
  %concat_str6 = call ptr @npk_string_concat_simple(ptr %descs, ptr %concat_str5)
  %descs.ptr = getelementptr inbounds nuw %ArgParser, ptr %out, i32 0, i32 1
  store ptr %concat_str6, ptr %descs.ptr, align 8
  %out7 = load %ArgParser, ptr %out, align 8
  %types = extractvalue %ArgParser %out7, 2
  %concat_str8 = call ptr @npk_string_concat_simple(ptr %types, ptr @.str.70)
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
  %concat_str = call ptr @npk_string_concat_simple(ptr %key, ptr @.str.72)
  %concat_str3 = call ptr @npk_string_concat_simple(ptr %keys, ptr %concat_str)
  %keys.ptr = getelementptr inbounds nuw %ArgParser, ptr %out, i32 0, i32 0
  store ptr %concat_str3, ptr %keys.ptr, align 8
  %out4 = load %ArgParser, ptr %out, align 8
  %descs = extractvalue %ArgParser %out4, 1
  %concat_str5 = call ptr @npk_string_concat_simple(ptr %desc, ptr @.str.74)
  %concat_str6 = call ptr @npk_string_concat_simple(ptr %descs, ptr %concat_str5)
  %descs.ptr = getelementptr inbounds nuw %ArgParser, ptr %out, i32 0, i32 1
  store ptr %concat_str6, ptr %descs.ptr, align 8
  %out7 = load %ArgParser, ptr %out, align 8
  %types = extractvalue %ArgParser %out7, 2
  %concat_str8 = call ptr @npk_string_concat_simple(ptr %types, ptr @.str.76)
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
  %concat_str = call ptr @npk_string_concat_simple(ptr %a0, ptr @.str.79)
  %concat_str1 = call ptr @npk_string_concat_simple(ptr @.str.78, ptr %concat_str)
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
  %concat_str = call ptr @npk_string_concat_simple(ptr %a1, ptr @.str.81)
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
  %concat_str = call ptr @npk_string_concat_simple(ptr %a2, ptr @.str.83)
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
  %concat_str = call ptr @npk_string_concat_simple(ptr %a3, ptr @.str.85)
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
  %concat_str = call ptr @npk_string_concat_simple(ptr %a4, ptr @.str.87)
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
  %concat_str = call ptr @npk_string_concat_simple(ptr %a5, ptr @.str.89)
  %concat_str2 = call ptr @npk_string_concat_simple(ptr %b1, ptr %concat_str)
  %result.val = insertvalue { ptr, ptr, i8 } undef, ptr %concat_str2, 0
  %result.err = insertvalue { ptr, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { ptr, ptr, i8 } %result.err, i8 0, 2
  ret { ptr, ptr, i8 } %result.is_error
}

declare i64 @string_length(ptr)

declare void @exit(i32)

declare void @npk_gc_safepoint()

declare i64 @strlen(ptr)

declare ptr @npk_gc_alloc(i64)

declare ptr @memcpy(ptr, ptr, i64)

declare ptr @npk_string_concat_simple(ptr, ptr)

declare ptr @npk_string_substring_simple(ptr, i64, i64)

declare i64 @npk_string_index_of_simple(ptr, ptr)

declare i1 @npk_string_contains(%struct.NpkString, %struct.NpkString)

declare i1 @npk_string_equals(%struct.NpkString, %struct.NpkString)

define linkonce_odr i32 @__nitpick_args_init() {
entry:
  ret i32 0
}

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

define linkonce_odr { i32, ptr, i8 } @io_utils.standard_failsafe(i32 %err) {
entry:
  %err.addr = alloca i32, align 4
  store i32 %err, ptr %err.addr, align 4
  %calltmp = call { i32, ptr, i8 } @io_utils.print_err(ptr @.str.91)
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
  %lttmp = icmp slt i64 %e2, 0
  %ifcond = icmp ne i1 %lttmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %entry
  %calltmp3 = call { i32, ptr, i8 } @io_utils.print_err(ptr @.str.93)
  %e4 = load i64, ptr %e, align 4
  %multmp = mul i64 %e4, -1
  store i64 %multmp, ptr %e, align 4
  br label %ifcont

ifcont:                                           ; preds = %then, %entry
  %e5 = load i64, ptr %e, align 4
  %eqtmp = icmp eq i64 %e5, 0
  %ifcond6 = icmp ne i1 %eqtmp, false
  br i1 %ifcond6, label %then7, label %else

then7:                                            ; preds = %ifcont
  %ustack_h = load i64, ptr %__aria_ustack_handle, align 4
  call void @npk_ustack_push(i64 %ustack_h, i64 48, i64 3)
  store i64 1, ptr %len, align 4
  br label %ifcont15

else:                                             ; preds = %ifcont
  br label %whilecond

whilecond:                                        ; preds = %whilebody, %else
  %e8 = load i64, ptr %e, align 4
  %gttmp = icmp sgt i64 %e8, 0
  %whilecond9 = icmp ne i1 %gttmp, false
  br i1 %whilecond9, label %whilebody, label %afterwhile

whilebody:                                        ; preds = %whilecond
  %ustack_h10 = load i64, ptr %__aria_ustack_handle, align 4
  %e11 = load i64, ptr %e, align 4
  %modtmp = srem i64 %e11, 10
  %addtmp = add i64 %modtmp, 48
  call void @npk_ustack_push(i64 %ustack_h10, i64 %addtmp, i64 3)
  %e12 = load i64, ptr %e, align 4
  %divtmp = sdiv i64 %e12, 10
  %safe.divtmp = select i1 false, i64 9223372036854775807, i64 %divtmp
  store i64 %safe.divtmp, ptr %e, align 4
  %len13 = load i64, ptr %len, align 4
  %addtmp14 = add i64 %len13, 1
  store i64 %addtmp14, ptr %len, align 4
  call void @npk_gc_safepoint()
  br label %whilecond

afterwhile:                                       ; preds = %whilecond
  br label %ifcont15

ifcont15:                                         ; preds = %afterwhile, %then7
  br label %whilecond16

whilecond16:                                      ; preds = %whilebody20, %ifcont15
  %len17 = load i64, ptr %len, align 4
  %gttmp18 = icmp sgt i64 %len17, 0
  %whilecond19 = icmp ne i1 %gttmp18, false
  br i1 %whilecond19, label %whilebody20, label %afterwhile25

whilebody20:                                      ; preds = %whilecond16
  %c = alloca i64, align 8
  %ustack_h21 = load i64, ptr %__aria_ustack_handle, align 4
  %ustack_pop = call i64 @npk_ustack_pop(i64 %ustack_h21, i64 3)
  store i64 %ustack_pop, ptr %c, align 4
  %c22 = load i64, ptr %c, align 4
  %cast.trunc = trunc i64 %c22 to i8
  %char_str = call ptr @npk_string_from_char_simple(i8 %cast.trunc)
  %calltmp23 = call { i32, ptr, i8 } @io_utils.print_err(ptr %char_str)
  %len24 = load i64, ptr %len, align 4
  %subtmp = sub i64 %len24, 1
  store i64 %subtmp, ptr %len, align 4
  call void @npk_gc_safepoint()
  br label %whilecond16

afterwhile25:                                     ; preds = %whilecond16
  %calltmp26 = call { i32, ptr, i8 } @io_utils.print_err(ptr @.str.95)
  ret { i32, ptr, i8 } zeroinitializer

entry27:                                          ; No predecessors!
  %err.addr28 = alloca i32, align 4
  store i32 %err, ptr %err.addr28, align 4
  %calltmp29 = call { i32, ptr, i8 } @io_utils.print_err(ptr @.str.97)
  %ustack_handle30 = call i64 @npk_ustack_new(i64 64)
  %__aria_ustack_handle31 = alloca i64, align 8
  store i64 %ustack_handle30, ptr %__aria_ustack_handle31, align 4
  %e32 = alloca i64, align 8
  %err33 = load i32, ptr %err.addr28, align 4
  %cast.sext34 = sext i32 %err33 to i64
  store i64 %cast.sext34, ptr %e32, align 4
  %len35 = alloca i64, align 8
  store i64 0, ptr %len35, align 4
  %e36 = load i64, ptr %e32, align 4
  %lttmp37 = icmp slt i64 %e36, 0
  %ifcond38 = icmp ne i1 %lttmp37, false
  br i1 %ifcond38, label %then39, label %ifcont43

then39:                                           ; preds = %entry27
  %calltmp40 = call { i32, ptr, i8 } @io_utils.print_err(ptr @.str.99)
  %e41 = load i64, ptr %e32, align 4
  %multmp42 = mul i64 %e41, -1
  store i64 %multmp42, ptr %e32, align 4
  br label %ifcont43

ifcont43:                                         ; preds = %then39, %entry27
  %e44 = load i64, ptr %e32, align 4
  %eqtmp45 = icmp eq i64 %e44, 0
  %ifcond46 = icmp ne i1 %eqtmp45, false
  br i1 %ifcond46, label %then47, label %else49

then47:                                           ; preds = %ifcont43
  %ustack_h48 = load i64, ptr %__aria_ustack_handle31, align 4
  call void @npk_ustack_push(i64 %ustack_h48, i64 48, i64 3)
  store i64 1, ptr %len35, align 4
  br label %ifcont65

else49:                                           ; preds = %ifcont43
  br label %whilecond50

whilecond50:                                      ; preds = %whilebody54, %else49
  %e51 = load i64, ptr %e32, align 4
  %gttmp52 = icmp sgt i64 %e51, 0
  %whilecond53 = icmp ne i1 %gttmp52, false
  br i1 %whilecond53, label %whilebody54, label %afterwhile64

whilebody54:                                      ; preds = %whilecond50
  %ustack_h55 = load i64, ptr %__aria_ustack_handle31, align 4
  %e56 = load i64, ptr %e32, align 4
  %modtmp57 = srem i64 %e56, 10
  %addtmp58 = add i64 %modtmp57, 48
  call void @npk_ustack_push(i64 %ustack_h55, i64 %addtmp58, i64 3)
  %e59 = load i64, ptr %e32, align 4
  %divtmp60 = sdiv i64 %e59, 10
  %safe.divtmp61 = select i1 false, i64 9223372036854775807, i64 %divtmp60
  store i64 %safe.divtmp61, ptr %e32, align 4
  %len62 = load i64, ptr %len35, align 4
  %addtmp63 = add i64 %len62, 1
  store i64 %addtmp63, ptr %len35, align 4
  call void @npk_gc_safepoint()
  br label %whilecond50

afterwhile64:                                     ; preds = %whilecond50
  br label %ifcont65

ifcont65:                                         ; preds = %afterwhile64, %then47
  br label %whilecond66

whilecond66:                                      ; preds = %whilebody70, %ifcont65
  %len67 = load i64, ptr %len35, align 4
  %gttmp68 = icmp sgt i64 %len67, 0
  %whilecond69 = icmp ne i1 %gttmp68, false
  br i1 %whilecond69, label %whilebody70, label %afterwhile80

whilebody70:                                      ; preds = %whilecond66
  %c71 = alloca i64, align 8
  %ustack_h72 = load i64, ptr %__aria_ustack_handle31, align 4
  %ustack_pop73 = call i64 @npk_ustack_pop(i64 %ustack_h72, i64 3)
  store i64 %ustack_pop73, ptr %c71, align 4
  %c74 = load i64, ptr %c71, align 4
  %cast.trunc75 = trunc i64 %c74 to i8
  %char_str76 = call ptr @npk_string_from_char_simple(i8 %cast.trunc75)
  %calltmp77 = call { i32, ptr, i8 } @io_utils.print_err(ptr %char_str76)
  %len78 = load i64, ptr %len35, align 4
  %subtmp79 = sub i64 %len78, 1
  store i64 %subtmp79, ptr %len35, align 4
  call void @npk_gc_safepoint()
  br label %whilecond66

afterwhile80:                                     ; preds = %whilecond66
  %calltmp81 = call { i32, ptr, i8 } @io_utils.print_err(ptr @.str.101)
  ret { i32, ptr, i8 } zeroinitializer
}

declare i64 @npk_ustack_new(i64)

declare void @npk_ustack_push(i64, i64, i64)

declare i64 @npk_ustack_pop(i64, i64)

declare ptr @npk_string_from_char_simple(i8)

define linkonce_odr i32 @__io_utils_init() {
entry:
  ret i32 0
}

declare void @npk_mem_write_byte(i64, i64, i64)

declare i64 @npk_mem_read_byte(i64, i64)

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
  %calltmp = call { i32, ptr, i8 } @io_utils.standard_failsafe(i32 %err1)
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
  %str2 = load %struct.NpkString, ptr @.str.103, align 8
  %equals = call i1 @npk_string_equals(%struct.NpkString %str1, %struct.NpkString %str2)
  %ifcond = icmp ne i1 %equals, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %whilebody
  store i64 0, ptr %d, align 4
  br label %ifcont

ifcont:                                           ; preds = %then, %whilebody
  %ch7 = load ptr, ptr %ch, align 8
  %str18 = load %struct.NpkString, ptr %ch7, align 8
  %str29 = load %struct.NpkString, ptr @.str.105, align 8
  %equals10 = call i1 @npk_string_equals(%struct.NpkString %str18, %struct.NpkString %str29)
  %ifcond11 = icmp ne i1 %equals10, false
  br i1 %ifcond11, label %then12, label %ifcont13

then12:                                           ; preds = %ifcont
  store i64 1, ptr %d, align 4
  br label %ifcont13

ifcont13:                                         ; preds = %then12, %ifcont
  %ch14 = load ptr, ptr %ch, align 8
  %str115 = load %struct.NpkString, ptr %ch14, align 8
  %str216 = load %struct.NpkString, ptr @.str.107, align 8
  %equals17 = call i1 @npk_string_equals(%struct.NpkString %str115, %struct.NpkString %str216)
  %ifcond18 = icmp ne i1 %equals17, false
  br i1 %ifcond18, label %then19, label %ifcont20

then19:                                           ; preds = %ifcont13
  store i64 2, ptr %d, align 4
  br label %ifcont20

ifcont20:                                         ; preds = %then19, %ifcont13
  %ch21 = load ptr, ptr %ch, align 8
  %str122 = load %struct.NpkString, ptr %ch21, align 8
  %str223 = load %struct.NpkString, ptr @.str.109, align 8
  %equals24 = call i1 @npk_string_equals(%struct.NpkString %str122, %struct.NpkString %str223)
  %ifcond25 = icmp ne i1 %equals24, false
  br i1 %ifcond25, label %then26, label %ifcont27

then26:                                           ; preds = %ifcont20
  store i64 3, ptr %d, align 4
  br label %ifcont27

ifcont27:                                         ; preds = %then26, %ifcont20
  %ch28 = load ptr, ptr %ch, align 8
  %str129 = load %struct.NpkString, ptr %ch28, align 8
  %str230 = load %struct.NpkString, ptr @.str.111, align 8
  %equals31 = call i1 @npk_string_equals(%struct.NpkString %str129, %struct.NpkString %str230)
  %ifcond32 = icmp ne i1 %equals31, false
  br i1 %ifcond32, label %then33, label %ifcont34

then33:                                           ; preds = %ifcont27
  store i64 4, ptr %d, align 4
  br label %ifcont34

ifcont34:                                         ; preds = %then33, %ifcont27
  %ch35 = load ptr, ptr %ch, align 8
  %str136 = load %struct.NpkString, ptr %ch35, align 8
  %str237 = load %struct.NpkString, ptr @.str.113, align 8
  %equals38 = call i1 @npk_string_equals(%struct.NpkString %str136, %struct.NpkString %str237)
  %ifcond39 = icmp ne i1 %equals38, false
  br i1 %ifcond39, label %then40, label %ifcont41

then40:                                           ; preds = %ifcont34
  store i64 5, ptr %d, align 4
  br label %ifcont41

ifcont41:                                         ; preds = %then40, %ifcont34
  %ch42 = load ptr, ptr %ch, align 8
  %str143 = load %struct.NpkString, ptr %ch42, align 8
  %str244 = load %struct.NpkString, ptr @.str.115, align 8
  %equals45 = call i1 @npk_string_equals(%struct.NpkString %str143, %struct.NpkString %str244)
  %ifcond46 = icmp ne i1 %equals45, false
  br i1 %ifcond46, label %then47, label %ifcont48

then47:                                           ; preds = %ifcont41
  store i64 6, ptr %d, align 4
  br label %ifcont48

ifcont48:                                         ; preds = %then47, %ifcont41
  %ch49 = load ptr, ptr %ch, align 8
  %str150 = load %struct.NpkString, ptr %ch49, align 8
  %str251 = load %struct.NpkString, ptr @.str.117, align 8
  %equals52 = call i1 @npk_string_equals(%struct.NpkString %str150, %struct.NpkString %str251)
  %ifcond53 = icmp ne i1 %equals52, false
  br i1 %ifcond53, label %then54, label %ifcont55

then54:                                           ; preds = %ifcont48
  store i64 7, ptr %d, align 4
  br label %ifcont55

ifcont55:                                         ; preds = %then54, %ifcont48
  %ch56 = load ptr, ptr %ch, align 8
  %str157 = load %struct.NpkString, ptr %ch56, align 8
  %str258 = load %struct.NpkString, ptr @.str.119, align 8
  %equals59 = call i1 @npk_string_equals(%struct.NpkString %str157, %struct.NpkString %str258)
  %ifcond60 = icmp ne i1 %equals59, false
  br i1 %ifcond60, label %then61, label %ifcont62

then61:                                           ; preds = %ifcont55
  store i64 8, ptr %d, align 4
  br label %ifcont62

ifcont62:                                         ; preds = %then61, %ifcont55
  %ch63 = load ptr, ptr %ch, align 8
  %str164 = load %struct.NpkString, ptr %ch63, align 8
  %str265 = load %struct.NpkString, ptr @.str.121, align 8
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
  %str278 = load %struct.NpkString, ptr @.str.123, align 8
  %equals79 = call i1 @npk_string_equals(%struct.NpkString %str177, %struct.NpkString %str278)
  %ifcond80 = icmp ne i1 %equals79, false
  br i1 %ifcond80, label %then81, label %ifcont82

then81:                                           ; preds = %else
  store i64 1024, ptr %mult, align 4
  br label %ifcont82

ifcont82:                                         ; preds = %then81, %else
  %ch83 = load ptr, ptr %ch, align 8
  %str184 = load %struct.NpkString, ptr %ch83, align 8
  %str285 = load %struct.NpkString, ptr @.str.125, align 8
  %equals86 = call i1 @npk_string_equals(%struct.NpkString %str184, %struct.NpkString %str285)
  %ifcond87 = icmp ne i1 %equals86, false
  br i1 %ifcond87, label %then88, label %ifcont89

then88:                                           ; preds = %ifcont82
  store i64 1024, ptr %mult, align 4
  br label %ifcont89

ifcont89:                                         ; preds = %then88, %ifcont82
  %ch90 = load ptr, ptr %ch, align 8
  %str191 = load %struct.NpkString, ptr %ch90, align 8
  %str292 = load %struct.NpkString, ptr @.str.127, align 8
  %equals93 = call i1 @npk_string_equals(%struct.NpkString %str191, %struct.NpkString %str292)
  %ifcond94 = icmp ne i1 %equals93, false
  br i1 %ifcond94, label %then95, label %ifcont96

then95:                                           ; preds = %ifcont89
  store i64 1048576, ptr %mult, align 4
  br label %ifcont96

ifcont96:                                         ; preds = %then95, %ifcont89
  %ch97 = load ptr, ptr %ch, align 8
  %str198 = load %struct.NpkString, ptr %ch97, align 8
  %str299 = load %struct.NpkString, ptr @.str.129, align 8
  %equals100 = call i1 @npk_string_equals(%struct.NpkString %str198, %struct.NpkString %str299)
  %ifcond101 = icmp ne i1 %equals100, false
  br i1 %ifcond101, label %then102, label %ifcont103

then102:                                          ; preds = %ifcont96
  store i64 1048576, ptr %mult, align 4
  br label %ifcont103

ifcont103:                                        ; preds = %then102, %ifcont96
  %ch104 = load ptr, ptr %ch, align 8
  %str1105 = load %struct.NpkString, ptr %ch104, align 8
  %str2106 = load %struct.NpkString, ptr @.str.131, align 8
  %equals107 = call i1 @npk_string_equals(%struct.NpkString %str1105, %struct.NpkString %str2106)
  %ifcond108 = icmp ne i1 %equals107, false
  br i1 %ifcond108, label %then109, label %ifcont110

then109:                                          ; preds = %ifcont103
  store i64 1073741824, ptr %mult, align 4
  br label %ifcont110

ifcont110:                                        ; preds = %then109, %ifcont103
  %ch111 = load ptr, ptr %ch, align 8
  %str1112 = load %struct.NpkString, ptr %ch111, align 8
  %str2113 = load %struct.NpkString, ptr @.str.133, align 8
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

define i32 @main(i32 %argc, ptr %argv) {
entry:
  call void @npk_gc_init(i64 0, i64 0)
  call void @npk_args_init(i32 %argc, ptr %argv)
  call void @npk_streams_init()
  %argc.addr = alloca i32, align 4
  store i32 %argc, ptr %argc.addr, align 4
  %args = alloca ptr, align 8
  %argc1 = load i32, ptr %argc.addr, align 4
  %calltmp = call { ptr, ptr, i8 } @nitpick_args.args_load_native(i32 %argc1, ptr %argv)
  %raw.value = extractvalue { ptr, ptr, i8 } %calltmp, 0
  store ptr %raw.value, ptr %args, align 8
  %arg_count = alloca i32, align 4
  %args2 = load ptr, ptr %args, align 8
  %calltmp3 = call { i32, ptr, i8 } @nitpick_args.args_count(ptr %args2)
  %raw.value4 = extractvalue { i32, ptr, i8 } %calltmp3, 0
  store i32 %raw.value4, ptr %arg_count, align 4
  %fd_in = alloca i64, align 8
  store i64 0, ptr %fd_in, align 4
  %fd_out = alloca i64, align 8
  store i64 1, ptr %fd_out, align 4
  %bs = alloca i64, align 8
  store i64 512, ptr %bs, align 4
  %count = alloca i64, align 8
  store i64 -1, ptr %count, align 4
  %ifile = alloca ptr, align 8
  store ptr @.str.135, ptr %ifile, align 8
  %ofile = alloca ptr, align 8
  store ptr @.str.137, ptr %ofile, align 8
  %i = alloca i32, align 4
  store i32 1, ptr %i, align 4
  br label %whilecond

whilecond:                                        ; preds = %ifcont52, %entry
  %i5 = load i32, ptr %i, align 4
  %arg_count6 = load i32, ptr %arg_count, align 4
  %letmp = icmp sle i32 %i5, %arg_count6
  %whilecond7 = icmp ne i1 %letmp, false
  br i1 %whilecond7, label %whilebody, label %afterwhile

whilebody:                                        ; preds = %whilecond
  %arg = alloca ptr, align 8
  %args8 = load ptr, ptr %args, align 8
  %i9 = load i32, ptr %i, align 4
  %calltmp10 = call { ptr, ptr, i8 } @nitpick_args.args_at(ptr %args8, i32 %i9)
  %raw.value11 = extractvalue { ptr, ptr, i8 } %calltmp10, 0
  store ptr %raw.value11, ptr %arg, align 8
  %arg_len = alloca i64, align 8
  %arg12 = load ptr, ptr %arg, align 8
  %str = load %struct.NpkString, ptr %arg12, align 8
  %length = extractvalue %struct.NpkString %str, 1
  store i64 %length, ptr %arg_len, align 4
  %arg13 = load ptr, ptr %arg, align 8
  %str14 = load %struct.NpkString, ptr %arg13, align 8
  %prefix = load %struct.NpkString, ptr @.str.139, align 8
  %starts_with = call i1 @npk_string_starts_with(%struct.NpkString %str14, %struct.NpkString %prefix)
  %ifcond = icmp ne i1 %starts_with, false
  br i1 %ifcond, label %then, label %else

then:                                             ; preds = %whilebody
  %arg15 = load ptr, ptr %arg, align 8
  %arg_len16 = load i64, ptr %arg_len, align 4
  %substr_result = call ptr @npk_string_substring_simple(ptr %arg15, i64 3, i64 %arg_len16)
  store ptr %substr_result, ptr %ifile, align 8
  br label %ifcont52

else:                                             ; preds = %whilebody
  %arg17 = load ptr, ptr %arg, align 8
  %str18 = load %struct.NpkString, ptr %arg17, align 8
  %prefix19 = load %struct.NpkString, ptr @.str.141, align 8
  %starts_with20 = call i1 @npk_string_starts_with(%struct.NpkString %str18, %struct.NpkString %prefix19)
  %ifcond21 = icmp ne i1 %starts_with20, false
  br i1 %ifcond21, label %then22, label %else26

then22:                                           ; preds = %else
  %arg23 = load ptr, ptr %arg, align 8
  %arg_len24 = load i64, ptr %arg_len, align 4
  %substr_result25 = call ptr @npk_string_substring_simple(ptr %arg23, i64 3, i64 %arg_len24)
  store ptr %substr_result25, ptr %ofile, align 8
  br label %ifcont51

else26:                                           ; preds = %else
  %arg27 = load ptr, ptr %arg, align 8
  %str28 = load %struct.NpkString, ptr %arg27, align 8
  %prefix29 = load %struct.NpkString, ptr @.str.143, align 8
  %starts_with30 = call i1 @npk_string_starts_with(%struct.NpkString %str28, %struct.NpkString %prefix29)
  %ifcond31 = icmp ne i1 %starts_with30, false
  br i1 %ifcond31, label %then32, label %else38

then32:                                           ; preds = %else26
  %arg33 = load ptr, ptr %arg, align 8
  %arg_len34 = load i64, ptr %arg_len, align 4
  %substr_result35 = call ptr @npk_string_substring_simple(ptr %arg33, i64 3, i64 %arg_len34)
  %calltmp36 = call { i64, ptr, i8 } @parse_int(ptr %substr_result35)
  %raw.value37 = extractvalue { i64, ptr, i8 } %calltmp36, 0
  store i64 %raw.value37, ptr %bs, align 4
  br label %ifcont50

else38:                                           ; preds = %else26
  %arg39 = load ptr, ptr %arg, align 8
  %str40 = load %struct.NpkString, ptr %arg39, align 8
  %prefix41 = load %struct.NpkString, ptr @.str.145, align 8
  %starts_with42 = call i1 @npk_string_starts_with(%struct.NpkString %str40, %struct.NpkString %prefix41)
  %ifcond43 = icmp ne i1 %starts_with42, false
  br i1 %ifcond43, label %then44, label %ifcont

then44:                                           ; preds = %else38
  %arg45 = load ptr, ptr %arg, align 8
  %arg_len46 = load i64, ptr %arg_len, align 4
  %substr_result47 = call ptr @npk_string_substring_simple(ptr %arg45, i64 6, i64 %arg_len46)
  %calltmp48 = call { i64, ptr, i8 } @parse_int(ptr %substr_result47)
  %raw.value49 = extractvalue { i64, ptr, i8 } %calltmp48, 0
  store i64 %raw.value49, ptr %count, align 4
  br label %ifcont

ifcont:                                           ; preds = %then44, %else38
  br label %ifcont50

ifcont50:                                         ; preds = %ifcont, %then32
  br label %ifcont51

ifcont51:                                         ; preds = %ifcont50, %then22
  br label %ifcont52

ifcont52:                                         ; preds = %ifcont51, %then
  %i53 = load i32, ptr %i, align 4
  %addtmp = add i32 %i53, 1
  store i32 %addtmp, ptr %i, align 4
  call void @npk_gc_safepoint()
  br label %whilecond

afterwhile:                                       ; preds = %whilecond
  %ifile54 = load ptr, ptr %ifile, align 8
  %str55 = load %struct.NpkString, ptr %ifile54, align 8
  %length56 = extractvalue %struct.NpkString %str55, 1
  %gttmp = icmp sgt i64 %length56, 0
  %ifcond57 = icmp ne i1 %gttmp, false
  br i1 %ifcond57, label %then58, label %ifcont65

then58:                                           ; preds = %afterwhile
  %ifile59 = load ptr, ptr %ifile, align 8
  %sys_str_struct = load %struct.NpkString, ptr %ifile59, align 8
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

error_block:                                      ; preds = %then58
  br label %merge_block

success_block:                                    ; preds = %then58
  %value = extractvalue %struct.NpkResult_int64 %sys_result.is_error, 0
  br label %merge_block

merge_block:                                      ; preds = %success_block, %error_block
  %unwrap_result = phi i64 [ -1, %error_block ], [ %value, %success_block ]
  store i64 %unwrap_result, ptr %fd_in, align 4
  %fd_in60 = load i64, ptr %fd_in, align 4
  %lttmp = icmp slt i64 %fd_in60, 0
  %ifcond61 = icmp ne i1 %lttmp, false
  br i1 %ifcond61, label %then62, label %ifcont64

then62:                                           ; preds = %merge_block
  %calltmp63 = call { i32, ptr, i8 } @print_err(ptr @.str.147)
  call void @proc_exit(i32 1)
  br label %ifcont64

ifcont64:                                         ; preds = %then62, %merge_block
  br label %ifcont65

ifcont65:                                         ; preds = %ifcont64, %afterwhile
  %ofile66 = load ptr, ptr %ofile, align 8
  %str67 = load %struct.NpkString, ptr %ofile66, align 8
  %length68 = extractvalue %struct.NpkString %str67, 1
  %gttmp69 = icmp sgt i64 %length68, 0
  %ifcond70 = icmp ne i1 %gttmp69, false
  br i1 %ifcond70, label %then71, label %ifcont99

then71:                                           ; preds = %ifcont65
  %ofile72 = load ptr, ptr %ofile, align 8
  %sys_str_struct73 = load %struct.NpkString, ptr %ofile72, align 8
  %sys_str_data74 = extractvalue %struct.NpkString %sys_str_struct73, 0
  %sys_strvar_int75 = ptrtoint ptr %sys_str_data74 to i64
  %syscall_ret76 = call i64 asm sideeffect "syscall", "={rax},{rax},{rdi},{rsi},{rdx},~{rcx},~{r11},~{memory}"(i64 2, i64 %sys_strvar_int75, i64 577, i64 438)
  %sys_is_err77 = icmp slt i64 %syscall_ret76, 0
  %sys_neg_errno78 = sub i64 0, %syscall_ret76
  %sys_err_ptr79 = inttoptr i64 %sys_neg_errno78 to ptr
  %sys_val80 = select i1 %sys_is_err77, i64 0, i64 %syscall_ret76
  %sys_err81 = select i1 %sys_is_err77, ptr %sys_err_ptr79, ptr null
  %sys_flag82 = select i1 %sys_is_err77, i8 1, i8 0
  %sys_result.val83 = insertvalue %struct.NpkResult_int64 undef, i64 %sys_val80, 0
  %sys_result.err84 = insertvalue %struct.NpkResult_int64 %sys_result.val83, ptr %sys_err81, 1
  %sys_result.is_error85 = insertvalue %struct.NpkResult_int64 %sys_result.err84, i8 %sys_flag82, 2
  %is_error86 = extractvalue %struct.NpkResult_int64 %sys_result.is_error85, 2
  %is_error_bool87 = icmp ne i8 %is_error86, 0
  br i1 %is_error_bool87, label %error_block88, label %success_block89

error_block88:                                    ; preds = %then71
  br label %merge_block90

success_block89:                                  ; preds = %then71
  %value91 = extractvalue %struct.NpkResult_int64 %sys_result.is_error85, 0
  br label %merge_block90

merge_block90:                                    ; preds = %success_block89, %error_block88
  %unwrap_result92 = phi i64 [ -1, %error_block88 ], [ %value91, %success_block89 ]
  store i64 %unwrap_result92, ptr %fd_out, align 4
  %fd_out93 = load i64, ptr %fd_out, align 4
  %lttmp94 = icmp slt i64 %fd_out93, 0
  %ifcond95 = icmp ne i1 %lttmp94, false
  br i1 %ifcond95, label %then96, label %ifcont98

then96:                                           ; preds = %merge_block90
  %calltmp97 = call { i32, ptr, i8 } @print_err(ptr @.str.149)
  call void @proc_exit(i32 1)
  br label %ifcont98

ifcont98:                                         ; preds = %then96, %merge_block90
  br label %ifcont99

ifcont99:                                         ; preds = %ifcont98, %ifcont65
  %buf = alloca i64, align 8
  %bs100 = load i64, ptr %bs, align 4
  %syscall_ret101 = call i64 asm sideeffect "syscall", "={rax},{rax},{rdi},{rsi},{rdx},{r10},{r8},{r9},~{rcx},~{r11},~{memory}"(i64 9, i64 0, i64 %bs100, i64 3, i64 34, i64 -1, i64 0)
  %sys_is_err102 = icmp slt i64 %syscall_ret101, 0
  %sys_neg_errno103 = sub i64 0, %syscall_ret101
  %sys_err_ptr104 = inttoptr i64 %sys_neg_errno103 to ptr
  %sys_val105 = select i1 %sys_is_err102, i64 0, i64 %syscall_ret101
  %sys_err106 = select i1 %sys_is_err102, ptr %sys_err_ptr104, ptr null
  %sys_flag107 = select i1 %sys_is_err102, i8 1, i8 0
  %sys_result.val108 = insertvalue %struct.NpkResult_int64 undef, i64 %sys_val105, 0
  %sys_result.err109 = insertvalue %struct.NpkResult_int64 %sys_result.val108, ptr %sys_err106, 1
  %sys_result.is_error110 = insertvalue %struct.NpkResult_int64 %sys_result.err109, i8 %sys_flag107, 2
  %is_error111 = extractvalue %struct.NpkResult_int64 %sys_result.is_error110, 2
  %is_error_bool112 = icmp ne i8 %is_error111, 0
  br i1 %is_error_bool112, label %error_block113, label %success_block114

error_block113:                                   ; preds = %ifcont99
  br label %merge_block115

success_block114:                                 ; preds = %ifcont99
  %value116 = extractvalue %struct.NpkResult_int64 %sys_result.is_error110, 0
  br label %merge_block115

merge_block115:                                   ; preds = %success_block114, %error_block113
  %unwrap_result117 = phi i64 [ 0, %error_block113 ], [ %value116, %success_block114 ]
  store i64 %unwrap_result117, ptr %buf, align 4
  %buf118 = load i64, ptr %buf, align 4
  %letmp119 = icmp sle i64 %buf118, 0
  %ifcond120 = icmp ne i1 %letmp119, false
  br i1 %ifcond120, label %then121, label %ifcont123

then121:                                          ; preds = %merge_block115
  %calltmp122 = call { i32, ptr, i8 } @print_err(ptr @.str.151)
  call void @proc_exit(i32 1)
  br label %ifcont123

ifcont123:                                        ; preds = %then121, %merge_block115
  %running = alloca i32, align 4
  store i32 1, ptr %running, align 4
  %blocks_in = alloca i64, align 8
  store i64 0, ptr %blocks_in, align 4
  %blocks_out = alloca i64, align 8
  store i64 0, ptr %blocks_out, align 4
  br label %whilecond124

whilecond124:                                     ; preds = %ifcont197, %ifcont123
  %running125 = load i32, ptr %running, align 4
  %eqtmp = icmp eq i32 %running125, 1
  %whilecond126 = icmp ne i1 %eqtmp, false
  br i1 %whilecond126, label %whilebody127, label %afterwhile198

whilebody127:                                     ; preds = %whilecond124
  %count128 = load i64, ptr %count, align 4
  %netmp = icmp ne i64 %count128, -1
  %ifcond129 = icmp ne i1 %netmp, false
  br i1 %ifcond129, label %then130, label %ifcont136

then130:                                          ; preds = %whilebody127
  %blocks_in131 = load i64, ptr %blocks_in, align 4
  %count132 = load i64, ptr %count, align 4
  %getmp = icmp sge i64 %blocks_in131, %count132
  %ifcond133 = icmp ne i1 %getmp, false
  br i1 %ifcond133, label %then134, label %ifcont135

then134:                                          ; preds = %then130
  store i32 0, ptr %running, align 4
  br label %ifcont135

ifcont135:                                        ; preds = %then134, %then130
  br label %ifcont136

ifcont136:                                        ; preds = %ifcont135, %whilebody127
  %running137 = load i32, ptr %running, align 4
  %eqtmp138 = icmp eq i32 %running137, 1
  %ifcond139 = icmp ne i1 %eqtmp138, false
  br i1 %ifcond139, label %then140, label %ifcont197

then140:                                          ; preds = %ifcont136
  %nread = alloca i64, align 8
  %fd_in141 = load i64, ptr %fd_in, align 4
  %buf142 = load i64, ptr %buf, align 4
  %bs143 = load i64, ptr %bs, align 4
  %syscall_ret144 = call i64 asm sideeffect "syscall", "={rax},{rax},{rdi},{rsi},{rdx},~{rcx},~{r11},~{memory}"(i64 0, i64 %fd_in141, i64 %buf142, i64 %bs143)
  %sys_is_err145 = icmp slt i64 %syscall_ret144, 0
  %sys_neg_errno146 = sub i64 0, %syscall_ret144
  %sys_err_ptr147 = inttoptr i64 %sys_neg_errno146 to ptr
  %sys_val148 = select i1 %sys_is_err145, i64 0, i64 %syscall_ret144
  %sys_err149 = select i1 %sys_is_err145, ptr %sys_err_ptr147, ptr null
  %sys_flag150 = select i1 %sys_is_err145, i8 1, i8 0
  %sys_result.val151 = insertvalue %struct.NpkResult_int64 undef, i64 %sys_val148, 0
  %sys_result.err152 = insertvalue %struct.NpkResult_int64 %sys_result.val151, ptr %sys_err149, 1
  %sys_result.is_error153 = insertvalue %struct.NpkResult_int64 %sys_result.err152, i8 %sys_flag150, 2
  %is_error154 = extractvalue %struct.NpkResult_int64 %sys_result.is_error153, 2
  %is_error_bool155 = icmp ne i8 %is_error154, 0
  br i1 %is_error_bool155, label %error_block156, label %success_block157

error_block156:                                   ; preds = %then140
  br label %merge_block158

success_block157:                                 ; preds = %then140
  %value159 = extractvalue %struct.NpkResult_int64 %sys_result.is_error153, 0
  br label %merge_block158

merge_block158:                                   ; preds = %success_block157, %error_block156
  %unwrap_result160 = phi i64 [ -1, %error_block156 ], [ %value159, %success_block157 ]
  store i64 %unwrap_result160, ptr %nread, align 4
  %nread161 = load i64, ptr %nread, align 4
  %letmp162 = icmp sle i64 %nread161, 0
  %ifcond163 = icmp ne i1 %letmp162, false
  br i1 %ifcond163, label %then164, label %else165

then164:                                          ; preds = %merge_block158
  store i32 0, ptr %running, align 4
  br label %ifcont196

else165:                                          ; preds = %merge_block158
  %blocks_in166 = load i64, ptr %blocks_in, align 4
  %addtmp167 = add i64 %blocks_in166, 1
  store i64 %addtmp167, ptr %blocks_in, align 4
  %nwritten = alloca i64, align 8
  %fd_out168 = load i64, ptr %fd_out, align 4
  %buf169 = load i64, ptr %buf, align 4
  %nread170 = load i64, ptr %nread, align 4
  %syscall_ret171 = call i64 asm sideeffect "syscall", "={rax},{rax},{rdi},{rsi},{rdx},~{rcx},~{r11},~{memory}"(i64 1, i64 %fd_out168, i64 %buf169, i64 %nread170)
  %sys_is_err172 = icmp slt i64 %syscall_ret171, 0
  %sys_neg_errno173 = sub i64 0, %syscall_ret171
  %sys_err_ptr174 = inttoptr i64 %sys_neg_errno173 to ptr
  %sys_val175 = select i1 %sys_is_err172, i64 0, i64 %syscall_ret171
  %sys_err176 = select i1 %sys_is_err172, ptr %sys_err_ptr174, ptr null
  %sys_flag177 = select i1 %sys_is_err172, i8 1, i8 0
  %sys_result.val178 = insertvalue %struct.NpkResult_int64 undef, i64 %sys_val175, 0
  %sys_result.err179 = insertvalue %struct.NpkResult_int64 %sys_result.val178, ptr %sys_err176, 1
  %sys_result.is_error180 = insertvalue %struct.NpkResult_int64 %sys_result.err179, i8 %sys_flag177, 2
  %is_error181 = extractvalue %struct.NpkResult_int64 %sys_result.is_error180, 2
  %is_error_bool182 = icmp ne i8 %is_error181, 0
  br i1 %is_error_bool182, label %error_block183, label %success_block184

error_block183:                                   ; preds = %else165
  br label %merge_block185

success_block184:                                 ; preds = %else165
  %value186 = extractvalue %struct.NpkResult_int64 %sys_result.is_error180, 0
  br label %merge_block185

merge_block185:                                   ; preds = %success_block184, %error_block183
  %unwrap_result187 = phi i64 [ -1, %error_block183 ], [ %value186, %success_block184 ]
  store i64 %unwrap_result187, ptr %nwritten, align 4
  %nwritten188 = load i64, ptr %nwritten, align 4
  %nread189 = load i64, ptr %nread, align 4
  %eqtmp190 = icmp eq i64 %nwritten188, %nread189
  %ifcond191 = icmp ne i1 %eqtmp190, false
  br i1 %ifcond191, label %then192, label %ifcont195

then192:                                          ; preds = %merge_block185
  %blocks_out193 = load i64, ptr %blocks_out, align 4
  %addtmp194 = add i64 %blocks_out193, 1
  store i64 %addtmp194, ptr %blocks_out, align 4
  br label %ifcont195

ifcont195:                                        ; preds = %then192, %merge_block185
  br label %ifcont196

ifcont196:                                        ; preds = %ifcont195, %then164
  br label %ifcont197

ifcont197:                                        ; preds = %ifcont196, %ifcont136
  call void @npk_gc_safepoint()
  br label %whilecond124

afterwhile198:                                    ; preds = %whilecond124
  %buf199 = load i64, ptr %buf, align 4
  %bs200 = load i64, ptr %bs, align 4
  %syscall_ret201 = call i64 asm sideeffect "syscall", "={rax},{rax},{rdi},{rsi},~{rcx},~{r11},~{memory}"(i64 11, i64 %buf199, i64 %bs200)
  %sys_is_err202 = icmp slt i64 %syscall_ret201, 0
  %sys_neg_errno203 = sub i64 0, %syscall_ret201
  %sys_err_ptr204 = inttoptr i64 %sys_neg_errno203 to ptr
  %sys_val205 = select i1 %sys_is_err202, i64 0, i64 %syscall_ret201
  %sys_err206 = select i1 %sys_is_err202, ptr %sys_err_ptr204, ptr null
  %sys_flag207 = select i1 %sys_is_err202, i8 1, i8 0
  %sys_result.val208 = insertvalue %struct.NpkResult_int64 undef, i64 %sys_val205, 0
  %sys_result.err209 = insertvalue %struct.NpkResult_int64 %sys_result.val208, ptr %sys_err206, 1
  %sys_result.is_error210 = insertvalue %struct.NpkResult_int64 %sys_result.err209, i8 %sys_flag207, 2
  %fd_in211 = load i64, ptr %fd_in, align 4
  %netmp212 = icmp ne i64 %fd_in211, 0
  %ifcond213 = icmp ne i1 %netmp212, false
  br i1 %ifcond213, label %then214, label %ifcont226

then214:                                          ; preds = %afterwhile198
  %fd_in215 = load i64, ptr %fd_in, align 4
  %syscall_ret216 = call i64 asm sideeffect "syscall", "={rax},{rax},{rdi},~{rcx},~{r11},~{memory}"(i64 3, i64 %fd_in215)
  %sys_is_err217 = icmp slt i64 %syscall_ret216, 0
  %sys_neg_errno218 = sub i64 0, %syscall_ret216
  %sys_err_ptr219 = inttoptr i64 %sys_neg_errno218 to ptr
  %sys_val220 = select i1 %sys_is_err217, i64 0, i64 %syscall_ret216
  %sys_err221 = select i1 %sys_is_err217, ptr %sys_err_ptr219, ptr null
  %sys_flag222 = select i1 %sys_is_err217, i8 1, i8 0
  %sys_result.val223 = insertvalue %struct.NpkResult_int64 undef, i64 %sys_val220, 0
  %sys_result.err224 = insertvalue %struct.NpkResult_int64 %sys_result.val223, ptr %sys_err221, 1
  %sys_result.is_error225 = insertvalue %struct.NpkResult_int64 %sys_result.err224, i8 %sys_flag222, 2
  br label %ifcont226

ifcont226:                                        ; preds = %then214, %afterwhile198
  %fd_out227 = load i64, ptr %fd_out, align 4
  %netmp228 = icmp ne i64 %fd_out227, 1
  %ifcond229 = icmp ne i1 %netmp228, false
  br i1 %ifcond229, label %then230, label %ifcont242

then230:                                          ; preds = %ifcont226
  %fd_out231 = load i64, ptr %fd_out, align 4
  %syscall_ret232 = call i64 asm sideeffect "syscall", "={rax},{rax},{rdi},~{rcx},~{r11},~{memory}"(i64 3, i64 %fd_out231)
  %sys_is_err233 = icmp slt i64 %syscall_ret232, 0
  %sys_neg_errno234 = sub i64 0, %syscall_ret232
  %sys_err_ptr235 = inttoptr i64 %sys_neg_errno234 to ptr
  %sys_val236 = select i1 %sys_is_err233, i64 0, i64 %syscall_ret232
  %sys_err237 = select i1 %sys_is_err233, ptr %sys_err_ptr235, ptr null
  %sys_flag238 = select i1 %sys_is_err233, i8 1, i8 0
  %sys_result.val239 = insertvalue %struct.NpkResult_int64 undef, i64 %sys_val236, 0
  %sys_result.err240 = insertvalue %struct.NpkResult_int64 %sys_result.val239, ptr %sys_err237, 1
  %sys_result.is_error241 = insertvalue %struct.NpkResult_int64 %sys_result.err240, i8 %sys_flag238, 2
  br label %ifcont242

ifcont242:                                        ; preds = %then230, %ifcont226
  call void @proc_exit(i32 0)
  ret i32 0
}

declare i64 @fopen(ptr, ptr)

declare i32 @fgetc(i64)

declare i32 @fclose(i64)

declare i64 @malloc(i64)

declare i32 @nitpick_libc_mem_free(i64)

declare void @proc_exit(i32)

declare void @npk_gc_init(i64, i64)

declare void @npk_args_init(i32, ptr)

declare void @npk_streams_init()

declare i1 @npk_string_starts_with(%struct.NpkString, %struct.NpkString)

define linkonce_odr i32 @__dd_init() {
entry:
  ret i32 0
}
