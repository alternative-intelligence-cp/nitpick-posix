import os

def replace_failsafe(content):
    idx = content.find('func:failsafe')
    if idx == -1: return content
    
    start = content.find('{', idx)
    if start == -1: return content
    
    brace_count = 1
    i = start + 1
    while i < len(content) and brace_count > 0:
        if content[i] == '{': brace_count += 1
        elif content[i] == '}': brace_count -= 1
        i += 1
        
    if brace_count == 0:
        end = i
        if end < len(content) and content[end] == ';':
            end += 1
            
        new_failsafe = '''func:failsafe = int32(tbb32:err) {
    drop(standard_failsafe(err));
    exit 1;
};'''
        return content[:idx] + new_failsafe + content[end:]
    return content

def process_file(filepath):
    with open(filepath, 'r') as f:
        content = f.read()

    original = content

    while 'func:failsafe' in content and 'standard_failsafe' not in content:
        new_c = replace_failsafe(content)
        if new_c == content: break
        content = new_c

    idx = content.find('func:args_load =')
    if idx != -1:
        start = content.find('{', idx)
        if start != -1:
            brace_count = 1
            i = start + 1
            while i < len(content) and brace_count > 0:
                if content[i] == '{': brace_count += 1
                elif content[i] == '}': brace_count -= 1
                i += 1
            if brace_count == 0:
                end = i
                if end < len(content) and content[end] == ';': end += 1
                if end < len(content) and content[end] == '\n': end += 1
                content = content[:idx] + content[end:]

    content = content.replace('func:main = int32() {', 'func:main = int32(int32:argc, wild int8->:argv) {')
    content = content.replace('string:args = raw args_load();', 'string:args = raw args_load_native(argc, argv);')

    if 'io_utils.npk' not in content and 'func:failsafe' in content:
        depth = filepath.count('/') - filepath.find('src/') - 1
        if depth >= 1:
            rel = '../vendor/io_utils.npk'
        else:
            rel = 'vendor/io_utils.npk'
            
        use_stmt = f'use "{rel}".*;\n'
        
        lines = content.split('\n')
        insert_idx = 1
        for i, line in enumerate(lines):
            if line.startswith('use '):
                insert_idx = i + 1
        
        lines.insert(insert_idx, use_stmt)
        content = '\n'.join(lines)

    if content != original:
        with open(filepath, 'w') as f:
            f.write(content)
        print(f"Updated {filepath}")

def main():
    src_dir = 'src'
    for root, dirs, files in os.walk(src_dir):
        for file in files:
            if file.endswith('.npk') and 'vendor' not in root:
                process_file(os.path.join(root, file))

if __name__ == "__main__":
    main()
