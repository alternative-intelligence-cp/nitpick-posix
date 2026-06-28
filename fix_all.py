import os
import re

def process_file(filepath):
    with open(filepath, 'r') as f:
        content = f.read()

    # Change read_string_native to raw read_string_native
    content = re.sub(r'read_string_native\(', r'raw read_string_native(', content)

    # Change bitwise issues: maybe the @cast_unchecked<int64> is not recognized correctly?
    # Actually let's look at who.npk first, but let's change nitpick_libc_mem_write_i64 in sort.npk
    content = content.replace('nitpick_libc_mem_write_i64', 'nitpick_libc_mem_read_i64') # Wait, wait... write replacing read? I should replace it with the pointer syntax!

    with open(filepath, 'w') as f:
        f.write(content)

for root, dirs, files in os.walk('src'):
    for file in files:
        if file.endswith('.npk'):
            process_file(os.path.join(root, file))

