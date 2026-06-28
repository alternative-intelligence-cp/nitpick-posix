import os
import re

for root, _, files in os.walk('src'):
    for file in files:
        if file.endswith('.npk'):
            path = os.path.join(root, file)
            with open(path, 'r') as f:
                content = f.read()

            original = content
            
            content = content.replace("@cast_unchecked<wild int8->>", "@cast_unchecked<int8->>")

            if content != original:
                with open(path, 'w') as f:
                    f.write(content)
                print(f"Fixed {path}")
