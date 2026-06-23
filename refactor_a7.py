import os
import re

src_dir = "src"

funcs_to_remove = [
    r'func:print_err\s*=\s*int32\s*\([^)]*\)\s*\{[^}]*\};',
    r'func:print_out\s*=\s*int32\s*\([^)]*\)\s*\{[^}]*\};',
    r'func:print_str_safe\s*=\s*int32\s*\([^)]*\)\s*\{[^}]*\};',
    r'func:ptr_to_string\s*=\s*string\s*\([^)]*\)\s*\{[^}]*\}[\s]*\}[^}]*\};?', # might be complex
    r'func:str_clone\s*=\s*[^\{]+\{[^}]*\}[\s]*\}[^}]*\};?',
]

# Better way to remove functions: parsing curly braces
def remove_functions(content):
    names = ['print_err', 'print_out', 'print_str_safe', 'ptr_to_string', 'str_clone', 'parse_int', 'int_to_str', 'str_to_int']
    for name in names:
        pattern = re.compile(r'func:' + name + r'\s*=\s*[^\{]+\{')
        while True:
            match = pattern.search(content)
            if not match:
                break
            start = match.start()
            brace_count = 1
            i = match.end()
            while i < len(content) and brace_count > 0:
                if content[i] == '{':
                    brace_count += 1
                elif content[i] == '}':
                    brace_count -= 1
                i += 1
            if i < len(content) and content[i] == ';':
                i += 1
            content = content[:start] + content[i:]
    
    # Remove extern func:npk_mem_read_byte and write_byte
    content = re.sub(r'extern\s+func:npk_mem_read_byte[^\n]*\n', '', content)
    content = re.sub(r'extern\s+func:npk_mem_write_byte[^\n]*\n', '', content)
    
    return content

def update_failsafe(content):
    # Match func:failsafe = int32(tbb32:err) { ... };
    pattern = re.compile(r'func:failsafe\s*=\s*int32\s*\(tbb32:err\)\s*\{[^}]*\};', re.MULTILINE | re.DOTALL)
    new_failsafe = """func:failsafe = int32(tbb32:err) {
    drop(print_err("Fatal Error: code "));
    drop(print_err(string_from_int(err => int64)));
    drop(print_err("\\n"));
    exit 1;
};"""
    content = pattern.sub(new_failsafe, content)
    return content

for root, dirs, files in os.walk(src_dir):
    for file in files:
        if not file.endswith('.npk'):
            continue
        path = os.path.join(root, file)
        
        # skip vendor files
        if "vendor/" in path:
            continue
            
        with open(path, 'r') as f:
            content = f.read()
            
        orig_content = content
        
        # 1. Remove boilerplate
        content = remove_functions(content)
        
        # 2. Add use statements
        if 'func:main' in content:
            if 'use "../vendor/io_utils.npk".*;' not in content and 'use "vendor/io_utils.npk".*;' not in content:
                # find best place to insert (after last use or before first func)
                if 'use ' in content:
                    last_use = content.rfind('use ')
                    next_newline = content.find(';', last_use) + 1
                    
                    # check depth to vendor
                    depth = path.count('/') - 1
                    rel_path = "../" * depth + "vendor/io_utils.npk"
                    rel_path2 = "../" * depth + "vendor/mem_utils.npk"
                    
                    insert_str = f'\nuse "{rel_path}".*;\nuse "{rel_path2}".*;\n'
                    content = content[:next_newline] + insert_str + content[next_newline:]
                else:
                    depth = path.count('/') - 1
                    rel_path = "../" * depth + "vendor/io_utils.npk"
                    rel_path2 = "../" * depth + "vendor/mem_utils.npk"
                    
                    insert_str = f'use "{rel_path}".*;\nuse "{rel_path2}".*;\n'
                    func_idx = content.find('func:')
                    if func_idx != -1:
                        content = content[:func_idx] + insert_str + content[func_idx:]
        
        # 3. Rename parse_int -> string_to_int and int_to_str -> string_from_int
        content = re.sub(r'\bparse_int\b', 'string_to_int', content)
        content = re.sub(r'\bstr_to_int\b', 'string_to_int', content)
        content = re.sub(r'\bint_to_str\b', 'string_from_int', content)
        
        # 4. Update failsafe
        content = update_failsafe(content)
        
        if orig_content != content:
            with open(path, 'w') as f:
                f.write(content)
            print(f"Updated {path}")
