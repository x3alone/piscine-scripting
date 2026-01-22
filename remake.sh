#!/usr/bin/env bash

if [[ $# -ne 1 || ! -d "$1" ]]; then
    echo "Error"
    exit 1
fi

TARGET_DIR="$1"

if [[ ! -d "$TARGET_DIR" ]]; then
    echo "Error"
    exit 1
fi

touch "$TARGET_DIR/ciao"
chmod 444 "$TARGET_DIR/ciao"       
touch -t 202201010001 "$TARGET_DIR/ciao"
mkdir -p "$TARGET_DIR/mamma"
chmod 777 "$TARGET_DIR/mamma"         
touch -t 202201020001 "$TARGET_DIR/mamma"
touch "$TARGET_DIR/guarda"
chmod 400 "$TARGET_DIR/guarda"        
touch -t 202201030001 "$TARGET_DIR/guarda"
touch "$TARGET_DIR/come"
chmod 624 "$TARGET_DIR/come"          
touch -t 202201040001 "$TARGET_DIR/come"
mkdir -p "$TARGET_DIR/mi"
chmod 205 "$TARGET_DIR/mi"            
touch -t 202201050001 "$TARGET_DIR/mi"
touch "$TARGET_DIR/diverto"
chmod 471 "$TARGET_DIR/diverto"
touch -t 202201060001 "$TARGET_DIR/diverto"
