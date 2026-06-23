import re

with open('src/paste/paste.npk', 'r') as f:
    paste_code = f.read()

paste_arr_logic = """
                int64:line_buf = nitpick_libc_mem_malloc(65536i64);
                int64:line_len = 0i64;
                int32:c = fgetc(fp);
                if (c < 0i32) {
                    // EOF
                    drop(npk_mem_write_int64(fp_array, j * 8i64, 0i64));
                    drop(fclose(fp));
                } else {
                    any_data = 1i32;
                    while (c >= 0i32) {
                        if (c == 10i32) {
                            c = -1i32; // break
                        } else {
                            drop(nitpick_libc_mem_write_byte(line_buf, line_len, c));
                            line_len = line_len + 1i64;
                            c = fgetc(fp);
                        }
                    }
                    string:line = nitpick_libc_string_from_buf(line_buf, 0i64, line_len);
                    drop(print_str_safe(line));
                }
                drop(nitpick_libc_mem_free(line_buf));
"""
paste_new = re.sub(r'string:line = "";.*?drop\(print_str_safe\(line\)\);\s+\}', paste_arr_logic.strip(), paste_code, flags=re.DOTALL)
with open('src/paste/paste.npk', 'w') as f:
    f.write(paste_new)


with open('src/logname/logname.npk', 'r') as f:
    logname_code = f.read()

logname_arr_logic = """
    int64:username_buf = nitpick_libc_mem_malloc(1024i64);
    int64:username_len = 0i64;
    int64:current_field_buf = nitpick_libc_mem_malloc(1024i64);
    int64:current_field_len = 0i64;
    int64:field_index = 0i64;
    
    int32:c = fgetc(fp);
    while (c >= 0i32) {
        if (c == 10i32) { // newline
            // reset
            username_len = 0i64;
            current_field_len = 0i64;
            field_index = 0i64;
        } else {
            if (c == 58i32) { // colon
                if (field_index == 0i64) {
                    int64:k = 0i64;
                    while (k < current_field_len) {
                        int64:b = nitpick_libc_mem_read_i64(current_field_buf, k) & 255i64;
                        drop(nitpick_libc_mem_write_byte(username_buf, k, @cast_unchecked<int32>(b)));
                        k = k + 1i64;
                    }
                    username_len = current_field_len;
                } else {
                    if (field_index == 2i64) {
                        string:current_field_str = nitpick_libc_string_from_buf(current_field_buf, 0i64, current_field_len);
                        if (string_equals(current_field_str, uid_str)) {
                            // Match!
                            string:username_str = nitpick_libc_string_from_buf(username_buf, 0i64, username_len);
                            drop(print_str_safe(username_str));
                            drop(print_str_safe("\\n"));
                            drop(fclose(fp));
                            exit 0;
                        }
                    }
                }
                current_field_len = 0i64;
                field_index = field_index + 1i64;
            } else {
                drop(nitpick_libc_mem_write_byte(current_field_buf, current_field_len, c));
                current_field_len = current_field_len + 1i64;
            }
        }
        c = fgetc(fp);
    }
"""

logname_new = re.sub(r'string:username = "";.*?c = fgetc\(fp\);\s+\}', logname_arr_logic.strip(), logname_code, flags=re.DOTALL)
with open('src/logname/logname.npk', 'w') as f:
    f.write(logname_new)

print("Fixed paste and logname")
