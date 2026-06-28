import os

for root, _, files in os.walk('src'):
    for file in files:
        if file.endswith('.npk'):
            path = os.path.join(root, file)
            with open(path, 'r') as f:
                content = f.read()

            original = content
            content = content.replace('sys(LSTAT', 'sys!!(LSTAT')
            content = content.replace('sys(STAT', 'sys!!(STAT')
            content = content.replace('sys(TRUNCATE', 'sys!!(TRUNCATE')
            content = content.replace('sys(STATFS', 'sys!!(STATFS')

            if content != original:
                with open(path, 'w') as f:
                    f.write(content)
                print(f"Fixed {path}")
