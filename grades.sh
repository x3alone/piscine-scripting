#!/usr/bin/env bash

if [ "$#" -ne 1 ]; then
    echo "Error: expect 1 argument only!" >&2
    exit 1
fi

students="$1"

if ! [[ "$students" =~ ^[0-9]+$ ]]; then
    echo "Error: expect 1 argument only!" >&2
    exit 1
fi

declare -a names
declare -a grades

for ((i=1; i<=students; i++)); do
    echo "Student Name #$i:"
    read name
    names+=("$name")

    echo "Student Grade #$i:"
    read grade

    if ! [[ "$grade" =~ ^[0-9]+$ ]] || [ "$grade" -lt 0 ] || [ "$grade" -gt 100 ]; then
        echo "Error: The grade '$grade' is not a valid input. Only numerical grades between 0 and 100 are accepted." >&2
        exit 1
    fi

    grades+=("$grade")
done

for ((i=0; i<students; i++)); do
    name="${names[$i]}"
    grade="${grades[$i]}"

    if [ "$grade" -ge 90 ]; then
        echo "$name: You did an excellent job!"
    elif [ "$grade" -ge 70 ]; then
        echo "$name: You did a good job!"
    elif [ "$grade" -ge 50 ]; then
        echo "$name: You need a bit more effort!"
    else
        echo "$name: You had a poor performance!"
    fi
done
