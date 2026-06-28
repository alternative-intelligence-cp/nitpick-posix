import os
import re

def fix_errors():
    mem_utils_path = 'src/vendor/mem_utils.npk'
    with open(mem_utils_path, 'r') as f:
        content = f.read()
    
    # Add read_string_native
    if 'pub func:read_string_native' not in content:
        read_str_code = """
pub func:read_string_native = string(int64:ptr, int64:max_len) {
    string:s = "";
    int64:i = 0i64;
    while (i < max_len) {
        int64:c = @cast_unchecked<int64>(<-(@cast_unchecked<int8->>(ptr + i)));
        if (c == 0i64) {
            i = max_len;
        } else {
            s = string_concat(s, string_from_char(@cast_unchecked<int8>(c)));
            i = i + 1i64;
        }
    }
    pass s;
};
"""
        content = content + read_str_code
        with open(mem_utils_path, 'w') as f:
            f.write(content)

fix_errors()
