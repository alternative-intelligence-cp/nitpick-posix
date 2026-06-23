import re

# Fix mem_utils.npk
with open('src/vendor/mem_utils.npk', 'r') as f:
    text = f.read()
text = text.replace('malloc(len + 1i64));', 'malloc(len + 1i64);')
with open('src/vendor/mem_utils.npk', 'w') as f:
    f.write(text)

# Fix xargs.npk bitwise operators
with open('src/xargs/xargs.npk', 'r') as f:
    text = f.read()

# I had: `= (@cast_unchecked<int64>(c_str) & 255i64 => uint8);`
# It should be: `= ((@cast_unchecked<int64>(c_str) & 255i64) => uint8);`
text = re.sub(r'= \(@cast_unchecked<int64>\(([\w_]+)\)\s*&\s*(\d+i64)\s*=>\s*uint8\);', r'= ((@cast_unchecked<int64>(\1) & \2) => uint8);', text)

with open('src/xargs/xargs.npk', 'w') as f:
    f.write(text)

