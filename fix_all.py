import os
import re

src_dir = '/home/randy/Workspace/REPOS/nitpick-posix/src'

for root, _, files in os.walk(src_dir):
    for file in files:
        if file.endswith('.npk'):
            filepath = os.path.join(root, file)
            with open(filepath, 'r') as f:
                content = f.read()
            orig = content

            # Fix uint8-> assignment from int64 cast
            content = content.replace('@cast_unchecked<int64>(data_raw)', '@cast_unchecked<uint8->>(data_raw)')
            content = content.replace('@cast_unchecked<int64>(buf_raw)', '@cast_unchecked<uint8->>(buf_raw)')
            
            # Fix sys(READLINK, path) -> sys(READLINK, path, 0) maybe? Or just use readlink_alloc if it exists?
            # Wait, sys(READLINK) in tty_helper is: sys(READLINK, path). Let's change it to sys(READLINK, path, 0, 0, 0, 0, 0)
            if 'sys!!(READLINK, path)' in content:
                 content = content.replace('sys!!(READLINK, path)', 'sys!!(READLINK, path, 0i64, 0i64, 0i64, 0i64, 0i64)')

            # Fix npk_mem_read_string -> there is no such function. 
            # In pwd_utils, maybe it means sys!!(READLINK) -> wait, no.
            if 'npk_mem_read_string(' in content:
                print(f"File {filepath} has npk_mem_read_string")

            # Fix missing alist import
            if 'alist_push' in content or 'alist_size' in content or 'alist' in content:
                if 'stdlib/alist.npk' not in content:
                    content = content.replace('use "../vendor/libc_ffi.npk".*;\n', 'use "../vendor/libc_ffi.npk".*;\nuse "../stdlib/alist.npk".*;\n')
                    content = content.replace('use "vendor/libc_ffi.npk".*;\n', 'use "vendor/libc_ffi.npk".*;\nuse "stdlib/alist.npk".*;\n')

            # Fix alist function renames
            content = re.sub(r'\balsize\b', 'alist_size', content)
            content = re.sub(r'\balget\b', 'alist_get', content)
            content = re.sub(r'\balremove\b', 'alist_remove', content)
            content = re.sub(r'\balpush\b', 'alist_push', content)

            if content != orig:
                with open(filepath, 'w') as f:
                    f.write(content)
                print(f"Fixed {filepath}")
