#!/usr/bin/env bash

if [[ $# -ne 1 || ! -d "$1" ]]; then
    echo "Error"
    exit 1
fi

TARGET="$1"
touch "$TARGET/ciao"
chmod 504 "$TARGET/ciao"  
touch -t 202201010001 "$TARGET/ciao"
mkdir "$TARGET/mamma"
chmod 777 "$TARGET/mamma"      
touch -t 202201020001 "$TARGET/mamma"
touch "$TARGET/guarda"
chmod 400 "$TARGET/guarda"   
touch -t 202201030001 "$TARGET/guarda"
touch "$TARGET/come"
chmod 624 "$TARGET/come"       
touch -t 202201040001 "$TARGET/come"
mkdir "$TARGET/mi"
chmod 205 "$TARGET/mi"        
touch -t 202201050001 "$TARGET/mi"
touch "$TARGET/diverto"
chmod 471 "$TARGET/diverto" 
touch -t 202201060001 "$TARGET/diverto"
