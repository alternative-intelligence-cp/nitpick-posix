import os
import re

path = 'src/expr/expr.npk'
with open(path, 'r') as f:
    content = f.read()

# Replace failsafe() with pass 2i32 / pass 3i32
content = re.sub(r'drop\(failsafe\(@cast_unchecked<tbb32>\((2i32)\)\)\);', r'pass 2i32;', content)
content = re.sub(r'drop\(failsafe\(@cast_unchecked<tbb32>\((3i32)\)\)\);', r'pass 3i32;', content)

# There are also drops of failsafe followed by pass 0i64?
# "drop(failsafe(@cast_unchecked<tbb32>(2i32))); pass 0i64;" -> we should just replace "drop(failsafe(..)); pass 0i64;" with "pass 2i32;" ?
# The function is expr_main which returns int32. Wait, `pass 0i64` in expr_main? No, expr_eval returns int64 maybe? Let's check expr.npk
with open(path, 'w') as f:
    f.write(content)
