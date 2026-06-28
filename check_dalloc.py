import os
import re

for root, _, files in os.walk('src'):
    for file in files:
        if file.endswith('.npk'):
            path = os.path.join(root, file)
            with open(path, 'r') as f:
                content = f.read()

            allocs = re.findall(r'int64:([a-zA-Z0-9_]+)\s*=\s*@cast_unchecked<int64>\(alloc\(.*?\)\);', content)
            if allocs:
                for alloc in allocs:
                    if f"dalloc(@cast_unchecked<int8->>({alloc}))" not in content and f"dalloc(@cast_unchecked<wild int8->>({alloc}))" not in content and alloc != "copy" and alloc != "out_buf" and "return " + alloc not in content and "pass " + alloc not in content:
                        print(f"Missing dalloc for {alloc} in {path}")
