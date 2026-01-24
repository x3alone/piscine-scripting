#!/usr/bin/env bash

secret="$1"

if [ "$#" -ne 1 ] || ! [[ "$secret" =~ ^[0-9]+$ ]] || [ "$secret" -lt 1 ] || [ "$secret" -gt 100 ]; then
    printf "Error: wrong argument"
    exit 1
fi

tries=5
found=0

for ((i=1; i<=tries; i++)); do
    tries_left=$((tries - i + 1))
    echo "Enter your guess ($tries_left tries left):"
    read guess

    if ! [[ "$guess" =~ ^[0-9]+$ ]]; then
        continue
    fi

    if [ "$guess" -gt "$secret" ]; then
        echo "Go down"
    elif [ "$guess" -lt "$secret" ]; then
        echo "Go up"
    else
        echo "Congratulations, you found the number in $i moves!"
        found=1
        break
    fi
done

if [ "$found" -eq 0 ]; then
    echo "You lost, the number was $secret"
fi
