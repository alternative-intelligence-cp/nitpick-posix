import re

filename = 'src/xargs/xargs.npk'
with open(filename, 'r') as f:
    text = f.read()

# 1. Fix missing paren in string_from_int
text = text.replace('drop(print_err(string_from_int(@cast_unchecked<int64>(err)));', 'drop(print_err(string_from_int(@cast_unchecked<int64>(err))));')

# 2. Fix + j)))
text = text.replace('+ j))) =', '+ j)) =')

# 3. Fix + offset + ...)))
text = re.sub(r'\+\s*offset\s*\+\s*(\d+i64)\)\)\)\s*=', r'+ offset + \1)) =', text)

# 4. Fix butchered token_buf line (lines 91 and 126 have the same issue)
# Original pattern to replace:
# <- (@cast_unchecked<uint8->>(@cast_unchecked<int64>(c_str) + k)) = @cast_unchecked<int64>(token_buf)) => int64 + (k)) => uint8->)[0] => int64 => uint8);
# Let's just use a regex that matches the LHS and replaces the whole line
text = re.sub(r'<-\s*\(@cast_unchecked<uint8->>\(@cast_unchecked<int64>\(c_str\)\s*\+\s*k\)\)\s*=\s*.*?;', 
              r'<- (@cast_unchecked<uint8->>(@cast_unchecked<int64>(c_str) + k)) = <- (@cast_unchecked<uint8->>(@cast_unchecked<int64>(token_buf) + k));', 
              text)

with open(filename, 'w') as f:
    f.write(text)

