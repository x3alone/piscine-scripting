#!/usr/bin/env bash

if [[ $# -ne 1 && ! -d "$1" ]]; then
    echo "Error"
    exit 1
fi

TARGET="$1"

touch -t 202201010001 "$TARGET/ciao"
chmod 444 "$TARGET/ciao"

mkdir -p "$TARGET/mamma"
chmod 777 "$TARGET/mamma"
touch -t 202201020001 "$TARGET/mamma"

touch -t 202201030001 "$TARGET/guarda"
chmod 400 "$TARGET/guarda"

touch -t 202201040001 "$TARGET/come"
chmod 624 "$TARGET/come"

mkdir -p "$TARGET/mi"
chmod 205 "$TARGET/mi"
touch -t 202201050001 "$TARGET/mi"

touch -t 202201060001 "$TARGET/diverto"
chmod 471 "$TARGET/diverto"
