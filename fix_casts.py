import os
import re

for root, _, files in os.walk('src'):
    for file in files:
        if file.endswith('.npk'):
            path = os.path.join(root, file)
            with open(path, 'r') as f:
                content = f.read()

            original = content
            
            # fix `int64:x = alloc(y)` -> `int64:x = @cast_unchecked<int64>(alloc(y))`
            content = re.sub(
                r'int64:([a-zA-Z0-9_]+)\s*=\s*alloc\((.*?)\);',
                r'int64:\1 = @cast_unchecked<int64>(alloc(\2));',
                content
            )
            
            # fix `x = alloc(y)` where x is not preceded by a type
            content = re.sub(
                r'^(\s*)([a-zA-Z0-9_]+)\s*=\s*alloc\((.*?)\);',
                r'\1\2 = @cast_unchecked<int64>(alloc(\3));',
                content,
                flags=re.MULTILINE
            )

            # fix `dalloc(x)` -> `dalloc(@cast_unchecked<wild int8->>(x))`
            # avoid double casting if already casted or if it's already a ptr
            # wait, let's just find `dalloc(` and see.
            content = re.sub(
                r'dalloc\((?!@cast_unchecked)(.*?)\)',
                r'dalloc(@cast_unchecked<wild int8->>(\1))',
                content
            )

            if content != original:
                with open(path, 'w') as f:
                    f.write(content)
                print(f"Fixed {path}")
