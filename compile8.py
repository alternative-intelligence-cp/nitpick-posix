import os

src_dir = '/home/randy/Workspace/REPOS/nitpick-posix/src'
out_file = '/home/randy/Workspace/META/NITPICK-POSIX/audits/a8/compilation.md'

with open(out_file, 'w') as out:
    out.write('# nitpick-posix Source Compilation (a8)\n\n')
    
    for root, dirs, files in os.walk(src_dir):
        files.sort()
        dirs.sort()
        
        for file in files:
            if file.endswith('.npk'):
                filepath = os.path.join(root, file)
                rel_path = os.path.relpath(filepath, src_dir)
                
                out.write(f'## {rel_path}\n\n')
                out.write('```nitpick\n')
                with open(filepath, 'r') as f:
                    out.write(f.read())
                out.write('\n```\n\n')

print("Compilation complete.")
