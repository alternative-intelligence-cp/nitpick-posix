import sys
import re

files = [
    "src/mknod/mknod.npk",
    "src/grep/grep.npk",
    "src/dd/test_args.npk",
    "src/find/find.npk",
    "src/cal/cal.npk",
    "src/xargs/xargs.npk",
    "src/pathchk/pathchk.npk"
]

for f in files:
    try:
        with open(f, "r") as fp:
            content = fp.read()
    except Exception as e:
        print(f"Error reading {f}: {e}")
        continue
    
    if "args_load" in content:
        print(f"Skipping {f}, already uses args_load")
        continue

    # Add the use statement near the top if not present
    if "use \"../vendor/nitpick_args.npk\".*;" not in content:
        # Find the first use statement
        use_match = re.search(r'use ".*?";', content)
        if use_match:
            content = content[:use_match.start()] + 'use "../vendor/nitpick_args.npk".*;\n' + content[use_match.start():]
        else:
            # no use statement, just add after first func:
            func_match = re.search(r'func:', content)
            if func_match:
                content = content[:func_match.start()] + 'use "../vendor/nitpick_args.npk".*;\n\n' + content[func_match.start():]
    
    # Replace get_argc() and get_argv(...)
    content = content.replace("get_argc()", "(raw args_count(args) + 1i32)")
    content = re.sub(r'get_argv\((.*?)\)', r'raw args_at(args, \1)', content)
    
    # Inject string:args = raw args_load(); at the beginning of func:main
    main_match = re.search(r'func:main\s*=\s*int32\(\)\s*{', content)
    if main_match:
        idx = main_match.end()
        content = content[:idx] + '\n    string:args = raw args_load();' + content[idx:]
    
    with open(f, "w") as fp:
        fp.write(content)
    print(f"Refactored {f}")
