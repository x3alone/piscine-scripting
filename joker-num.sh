#!/usr/bin/env bash

secret="$1"

if [ "$#" -ne 1 ] || ! [[ "$secret" =~ ^[0-9]+$ ]] || [ "$secret" -lt 1 ] || [ "$secret" -gt 100 ]; then
    echo "Error: wrong argument"
    exit 1
fi

tries=5
used=0

for ((; used < tries; )); do
    tries_left=$((tries - used))
    echo "Enter your guess ($tries_left tries left):"
    read guess

    if [[ -z "$guess" ]] || ! [[ "$guess" =~ ^[0-9]+$ ]] || [ "$guess" -lt 1 ] || [ "$guess" -gt 100 ]; then
        continue
    fi

    used=$((used + 1))

    if [ "$guess" -gt "$secret" ]; then
        echo "Go down"
    elif [ "$guess" -lt "$secret" ]; then
        echo "Go up"
    else
        echo "Congratulations, you found the number in $used moves!"
        exit 0
    fi
done

echo "You lost, the number was $secret"
