#!/bin/bash

FUNCS=( $(cat $1 | awk '{ print $1 }') )

for i in "${!FUNCS[@]}"; do 
    output=$( grep -R -e "glabel ${FUNCS[i]}" -e "${FUNCS[i]}(" asm src | grep -v "FUN_" )
    if [[ -z "$output" && ${FUNCS[i]} != FUN_* ]]; then 
        echo ${FUNCS[i]}
    fi
done