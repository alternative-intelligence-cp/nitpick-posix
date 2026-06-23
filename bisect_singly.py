import subprocess

with open("src/vendor/singly.npk", "r") as f:
    lines = f.readlines()

for i in range(len(lines), 0, -1):
    with open("singly_test.npk", "w") as f:
        f.writelines(lines[:i])
    
    # Needs to fix unclosed blocks if we cut them off
    # actually a simpler way is to just delete functions one by one.
    pass
