import re
import glob

def fix_file(filename):
    with open(filename, 'r') as f:
        text = f.read()
    
    text = re.sub(r'(\w+)@cast_unchecked<int64>\(([\w_]+)\)', r'\1(@cast_unchecked<int64>(\2))', text)
    
    with open(filename, 'w') as f:
        f.write(text)

for file in glob.glob('src/**/*.npk', recursive=True):
    fix_file(file)

