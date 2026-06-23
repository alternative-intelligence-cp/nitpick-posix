import os

def process_file(path):
    # skip vendor
    if 'vendor' in path:
        return
        
    with open(path, 'r') as f:
        lines = f.readlines()
        
    out = []
    in_extern = False
    brace_count = 0
    extern_block = []
    modified = False
    
    for line in lines:
        if "extern \"libc\" {" in line:
            in_extern = True
            extern_block = [line]
            brace_count = line.count('{') - line.count('}')
            continue
            
        if in_extern:
            extern_block.append(line)
            brace_count += line.count('{') - line.count('}')
            if brace_count <= 0:
                in_extern = False
                # Filter extern block
                new_block = []
                for b_line in extern_block:
                    if 'func:fopen ' in b_line or 'func:fopen=' in b_line: modified = True; continue
                    if 'func:fgetc ' in b_line or 'func:fgetc=' in b_line: modified = True; continue
                    if 'func:fclose ' in b_line or 'func:fclose=' in b_line: modified = True; continue
                    new_block.append(b_line)
                
                # Check if only empty extern remains
                content = "".join(new_block)
                if content.strip().replace(" ", "").replace("\n", "") == "extern\"libc\"{}":
                    modified = True
                    pass # completely empty block, discard
                else:
                    out.extend(new_block)
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
