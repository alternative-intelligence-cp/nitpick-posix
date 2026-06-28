import os
import re

for root, _, files in os.walk('src'):
    for file in files:
        if file.endswith('.npk'):
            path = os.path.join(root, file)
            with open(path, 'r') as f:
                content = f.read()

            # Fix `int64:var = alloc(args);`
            new_content = re.sub(
                r'int64:([a-zA-Z0-9_]+)\s*=\s*alloc\((.*?)\);',
                r'int64:\1 = @cast_unchecked<int64>(alloc(\2));',
                content
            )
            # Fix `var = alloc(args);` (without int64:)
            # Wait, `var = alloc(args);` might also need casting if var is int64. Let's just catch them all?
            # It's safer to just do `@cast_unchecked<int64>(alloc(...)` wherever `alloc` is used, unless it's `wild int8->`.
            
            # Let's fix the specific error: `alloc` returning `wild int8->` being assigned to `int64`.
            # What if we just revert `alloc(` back to `npk_malloc(` and write a small wrapper?
            # That's much safer!
            pass
