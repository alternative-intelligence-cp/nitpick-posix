import os
import subprocess

out_file = "/home/randy/Workspace/META/NITPICK-POSIX/audits/a27/compilation.md"

with open(out_file, "w") as out:
    for root, dirs, files in os.walk("src"):
        for f in sorted(files):
            if f.endswith(".npk") or f.endswith(".c") or f.endswith(".h"):
                file_path = os.path.join(root, f)
                out.write(f"\n\n# {file_path}\n\n```\n")
                with open(file_path, "r") as src:
                    out.write(src.read())
                out.write("\n```\n")

    out.write("\n\n# build output\n\n```\n")
    res = subprocess.run(["./build.sh"], capture_output=True, text=True)
    out.write(res.stdout)
    out.write(res.stderr)
    out.write("\n```\n")
