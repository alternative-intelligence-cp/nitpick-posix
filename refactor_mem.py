import os
import re

def process_file(filepath):
    with open(filepath, 'r') as f:
        content = f.read()

    # Remove extern declarations
    content = re.sub(r'^extern func:npk_mem_read_byte = .*\n?', '', content, flags=re.MULTILINE)
    content = re.sub(r'^extern func:npk_mem_write_byte = .*\n?', '', content, flags=re.MULTILINE)
    content = re.sub(r'^extern func:npk_mem_read_int32 = .*\n?', '', content, flags=re.MULTILINE)
    content = re.sub(r'^extern func:npk_mem_read_string = .*\n?', '', content, flags=re.MULTILINE)
    content = re.sub(r'^    pub func:npk_mem_read_string = .*\n?', '', content, flags=re.MULTILINE)

    # Replace usages of npk_mem_read_byte
    # npk_mem_read_byte(ptr, offset) -> @cast_unchecked<int64>(<-(@cast_unchecked<int8->>((ptr) + (offset))))
    content = re.sub(r'npk_mem_read_byte\(([^,]+),\s*([^)]+)\)', 
                     r'@cast_unchecked<int64>(<-(@cast_unchecked<int8->>(\1 + \2)))', content)

    # Replace usages of npk_mem_read_int32
    # npk_mem_read_int32(ptr, offset) -> @cast_unchecked<int32>(<-(@cast_unchecked<int32->>((ptr) + (offset))))
    content = re.sub(r'npk_mem_read_int32\(([^,]+),\s*([^)]+)\)', 
                     r'@cast_unchecked<int32>(<-(@cast_unchecked<int32->>(\1 + \2)))', content)

    # Replace usages of npk_mem_write_byte
    # npk_mem_write_byte(ptr, offset, val) -> <-(@cast_unchecked<int8->>((ptr) + (offset))) = @cast_unchecked<int8>(\3)
    content = re.sub(r'npk_mem_write_byte\(([^,]+),\s*([^,]+),\s*([^)]+)\)', 
                     r'(<-(@cast_unchecked<int8->>(\1 + \2)) = @cast_unchecked<int8>(\3))', content)

    # For npk_mem_read_string, we will replace it with a call to a native function we define in mem_utils:
    content = re.sub(r'npk_mem_read_string\(([^,]+),\s*([^)]+)\)', 
                     r'read_string_native(\1, \2)', content)

    with open(filepath, 'w') as f:
        f.write(content)

for root, dirs, files in os.walk('src'):
    for file in files:
        if file.endswith('.npk'):
            process_file(os.path.join(root, file))
