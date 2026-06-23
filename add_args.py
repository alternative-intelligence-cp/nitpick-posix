import os

def process_file(path):
    if 'vendor' in path: return
    with open(path, 'r') as f:
        content = f.read()
        
    if 'args_load' in content and 'nitpick_args.npk' not in content:
        lines = content.split('\n')
        out = []
        inserted = False
        for line in lines:
            out.append(line)
            if not inserted and ('extern' in line and '}' in line or 'use ' in line):
                out.append('use "../vendor/nitpick_args.npk".*;')
                inserted = True
                
        if not inserted:
            out.insert(1, 'use "../vendor/nitpick_args.npk".*;')
            
        with open(path, 'w') as f:
            f.write('\n'.join(out))
        print(f"Added nitpick_args to {path}")

for root, dirs, files in os.walk('src'):
    for file in files:
        if file.endswith('.npk'):
            process_file(os.path.join(root, file))
