#!/bin/bash

CC="$1"
shift
AS="$1"
shift

# When running windows exes through wsl1 you can't give them linux paths
mkdir -p tools/asm_processor/tmp
temp="$(mktemp --tmpdir=tools/asm_processor/tmp)"

tools/asm_processor/asm_processor.py "$2" --assembler "$AS" > "$temp.c" &&
$CC "$temp.c" -c -o "$temp.o" &&
tools/asm_processor/asm_processor.py "$2" --post-process "$temp.o" --assembler "$AS" --asm-prelude include/macros.inc
$DEVKITPPC/bin/powerpc-eabi-objcopy --remove-section .mwcats.text --remove-section .comment "$temp.o" "$1"