import re
import glob

def fix_file(filename):
    with open(filename, 'r') as f:
        text = f.read()
    
    # Fix missing open parens for nested casts
    text = re.sub(r'@cast_unchecked<([\w\-]+)>\s*@cast_unchecked', r'@cast_unchecked<\1>(@cast_unchecked', text)
    
    # Fix string_from_int
    text = text.replace('string_from_int@cast_unchecked<int64>(err))))', 'string_from_int(@cast_unchecked<int64>(err)))')
    text = text.replace('string_from_int@cast_unchecked<int64>(err)))', 'string_from_int(@cast_unchecked<int64>(err)))')
    
    # Check for unmatched parens
    # Let's fix lines like `<- (@cast_unchecked<uint8->>(@cast_unchecked<int64>(argv_ptr) + offset)) = @cast_unchecked<int64>(c_str) & 255i64 => uint8);`
    # That line has `uint8);` at the end which means it has an extra `)`.
    # Original line: `<-((argv_ptr => int64) + offset => uint8*) = (c_str => int64 & 255i64 => uint8);`
    # It should be `<- (@cast_unchecked<uint8->>(@cast_unchecked<int64>(argv_ptr) + offset)) = (@cast_unchecked<int64>(c_str) & 255i64 => uint8);`
    text = re.sub(r'= @cast_unchecked<int64>\(([\w_]+)\)\s*&\s*(\d+i64)\s*=>\s*uint8\);', r'= (@cast_unchecked<int64>(\1) & \2 => uint8);', text)
    text = re.sub(r'= @cast_unchecked<int64>\(([\w_]+)\)\s*/\s*(\d+i64)\)\s*=>\s*uint8\s*&\s*255i64\);', r'= ((@cast_unchecked<int64>(\1) / \2) => uint8 & 255i64);', text)

    # For `int64:b0 = (<- (@cast_unchecked<uint8->>(@cast_unchecked<int64>(argv_ptr) + 0i64))) => int64;`
    # The `))) => int64;` is correct since we have `( <- ( @cast ( @cast (argv) + 0 ) ) ) => int64`
    # `( <- ( @cast ( @cast (argv) + 0 ) ) ) => int64` has 4 open and 4 close parens. Wait.
    # `( <- ( @cast<uint8->> ( @cast<int64>(argv_ptr) + 0i64 ) ) ) => int64`
    # `( <- ( @cast<uint8->> ( @cast<int64>(argv_ptr) + 0i64 ) ) )`
    # 1 open before <-, 1 open before @cast<uint8->>, 1 open before @cast<int64>, 1 close after argv_ptr, 1 close after 0i64, 1 close for @cast<uint8->>, 1 close for <-, 1 close for outer.
    # Let's count:
    # 1. `(`
    # 2. `<- (`
    # 3. `@cast<uint8->> (`
    # 4. `@cast<int64>(argv_ptr)` -> this closes itself.
    # `+ 0i64`
    # 5. `)` closes `@cast<uint8->> (`
    # 6. `)` closes `<- (`
    # 7. `)` closes outer `(`
    # So `(<- (@cast_unchecked<uint8->>(@cast_unchecked<int64>(argv_ptr) + 0i64))) => int64;` is PERFECT!

    with open(filename, 'w') as f:
        f.write(text)

for file in glob.glob('src/**/*.npk', recursive=True):
    fix_file(file)

