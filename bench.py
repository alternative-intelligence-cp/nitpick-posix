import subprocess
import time
import os

utils = ['csplit', 'join', 'ptx', 'tsort', 'runcon', 'chcon']
out_md = "/home/randy/Workspace/META/NITPICK-POSIX/bench/b0.md"

with open(out_md, "w") as out:
    out.write("# POSIX MVP Benchmarks\n\n")
    for u in utils:
        out.write(f"## {u}\n")
        start = time.time()
        try:
            res = subprocess.run([f"bin/{u}", "--version"], capture_output=True, text=True, timeout=5)
            end = time.time()
            out.write(f"Execution time: {end - start:.4f}s\n")
            out.write(f"Exit code: {res.returncode}\n")
            out.write(f"```\n{res.stdout}\n{res.stderr}\n```\n\n")
        except Exception as e:
            end = time.time()
            out.write(f"Execution failed: {e}\n\n")

print("Benchmarks saved to b0.md")
