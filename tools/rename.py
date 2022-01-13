#!/usr/bin/env python3

import os
import re

funcs = {}


def handle_file(file):
    with open(file, "r") as f:
        data = f.read()

    for func in funcs:
        if func.__contains__("FUN_"):
            continue
        data = data.replace(f"func_{funcs[func].upper()}", func)
        data = data.replace(f"lbl_{funcs[func].upper()}", func)
        data = data.replace(f"{func}:", f"\nglabel {func}")

    with open(file, "w") as f:
        f.write(data)


with open("funcs", "r") as f:
    renames_text = f.readlines()

for line in renames_text:
    funcs[line.split()[0]] = line.split()[1]


for subdir, dirs, files in os.walk("asm"):
    for file in files:
        print(f"Processing {os.path.join(subdir, file)}")
        handle_file(os.path.join(subdir, file))
