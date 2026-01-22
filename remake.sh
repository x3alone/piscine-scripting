#!/usr/bin/env bash

if [[ $# -ne 1 || ! -d "$1" ]]; then
    echo "Error"
    exit 1
fi

TARGET="$1"
touch "$TARGET/ciao" "$TARGET/guarda" "$TARGET/come" "$TARGET/diverto"

mkdir -p "$TARGET/mamma" "$TARGET/mi"

chmod 442 "$TARGET/ciao"
touch -d "2026-01-01 00:01" "$TARGET/ciao"

chmod 777 "$TARGET/mamma" 
touch -d "2026-01-02 00:01" "$TARGET/mamma"

chmod 400 "$TARGET/guarda"
touch -d "2026-01-03 00:01" "$TARGET/guarda"

chmod 642 "$TARGET/come"       
touch -d "2026-01-04 00:01" "$TARGET/come"

chmod 452 "$TARGET/mi"          
touch -d "2026-01-05 00:01" "$TARGET/mi"

chmod 421 "$TARGET/diverto"    
touch -d "2026-01-06 00:01" "$TARGET/diverto"
