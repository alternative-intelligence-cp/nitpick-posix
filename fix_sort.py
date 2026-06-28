import re
with open('src/sort/sort.npk', 'r') as f:
    code = f.read()

code = code.replace('raw strcmp(p_j, pivot_val)', 'strcmp(raw ptr_to_string(p_j), raw ptr_to_string(pivot_val))')

with open('src/sort/sort.npk', 'w') as f:
    f.write(code)
