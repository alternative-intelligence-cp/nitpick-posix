import re
import glob

def clean(filename):
    with open(filename, 'r') as f:
        text = f.read()
    
    # 1. Restore uint8
    text = text.replace('uany', 'uint8')
    
    # 2. Restore (XXX => int64)
    # Be careful, we only want to restore @cast_unchecked<int64>(XXX) to (XXX => int64)
    text = re.sub(r'@cast_unchecked<int64>\(([\w_]+)\)', r'(\1 => int64)', text)
    
    # 3. Restore malloc
    text = text.replace('m@cast_unchecked<any->>(alloc', 'malloc')
    
    # 4. Restore dalloc issues
    text = text.replace('drop(dalloc(argv_ptr)); }', 'drop(dalloc(argv_ptr))); }') # wait, no, drop(dalloc(var)); is correct!
    # But wait, earlier I had `drop(dalloc(var)); }` which is correct, but the original was `drop(dalloc(var)); }`. Let's ensure it's `drop(dalloc(var)); }`
    text = re.sub(r'drop\(dalloc\(([\w_]+)\)\)\)+;\s*\}', r'drop(dalloc(\1)); }', text)
    text = re.sub(r'drop\(dalloc\(([\w_]+)\)\);\s*\}', r'drop(dalloc(\1)); }', text)

    # 5. Restore int64-> cast for assignments
    # Currently it is `@cast_unchecked<int64->>(...)[0] = ...`
    # Let's change it back to `<- (@cast_unchecked<int64->>(...)) = ...`
    text = re.sub(r'@cast_unchecked<int64->>\((.*?)\)\[0\]\s*=', r'<- (@cast_unchecked<int64->>(\1)) =', text)
    
    # 6. Revert array indexing [0] on uint8-> to pointer deref <-
    text = re.sub(r'@cast_unchecked<uint8->>\((.*?)\)\[0\]\s*=', r'<- (@cast_unchecked<uint8->>(\1)) =', text)
    
    # 7. Function call parens
    # string_from_int(err => int64) should be correct now because of step 2.
    
    # 8. Check any remaining @cast_unchecked<any->>(alloc(...))
    # It should be alloc(...)
    text = re.sub(r'@cast_unchecked<any->>\(alloc\((.*?)\)\)', r'alloc(\1)', text)
    
    with open(filename, 'w') as f:
        f.write(text)

for file in glob.glob('src/**/*.npk', recursive=True):
    clean(file)

