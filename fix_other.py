import re
import glob

def fix_file(filename):
    with open(filename, 'r') as f:
        text = f.read()
    
    # 1. string_from_int
    text = text.replace('drop(print_err(string_from_int(@cast_unchecked<int64>(err)));', 'drop(print_err(string_from_int(@cast_unchecked<int64>(err))));')
    text = text.replace('string_from_int@cast_unchecked<int64>(err))))', 'string_from_int(@cast_unchecked<int64>(err)))')
    
    # 2. function calls where opening paren was eaten
    text = re.sub(r'(\w+)@cast_unchecked<int64>\(([\w_]+)\)', r'\1(@cast_unchecked<int64>(\2)', text)
    
    with open(filename, 'w') as f:
        f.write(text)

for file in glob.glob('src/**/*.npk', recursive=True):
    fix_file(file)

