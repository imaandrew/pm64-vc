#!/usr/bin/env python3
"""
Tool to list all hardcoded data pointers and their values
Automatically fixes hardcoded bss pointers
"""

import sys
import os

addr = int(sys.argv[1], 16)
if addr >= 0x80004000 and addr < 0x800064E0:
    val = addr - 0x80004000 + 0x00000100
    section = "init"
elif addr >= 0x800070C0 and addr < 0x80174200:
    val = addr - 0x800070C0 + 0x000025E0
    section = "text"
elif addr >= 0x800064E0 and addr < 0x800069E0:
    val = addr - 0x800064E0 + 0x0016F720
    section = "extab"
elif addr >= 0x800069E0 and addr < 0x800070C0:
    val = addr - 0x800069E0 + 0x0016FC20
    section = "extabindex"
elif addr >= 0x80174200 and addr < 0x80174260:
    val = addr - 0x80174200 + 0x00170300
    section = "ctors"
elif addr >= 0x80174260 and addr < 0x80174280:
    val = addr - 0x80174260 + 0x00170360
    section = "dtors"
elif addr >= 0x80174280 and addr < 0x80179740:
    val = addr - 0x80174280 + 0x00170380
    section = "rodata"
elif addr >= 0x80179740 and addr < 0x801ADFC0:
    val = addr - 0x80179740 + 0x00175840
    section = "data"
elif addr >= 0x80246480 and addr < 0x80246B60:
    val = addr - 0x80246480 + 0x001AA0C0
    section = "sdata"
elif addr >= 0x80247800 and addr < 0x802486C0:
    val = addr - 0x80247800 + 0x001AA7A0
    section = "sdata2"
elif addr >= 0x801ADFC0 and addr < 0x80246480:
    section = "bss"
elif addr >= 0x80246B60 and addr < 0x80247800:
    section = "sbss"
elif addr >= 0x802486C0 and addr < 0x802486D0:
    section = "sbss2"
else:
    sys.exit(0)


if not section.__contains__("bss"):
    with open("build/00000001.app", "rb") as file:
        file.seek(val)
        word = file.read(4).hex()
        non_ascii_word = word
        b = ""
        try:
            string = bytes.fromhex(word).decode().replace("\00", "")
            while b != "00":
                b = file.read(1).hex()
                word += b
            string = bytes.fromhex(word).decode().replace("\00", "")
        except:
            string = non_ascii_word
        with open("output", "a") as f:
            f.write(
                f"referenced address: {sys.argv[1]}  referenced value: {string} section: {section}\n"
            )

else:
    last_line = ""
    with open("build/00000001.map", "r") as file:
        data = file.readlines()
    for line in data:
        if not line.__contains__(f"(entry of .{section})"):
            continue
        next_addr = int(line.strip().split(" ")[2], base=16)
        if next_addr < addr:
            last_line = line.strip()
            continue
        index = data.index(line)
        last_addr = int(last_line.split(" ")[2], base=16)
        curr_skip = next_addr - last_addr
        new_skip = addr - last_addr
        next_skip = next_addr - addr
        break
    old = f"glabel lbl_{hex(last_addr)[2:].upper()}\\n\\t.skip 0x{hex(curr_skip)[2:].upper()}\\n"
    new = f"glabel lbl_{hex(last_addr)[2:].upper()}\\n\\t.skip 0x{hex(new_skip)[2:].upper()}\\n\\nglabel lbl_{hex(addr)[2:].upper()}\\n\\t.skip 0x{hex(next_skip)[2:].upper()}\\n"
    cmd = f"sd '{old}' '{new}' asm/{section}.s"
    cmd2 = f"fd -e s . asm/ -x sd {sys.argv[1]} lbl_{hex(addr)[2:].upper()}"
    os.system(cmd)
    os.system(cmd2)
    os.system("make -j32")
