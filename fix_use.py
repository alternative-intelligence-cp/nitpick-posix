import os
import re

for root, dirs, files in os.walk('src'):
    for file in files:
        if not file.endswith('.npk'): continue
        if "vendor/" in os.path.join(root, file): continue
        path = os.path.join(root, file)
        
        with open(path, 'r') as f:
            content = f.read()
            
        orig = content
        
        # remove existing inserted use statements
        depth = path.count('/') - 1
        rel_path = "../" * depth + "vendor/io_utils.npk"
        rel_path2 = "../" * depth + "vendor/mem_utils.npk"
        
        content = content.replace(f'use "{rel_path}".*;\n', '')
        content = content.replace(f'use "{rel_path2}".*;\n', '')
        content = content.replace(f'    use "{rel_path}".*;\n', '')
        
        # insert at the top (after any comments)
        lines = content.split('\n')
        insert_idx = 0
        for i, line in enumerate(lines):
            if line.strip() == '' or line.strip().startswith('//'):
                continue
            insert_idx = i
            break
            
        lines.insert(insert_idx, f'use "{rel_path}".*;')
        lines.insert(insert_idx+1, f'use "{rel_path2}".*;')
        
        content = '\n'.join(lines)
        if content != orig:
            with open(path, 'w') as f:
                f.write(content)
            print(f"Fixed {path}")
