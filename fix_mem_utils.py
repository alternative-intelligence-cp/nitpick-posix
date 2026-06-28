with open('src/vendor/mem_utils.npk', 'r') as f:
    content = f.read()

func = """
pub func:read_string_native = string(int64:ptr, int64:max_len) {
    string:s = "";
    int64:i = 0i64;
    while (i < max_len) {
        int64:c = @cast_unchecked<int64>(<-(@cast_unchecked<int8->>((ptr) + (i))));
        if (c == 0i64) {
            pass s;
        }
        s = string_concat(s, string_from_char(@cast_unchecked<int8>(c)));
        i = i + 1i64;
    }
    pass s;
};
"""

content += "\n" + func
with open('src/vendor/mem_utils.npk', 'w') as f:
    f.write(content)
