import os

tools = ["csplit", "join", "ptx", "tsort", "runcon", "chcon"]
base = "/home/randy/Workspace/REPOS/nitpick-posix/src"

template = """// {tool}.npk

func:print_str_safe = int32(string:s) {{
    int64:len = string_length(s);
    drop(sys(WRITE, 1i64, s, len));
    pass 0i32;
}};

func:failsafe = int32(tbb32:err) {{
    drop(err);
    exit(1i32);
}};

func:main = int32() {{
    drop(print_str_safe("{tool}: Not implemented\\n"));
    exit(1i32);
}};
"""

for tool in tools:
    dir_path = os.path.join(base, tool)
    os.makedirs(dir_path, exist_ok=True)
    file_path = os.path.join(dir_path, f"{tool}.npk")
    with open(file_path, "w") as f:
        f.write(template.format(tool=tool))
    print(f"Created {file_path}")
