	#!/usr/bin/env bash
if [[ $# -ne 2 ]]; then
    echo "Error: The script only works with two arguments!"
    exit 0
fi
if ! [[ "$1" =~ ^-?[0-9]+$ && "$2" =~ ^-?[0-9]+$ ]]; then
    echo "Error: Only two numeric arguments are acceptable!"
    exit 0
fi
if (( $1 > $2 )); then
    echo "$1 > $2"
elif (( $1 < $2 )); then
    echo "$1 < $2"
else
    echo "$1 = $2"
fi
