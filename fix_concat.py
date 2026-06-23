import os

with open('src/env/env.npk', 'r') as f:
    env_code = f.read()

env_new = env_code.replace('string:current = "";', 'int64:buf = nitpick_libc_mem_malloc(1048576i64); int64:buf_len = 0i64;')
env_new = env_new.replace('if (string_length(current) > 0i64) {', 'if (buf_len > 0i64) {')
env_new = env_new.replace('drop(print_str_safe(current));', 'drop(sys!!(1i64, 1i64, buf, buf_len));')
env_new = env_new.replace('current = "";', 'buf_len = 0i64;')
env_new = env_new.replace('current = string_concat(current, string_from_char(@cast_unchecked<int8>(c)));', 'nitpick_libc_mem_write_byte(buf, buf_len, c); buf_len = buf_len + 1i64;')

with open('src/env/env.npk', 'w') as f:
    f.write(env_new)

with open('src/uniq/uniq.npk', 'r') as f:
    uniq_code = f.read()

# For uniq, we only need a line buffer.
uniq_arr_logic = """
        int64:line_buf = nitpick_libc_mem_malloc(1048576i64);
        int64:line_len = 0i64;
        int32:c = fgetc(fp);
        if (c < 0i32) {
            running = 0i32;
        } else {
            while (c >= 0i32) {
                if (c == 10i32) {
                    c = -1i32; // break
                } else {
                    nitpick_libc_mem_write_byte(line_buf, line_len, c);
                    line_len = line_len + 1i64;
                    c = fgetc(fp);
                }
            }
            string:line = nitpick_libc_string_from_buf(line_buf, 0i64, line_len);
"""

import re
uniq_new = re.sub(r'string:line = "";.*?while \(c >= 0i32\) \{.*?\}\s+\}', uniq_arr_logic.strip(), uniq_code, flags=re.DOTALL)
uniq_new = uniq_new.replace('drop(fclose(fp));', 'drop(fclose(fp));\ndrop(nitpick_libc_mem_free(line_buf));')
with open('src/uniq/uniq.npk', 'w') as f:
    f.write(uniq_new)

print("Fixed env.npk and uniq.npk")
