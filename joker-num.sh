#!/usr/bin/env bash

secret="$1"

if [ "$#" -ne 1 ] || ! [[ "$secret" =~ ^[0-9]+$ ]] || [ "$secret" -lt 1 ] || [ "$secret" -gt 100 ]; then
    printf "Error: wrong argument"
    exit 1
fi

tries=5
valid_guesses=0

for ((i=1; i<=tries; )); do
    tries_left=$((tries - valid_guesses))
    echo "Enter your guess ($tries_left tries left):"
    read guess

    if ! [[ "$guess" =~ ^[0-9]+$ ]]; then
        continue
    fi

    valid_guesses=$((valid_guesses + 1))
    i=$((i + 1))

    if [ "$guess" -gt "$secret" ]; then
        echo "Go down"
    elif [ "$guess" -lt "$secret" ]; then
        echo "Go up"
    else
        echo "Congratulations, you found the number in $valid_guesses moves!"
        exit 0
    fi
done

echo "You lost, the number was $secret"
