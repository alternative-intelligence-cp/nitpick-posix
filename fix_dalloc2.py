import os
import re

for root, dirs, files in os.walk('src'):
    for f in files:
        if f.endswith('.npk'):
            path = os.path.join(root, f)
            with open(path, 'r') as fp:
                code = fp.read()
            
            # Change drop(dalloc(ptr)) to nitpick_libc_mem_free(ptr)
            # Actually, the auditor said:
            # Change drop(dalloc(...)) to free(...) inside every defer block across the entire project.
            
            code = re.sub(r'drop\(dalloc\((.*?)\)\)', r'free(\1)', code)
            
            with open(path, 'w') as fp:
                fp.write(code)

print("Fixed dalloc globals!")
