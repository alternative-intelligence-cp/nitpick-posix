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

            # Fix mem_read_byte_int64
            content = re.sub(r'raw\s+mem_read_byte_int64', 'npk_mem_read_byte', content)
            content = re.sub(r'mem_write_byte_int64', 'npk_mem_write_byte', content)

            # Fix safe_mem_read_byte with its casts
            # We have patterns like: raw safe_mem_read_byte(cast_unchecked<uint8->>(p), 0i64)
            # We want to change to: npk_mem_read_byte(p, 0i64)
            content = re.sub(r'raw\s+safe_mem_read_byte\(cast_unchecked<uint8->>\(([^)]+)\),\s*([^)]+)\)', r'npk_mem_read_byte(\1, \2)', content)
            
            # Same for @cast_unchecked<uint8->>(buf) -> buf
            content = re.sub(r'raw\s+safe_mem_read_byte\(@cast_unchecked<uint8->>\(([^)]+)\),\s*([^)]+)\)', r'npk_mem_read_byte(\1, \2)', content)

            # Fix safe_mem_write_byte
            content = re.sub(r'safe_mem_write_byte\(cast_unchecked<uint8->>\(([^)]+)\),\s*([^,]+),\s*(.+?)\)', r'npk_mem_write_byte(\1, \2, \3)', content)

            # Fix nitpick_libc_mem_write_i64
            if 'nitpick_libc_mem_write_i64(t_buf, 0i64, t);' in content:
                content = content.replace('nitpick_libc_mem_write_i64(t_buf, 0i64, t);', 
'''npk_mem_write_byte(t_buf, 0i64, t & 255i64);
    npk_mem_write_byte(t_buf, 1i64, (t / 256i64) & 255i64);
    npk_mem_write_byte(t_buf, 2i64, (t / 65536i64) & 255i64);
    npk_mem_write_byte(t_buf, 3i64, (t / 16777216i64) & 255i64);
    npk_mem_write_byte(t_buf, 4i64, (t / 4294967296i64) & 255i64);
    npk_mem_write_byte(t_buf, 5i64, (t / 1099511627776i64) & 255i64);
    npk_mem_write_byte(t_buf, 6i64, (t / 281474976710656i64) & 255i64);
    npk_mem_write_byte(t_buf, 7i64, (t / 72057594037927936i64) & 255i64);''')

            # Fix alist variables and imports
            if file in ['users.npk', 'who.npk']:
                if 'use "../stdlib/alist.npk".*;' not in content:
                    content = content.replace('use "../vendor/libc_ffi.npk".*;\n', 'use "../vendor/libc_ffi.npk".*;\nuse "../stdlib/alist.npk".*;\n')
            
            # Fix alist functions
            content = re.sub(r'\balsize\b', 'alist_size', content)
            content = re.sub(r'\balget\b', 'alist_get', content)
            content = re.sub(r'\balremove\b', 'alist_remove', content)
            content = re.sub(r'\balpush\b', 'alist_push', content)

            if content != orig:
                with open(filepath, 'w') as f:
                    f.write(content)
                print(f"Fixed {filepath}")
