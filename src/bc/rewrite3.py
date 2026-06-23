import re

main_file = "/home/randy/Workspace/REPOS/nitpick-posix/src/bc/main.npk"
with open(main_file, "r") as f:
    content = f.read()

imports = 'use "stdlib/string_convert.npk".*;\nuse "stdlib/string.npk".*;\nuse "stdlib/math.npk".*;\n'

# 1. Replace all flt64 with fix256
content = content.replace("flt64", "fix256")

# Revert specifics
content = content.replace("= 0.0fix256", "= @cast_unchecked<fix256>(0.0)")
content = content.replace("pass(0.0fix256)", "pass(@cast_unchecked<fix256>(0.0))")
content = content.replace("!= 0.0fix256", "!= @cast_unchecked<fix256>(0.0)")
content = content.replace("0.0fix256 - val", "@cast_unchecked<fix256>(0.0) - val")

# 2. Remove extern libc functions
content = re.sub(r'extern func:pow = fix256\(fix256:x, fix256:y\);\n', '', content)
content = re.sub(r'extern func:fmod = fix256\(fix256:x, fix256:y\);\n', '', content)
content = re.sub(r'extern func:sin = fix256\(fix256:x\);\n', '', content)
content = re.sub(r'extern func:cos = fix256\(fix256:x\);\n', '', content)
content = re.sub(r'extern func:tan = fix256\(fix256:x\);\n', '', content)
content = re.sub(r'extern func:sqrt = fix256\(fix256:x\);\n', '', content)
content = re.sub(r'extern func:exp = fix256\(fix256:x\);\n', '', content)
content = re.sub(r'extern func:log = fix256\(fix256:x\);\n', '', content)
content = re.sub(r'extern func:strcmp = int64\(string:s1, string:s2\);\n', '', content)
content = re.sub(r'extern func:atof = fix256\(string:str\);\n', '', content)

# 3. Add custom fix256 math wrappers
wrappers = """func:bc_pow = fix256(fix256:x, fix256:y) { pass @cast_unchecked<fix256>(pow(@cast_unchecked<float64>(x), @cast_unchecked<float64>(y))); };
func:bc_sin = fix256(fix256:x) { pass @cast_unchecked<fix256>(sin(@cast_unchecked<float64>(x))); };
func:bc_cos = fix256(fix256:x) { pass @cast_unchecked<fix256>(cos(@cast_unchecked<float64>(x))); };
func:bc_tan = fix256(fix256:x) { pass @cast_unchecked<fix256>(tan(@cast_unchecked<float64>(x))); };
func:bc_sqrt = fix256(fix256:x) { pass @cast_unchecked<fix256>(sqrt(@cast_unchecked<float64>(x))); };
func:bc_exp = fix256(fix256:x) { pass @cast_unchecked<fix256>(exp(@cast_unchecked<float64>(x))); };
func:bc_log = fix256(fix256:x) { pass @cast_unchecked<fix256>(log(@cast_unchecked<float64>(x))); };

"""
content = content.replace('string:lexer_curr_ident = "";\n', 'string:lexer_curr_ident = "";\n\n' + wrappers)

# 4. Replace function calls
content = content.replace('strcmp(id, "s") == 0i64', 'string_equals(id, "s")')
content = content.replace('strcmp(id, "c") == 0i64', 'string_equals(id, "c")')
content = content.replace('strcmp(id, "t") == 0i64', 'string_equals(id, "t")')
content = content.replace('strcmp(id, "sqrt") == 0i64', 'string_equals(id, "sqrt")')
content = content.replace('strcmp(id, "e") == 0i64', 'string_equals(id, "e")')
content = content.replace('strcmp(id, "l") == 0i64', 'string_equals(id, "l")')
content = content.replace('strcmp(input, "quit\\n") == 0i64', 'string_equals(input, "quit\\n")')
content = content.replace('strcmp(input, "exit\\n") == 0i64', 'string_equals(input, "exit\\n")')

content = content.replace('sin(val)', 'raw(bc_sin(val))')
content = content.replace('cos(val)', 'raw(bc_cos(val))')
content = content.replace('tan(val)', 'raw(bc_tan(val))')
content = content.replace('sqrt(val)', 'raw(bc_sqrt(val))')
content = content.replace('exp(val)', 'raw(bc_exp(val))')
content = content.replace('log(val)', 'raw(bc_log(val))')
content = content.replace('pow(left, right)', 'raw(bc_pow(left, right))')
content = content.replace('fmod(left, right)', 'left % right')

content = content.replace('lexer_curr_val = atof(num_str);', 'lexer_curr_val = raw(str_to_fix256(num_str));')

# 5. Fix printing
content = re.sub(r'extern func:printf = int32\(string:fmt\);\n', '', content)
content = re.sub(r'extern func:sprintf = int32\(any\*:buf, string:fmt, fix256:val\);\n', '', content)

content = content.replace('drop(printf("> "));', 'drop(sys!!(1i64, 1i64, "> ", 2i64));')
content = content.replace('drop(printf("Parse error\\n"));', 'drop(sys!!(1i64, 1i64, "Parse error\\n", 12i64));')

old_print_logic = """            any->:out_buf = malloc(256i64) => any->;
            drop(sprintf(out_buf, "%.6g\\n", res));
            string:out_str = npk_mem_read_string(out_buf, 256i64);
            drop(printf(out_str));
            drop(free(out_buf => any->));"""

new_print_logic = """            string:res_str = fix256_toString(res, 6i32);
            string:out_str = string_concat(res_str, "\\n");
            drop(sys!!(1i64, 1i64, out_str, string_length(out_str)));"""

content = content.replace(old_print_logic, new_print_logic)

# Replace read with sys!!
content = re.sub(r'extern func:read = int64\(int32:fd, any\*:buf, int64:count\);\n', '', content)
content = content.replace('int64:bytes_read = read(0i32, buf, 4095i64);', 'int64:bytes_read = raw(sys!!(0i64, 0i64, buf, 4095i64));')

with open(main_file, "w") as f:
    f.write(imports + content)
