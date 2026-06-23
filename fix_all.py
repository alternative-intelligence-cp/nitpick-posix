import re

def fix_file(filename):
    with open(filename, 'r') as f:
        text = f.read()
    
    # Fix any-> to int8->
    text = text.replace('any->:', 'int8->:')
    text = text.replace('any->', 'int8->')
    
    # Fix int64:(var => int64)
    text = re.sub(r'int64:\((\w+)\s*=>\s*int64\)', r'int64:\1', text)
    
    with open(filename, 'w') as f:
        f.write(text)

fix_file('src/xargs/xargs.npk')
fix_file('src/pwd/pwd.npk')
fix_file('src/find/find.npk')
fix_file('src/vendor/buf_reader.npk')
fix_file('src/grep/grep.npk')

