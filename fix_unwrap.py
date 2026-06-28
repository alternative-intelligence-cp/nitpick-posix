import os

for root, _, files in os.walk('src'):
    for file in files:
        if file.endswith('.npk'):
            path = os.path.join(root, file)
            with open(path, 'r') as f:
                content = f.read()

            original = content
            content = content.replace('?!', '?')

            if content != original:
                with open(path, 'w') as f:
                    f.write(content)
                print(f"Fixed {path}")
