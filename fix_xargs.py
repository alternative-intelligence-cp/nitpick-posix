import re

with open('src/xargs/xargs.npk', 'r') as f:
    text = f.read()

# Fix pointer syntax: <-( X => uint8* ) = Y  ->  @cast_unchecked<uint8->>(X)[0] = Y
text = re.sub(r'<-\((.*?)\s*=>\s*uint8\*\)\s*=', r'@cast_unchecked<uint8->>(\1)[0] =', text)

# Fix trailing parentheses on cast
text = text.replace('uint8 & 255i64));', 'uint8 & 255i64);')

with open('src/xargs/xargs.npk', 'w') as f:
    f.write(text)
