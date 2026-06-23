import os
import re

sleep_failsafe = """func:failsafe = int32(tbb32:err) {
    drop(print_err("Fatal Error: code "));
    
    astack 64i64;
    int64:e = err => int64;
    int64:len = 0i64;
    if (e == 0i64) {
        apush(48i64);
        len = 1i64;
    } else {
        while (e > 0i64) {
            apush((e % 10i64) + 48i64);
            e = e / 10i64;
            len = len + 1i64;
        }
    }
    
    while (len > 0i64) {
        int64:c = apop();
        drop(sys!!(1i64, 2i64, string_from_char(@cast_unchecked<int8>(c)), 1i64));
        len = len - 1i64;
    }
    
    drop(sys!!(1i64, 2i64, "\n", 1i64));
    exit 1;
};"""

regex = re.compile(r'func:failsafe = int32\(tbb32:err\) \{.*?\};\n', re.DOTALL)

for root, dirs, files in os.walk('src'):
    for f in files:
        if f.endswith('.npk') and f != 'sleep.npk':
            path = os.path.join(root, f)
            with open(path, 'r') as fp:
                content = fp.read()
            new_content = regex.sub(sleep_failsafe + '\n', content)
            if new_content != content:
                with open(path, 'w') as fp:
                    fp.write(new_content)
                print(f"Fixed failsafe in {path}")
