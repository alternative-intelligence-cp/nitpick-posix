import re
import glob

def fix_file(filename):
    with open(filename, 'r') as f:
        text = f.read()
    
    # Replace (X => int64) with @cast_unchecked<int64>(X) for all known pointer variables
    for var in ['c_str', 'argv_ptr', 'buf', 'token_buf', 'envp', 'fb_cmd', 'err']:
        # Match (var => int64) with possible spaces and extra parens around var
        text = re.sub(r'\(\s*\(*(?:'+var+r')\)*\s*=>\s*int64\)', f'@cast_unchecked<int64>({var})', text)
    
    # Also handle (((token_buf => int64)) => int64 + (k))
    text = text.replace('((((token_buf => int64)) => int64 + (k))', '(@cast_unchecked<int64>(token_buf) + k)')
    # Since I just replaced (token_buf => int64) in the loop, let's fix any weird remaining ones:
    text = re.sub(r'\(\s*\(\s*@cast_unchecked<int64>\(([\w_]+)\)\s*\)\s*=>\s*int64', r'@cast_unchecked<int64>(\1)', text)
    
    with open(filename, 'w') as f:
        f.write(text)

for file in glob.glob('src/**/*.npk', recursive=True):
    fix_file(file)

