import re
import glob

def fix_file(filename):
    with open(filename, 'r') as f:
        text = f.read()
    
    # Fix alloc but ignore malloc and dalloc
    text = re.sub(r'(?<![a-zA-Z0-9_])alloc\((.*?)\)', r'@cast_unchecked<any->>(alloc(\1))', text)
    
    with open(filename, 'w') as f:
        f.write(text)

for file in glob.glob('src/**/*.npk', recursive=True):
    fix_file(file)

