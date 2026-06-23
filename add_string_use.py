import os

for root, dirs, files in os.walk('src'):
    for file in files:
        if file.endswith('.npk'):
            path = os.path.join(root, file)
            with open(path, 'r') as f:
                content = f.read()
            if 'nitpick_args.npk' in content and 'stdlib/string.npk' not in content:
                lines = content.split('\n')
                out = []
                inserted = False
                for line in lines:
                    if 'nitpick_args.npk' in line and not inserted:
                        out.append('use "stdlib/string.npk".*;')
                        inserted = True
                    out.append(line)
                with open(path, 'w') as f:
                    f.write('\n'.join(out))
                print(f"Added string to {path}")
