import re

with open('build.sh', 'r') as f:
    code = f.read()

code = re.sub(r'(-o\s+bin/\S+)', r'\1 -L/home/randy/Workspace/REPOS/nitpick/build -lnitpick_runtime', code)

with open('build.sh', 'w') as f:
    f.write(code)

print("Fixed build.sh")
