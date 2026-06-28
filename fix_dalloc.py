import os
import re

for root, _, files in os.walk('src'):
    for file in files:
        if file.endswith('.npk'):
            path = os.path.join(root, file)
            with open(path, 'r') as f:
                content = f.read()

            original = content
            
            content = content.replace("blake2b_dalloc(", "blake2b_free(")
            content = content.replace("io_buf_dalloc(", "io_buf_free(")
            content = content.replace("md5_dalloc(", "md5_free(")
            content = content.replace("sha1_dalloc(", "sha1_free(")
            content = content.replace("sha256_dalloc(", "sha256_free(")
            content = content.replace("str_split_dalloc(", "str_split_free(")
            content = content.replace("regdalloc(", "regfree(")
            content = content.replace("fake_dalloc(", "dalloc(")

            if content != original:
                with open(path, 'w') as f:
                    f.write(content)
                print(f"Fixed {path}")
