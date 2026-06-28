import os

with open('src/pinky/pinky.npk', 'r') as f:
    content = f.read()

# Let's inspect the exact lines
for i, l in enumerate(content.split('\n')[25:40]):
    print(f"{i+26}: {l.strip()}")
