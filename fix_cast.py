import re
import glob

def fix_file(filename):
    with open(filename, 'r') as f:
        text = f.read()
    
    text = re.sub(r'\(([\w_]+)\s*=>\s*int64\)', r'@cast_unchecked<int64>(\1)', text)
    
    with open(filename, 'w') as f:
        f.write(text)

for file in glob.glob('src/**/*.npk', recursive=True):
    fix_file(file)

