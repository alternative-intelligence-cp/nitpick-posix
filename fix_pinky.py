with open("src/pinky/pinky.npk", "r") as f:
    lines = f.readlines()
for i, l in enumerate(lines[25:40]):
    print(f"{i+26}: {l.strip()}")
