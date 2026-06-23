import os
import glob

def process_file(path):
    with open(path, 'r') as f:
        lines = f.readlines()
    
    out = []
    in_args_load = False
    brace_count = 0
    modified = False
    
    for line in lines:
        if "func:args_load = string() {" in line and not in_args_load:
            in_args_load = True
            brace_count = line.count('{') - line.count('}')
            modified = True
            continue
            
        if in_args_load:
            brace_count += line.count('{') - line.count('}')
            if brace_count == 0 and "};" in line:
                in_args_load = False
            continue
            
        out.append(line)
        
    if modified:
        with open(path, 'w') as f:
            f.writelines(out)
        print(f"Stripped {path}")

for root, dirs, files in os.walk('src'):
    for file in files:
        if file.endswith('.npk'):
            process_file(os.path.join(root, file))
