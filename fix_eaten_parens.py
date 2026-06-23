import re
import glob

def fix_file(filename):
    with open(filename, 'r') as f:
        text = f.read()
    
    text = text.replace('@cast_unchecked<uint8->>@cast_unchecked', '@cast_unchecked<uint8->>(@cast_unchecked')
    text = text.replace('@cast_unchecked<int64->>@cast_unchecked', '@cast_unchecked<int64->>(@cast_unchecked')
    
    with open(filename, 'w') as f:
        f.write(text)

for file in glob.glob('src/**/*.npk', recursive=True):
    fix_file(file)

