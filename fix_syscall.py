import re
import os

files_to_fix = [
    'src/expand/expand.npk',
    'src/unexpand/unexpand.npk',
    'src/fold/fold.npk',
    'src/cut/cut.npk',
    'src/pr/pr.npk'
]

setup_code = """
    int64:out_buf_sys = nitpick_libc_mem_malloc(65536i64);
    int64:out_len_sys = 0i64;
"""

flush_code = """
    if (out_len_sys > 0i64) {
        drop(sys!!(1i64, 1i64, out_buf_sys, out_len_sys));
        out_len_sys = 0i64;
    }
"""

def get_write_byte_code(val):
    return f"""
        drop(nitpick_libc_mem_write_byte(out_buf_sys, out_len_sys, {val}));
        out_len_sys = out_len_sys + 1i64;
        if (out_len_sys >= 65536i64) {{
            drop(sys!!(1i64, 1i64, out_buf_sys, out_len_sys));
            out_len_sys = 0i64;
        }}
"""

for fname in files_to_fix:
    if not os.path.exists(fname):
        continue
    with open(fname, 'r') as f:
        code = f.read()

    # insert setup code right after func:main = int32() {
    code = re.sub(r'func:main = int32\(\) \{', r'func:main = int32() {' + setup_code, code, count=1)
    
    # replace exit 0; with flush code + exit 0;
    code = re.sub(r'exit 0;', flush_code + '    exit 0;', code)
    
    # replace print_str_safe("\t")
    code = code.replace('drop(print_str_safe("\\t"));', get_write_byte_code("9i32").strip())
    
    # replace print_str_safe(" ")
    code = code.replace('drop(print_str_safe(" "));', get_write_byte_code("32i32").strip())
    
    # replace print_str_safe("\n")
    code = code.replace('drop(print_str_safe("\\n"));', get_write_byte_code("10i32").strip())
    
    # replace sys(WRITE, 1i64, buf + j, 1i64)
    code = re.sub(r'drop\(sys\(WRITE,\s*1i64,\s*buf \+ j,\s*1i64\)\);', get_write_byte_code("@cast_unchecked<int32>(npk_mem_read_byte(buf, j))").strip(), code)
    
    # for fold.npk and others they might do sys(WRITE, 1i64, string_from_char(...), 1i64)
    # wait, fold.npk uses:
    # drop(sys(WRITE, 1i64, buf + j, 1i64));
    
    # let's look at what cut.npk uses
    # it uses sys(WRITE, 1i64, buf + start, j - start) which is not one byte!
    # "cut.npk writes characters to stdout one at a time using drop(sys(WRITE, 1i64, buf + j, 1i64));."
    # Ok!
    with open(fname, 'w') as f:
        f.write(code)

print("Done syscall fixes!")
