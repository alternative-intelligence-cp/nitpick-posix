import re
import glob

def fix_file(filename):
    with open(filename, 'r') as f:
        text = f.read()
    
    # Fix malloc with too many parens
    text = re.sub(r'malloc\((.*?)\)\)+;', r'malloc(\1);', text)
    
    with open(filename, 'w') as f:
        f.write(text)

for file in glob.glob('src/**/*.npk', recursive=True):
    fix_file(file)

