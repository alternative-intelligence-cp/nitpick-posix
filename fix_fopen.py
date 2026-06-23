files = ['src/env/env.npk', 'src/nproc/nproc.npk', 'src/uptime/uptime.npk']
for f in files:
    with open(f, 'r') as fp:
        content = fp.read()
    
    inject = """extern "libc" { 
    func:fopen  = int64(string:path, string:mode);
    func:fgetc  = int32(int64:fp);
    func:fclose = int32(int64:fp);
}
"""
    if "func:fopen" not in content:
        lines = content.split('\n')
        lines.insert(2, inject)
        with open(f, 'w') as fp:
            fp.write('\n'.join(lines))
        print(f"Fixed {f}")
