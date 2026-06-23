import os
import re

def process_file(filepath):
    with open(filepath, 'r') as f:
        content = f.read()

    original_content = content
    
    # 1. Refactor alloc()
    alloc_pattern = re.compile(r'int64:\s*([a-zA-Z0-9_]+)\s*=\s*@cast_unchecked<int64>\(alloc\(([^)]+)\)\);')
    allocs = alloc_pattern.findall(content)
    
    for var_name, alloc_arg in allocs:
        # replace declaration
        decl_old = f'int64:{var_name} = @cast_unchecked<int64>(alloc({alloc_arg}));'
        decl_new = f'any->:{var_name} = alloc({alloc_arg});\n    defer {{ drop(dalloc({var_name})); }}'
        content = content.replace(decl_old, decl_new)
        
        # replace manual dallocs
        content = re.sub(rf'drop\(\s*dalloc\(\s*@cast_unchecked<any->>\(\s*{var_name}\s*\)\s*\)\s*\);?', '', content)
        content = re.sub(rf'dalloc\(\s*@cast_unchecked<any->>\(\s*{var_name}\s*\)\s*\);?', '', content)
        
        # Now replace usages of var_name
        parts = re.split(rf'\b{var_name}\b', content)
        new_content = parts[0]
        for i in range(1, len(parts)):
            prev_part = parts[i-1]
            next_part = parts[i]
            
            should_replace = True
            if prev_part.endswith('any->:'):
                should_replace = False
            elif prev_part.endswith('dalloc('):
                should_replace = False
            elif next_part.lstrip().startswith('=> int64'):
                should_replace = False
                
            if should_replace:
                new_content += f'({var_name} => int64)' + next_part
            else:
                new_content += f'{var_name}' + next_part
        content = new_content

    # 2. Refactor sys(OPEN)
    open_pattern2 = re.compile(r'(?:int64:)?\s*([a-zA-Z0-9_]+)\s*=\s*(?:raw\()?\s*sys\(OPEN,\s*([^)]+)\)\)?(?:\s*\?\s*-1i64)?;')
    
    lines = content.split('\n')
    new_lines = []
    for line in lines:
        new_lines.append(line)
        m = open_pattern2.search(line)
        if m:
            fd_name = m.group(1)
            # Add defer right after this line
            indent = line[:len(line) - len(line.lstrip())]
            new_lines.append(f'{indent}defer {{ drop(sys(CLOSE, {fd_name})); }}')
            
    final_lines = []
    for line in new_lines:
        if 'sys(CLOSE' in line and 'defer' not in line:
            # check if it's closing a file descriptor we matched
            matched_fd = False
            for fd_name, _ in open_pattern2.findall(original_content):
                if f'sys(CLOSE, {fd_name})' in line:
                    matched_fd = True
                    break
            if matched_fd:
                continue
        final_lines.append(line)
        
    content = '\n'.join(final_lines)

    if content != original_content:
        with open(filepath, 'w') as f:
            f.write(content)
        print(f"Refactored {filepath}")

for root, _, files in os.walk('src'):
    for file in files:
        if file.endswith('.npk'):
            process_file(os.path.join(root, file))
