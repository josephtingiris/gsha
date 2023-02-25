#!/bin/bash

# jtingiris

cd "$(dirname $0)"

let LOOP=$((((RANDOM<<15)|RANDOM) % 33))

if [ ${LOOP} -gt 0 ]; then
    for ((L=0; L<$LOOP; L++)); do
        ./gsha
        git add data 1> /dev/null
        git commit -m "$(date)" 1> /dev/null
        git push 1> /dev/null
    done
fi
