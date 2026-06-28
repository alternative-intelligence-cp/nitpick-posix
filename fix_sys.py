import os
import re

with open('src/vendor/sys_constants.npk', 'r') as f:
    constants = [line.split(':')[1].split(' ')[0] for line in f if 'pub int64:' in line]

for root, _, files in os.walk('src'):
    for file in files:
        if file.endswith('.npk'):
            path = os.path.join(root, file)
            with open(path, 'r') as f:
                content = f.read()

            original = content
            for const in constants:
                content = content.replace('SYS_' + const, const)

            # Fix literal syscalls
            content = re.sub(r'sys!!\(6i64\b', 'sys!!(LSTAT', content)
            content = re.sub(r'sys!!\(8i64\b', 'sys!!(LSEEK', content)
            content = re.sub(r'sys!!\(75i64\b', 'sys!!(FDATASYNC', content)
            content = re.sub(r'sys!!\(4i64\b', 'sys!!(STAT', content)
            content = re.sub(r'sys!!\(76i64\b', 'sys!!(TRUNCATE', content)
            content = re.sub(r'sys!!\(162i64\b', 'sys!!(SYNC', content)
            content = re.sub(r'sys!!\(16i64\b', 'sys!!(IOCTL', content)
            content = re.sub(r'sys!!\(35i64\b', 'sys!!(NANOSLEEP', content)
            content = re.sub(r'sys!!\(133i64\b', 'sys!!(MKNOD', content)

            # Change safe-tier syscalls to sys() instead of sys!!()
            content = content.replace('sys!!(LSTAT', 'sys(LSTAT')
            content = content.replace('sys!!(STAT', 'sys(STAT')
            content = content.replace('sys!!(TRUNCATE', 'sys(TRUNCATE')
            content = content.replace('sys!!(SYNC', 'sys(SYNC')
            content = content.replace('sys!!(LSEEK', 'sys(LSEEK')
            content = content.replace('sys!!(FDATASYNC', 'sys(FDATASYNC')

            if content != original:
                with open(path, 'w') as f:
                    f.write(content)
                print(f"Fixed {path}")
