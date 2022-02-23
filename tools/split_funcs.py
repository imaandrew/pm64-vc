#!/usr/bin/env python3

import argparse
import re
import os

parser = argparse.ArgumentParser(
    description="Splits out asm file of funcs to multiple .s files and a .c file"
)
parser.add_argument("asmfile", help="ASM file containing funcs to split out")
parser.add_argument("cfile", help="C file that will contain all the functions")

args = parser.parse_args()

asm_dir = os.path.dirname(args.asmfile)

if not os.path.isfile(args.asmfile):
    print(f"{args.asmfile} does not exist")
    exit(1)

with open(args.asmfile, "r") as f:
    funcs = re.findall(r"glabel [\s\S]*?(?:\n\n|\Z)", f.read())

for func in funcs:
    name = func.split(" ")[1].split("\n")[0]

    with open(f"{asm_dir}/{name}.s", "w") as f:
        f.write(func)

    with open(f"{args.cfile}", "a") as f:
        f.write(f'#pragma GLOBAL_ASM("{asm_dir}/{name}.s")\n\n')

print(f"You can now delete {args.asmfile}")