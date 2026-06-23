import re
import glob

def fix_file(filename):
    with open(filename, 'r') as f:
        text = f.read()
    
    text = re.sub(r'drop\(dalloc\((.*?)\);\s*\}', r'drop(dalloc(\1)); }', text)
    
    with open(filename, 'w') as f:
        f.write(text)

for file in glob.glob('src/**/*.npk', recursive=True):
    fix_file(file)

