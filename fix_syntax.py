import re
import glob

def fix_file(filename):
    with open(filename, 'r') as f:
        text = f.read()
    
    # uint8 -> uany
    text = text.replace('uint8', 'uany')
    
    # => int64-> to @cast_unchecked<int64->>
    text = re.sub(r'<\-\(\((.*?)\)\s*=>\s*int64->\)', r'@cast_unchecked<int64->>(\1)[0]', text)
    # also handle <-( ... => int64-> )
    text = re.sub(r'<\-\((.*?)\s*=>\s*int64->\)', r'@cast_unchecked<int64->>(\1)[0]', text)

    # Some remaining '=> int64' that should be cast_unchecked, wait. The previous script fixed (XXX => int64) to @cast_unchecked<int64>(XXX).
    # But [0] => int64 is a safe cast! So it's fine.
    
    with open(filename, 'w') as f:
        f.write(text)

for file in glob.glob('src/**/*.npk', recursive=True):
    fix_file(file)

