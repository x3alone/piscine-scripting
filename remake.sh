#!/usr/bin/env bash

if [[ $# -ne 1 || ! -d "$1" ]]; then
    echo "Error"
    exit 1
fi

TARGET="$1"

touch "$TARGET/ciao"
chmod u=r,g=r,o=w "$TARGET/ciao"
touch -t 202601010001 "$TARGET/ciao"
mkdir "$TARGET/mamma"
chmod u=rwx,g=rwx,o=rwx "$TARGET/mamma"
touch -t 202601020001 "$TARGET/mamma"
touch "$TARGET/guarda"
chmod u=r,g=,o= "$TARGET/guarda"
touch -t 202601030001 "$TARGET/guarda"
touch "$TARGET/come"
chmod u=rw,g=r,o=w "$TARGET/come"
touch -t 202601040001 "$TARGET/come"
mkdir "$TARGET/mi"
chmod u=r,g=x,o=w "$TARGET/mi"
touch -t 202601050001 "$TARGET/mi"
touch "$TARGET/diverto"
chmod u=r,g=w,o=x "$TARGET/diverto"
touch -t 202601060001 "$TARGET/diverto"
