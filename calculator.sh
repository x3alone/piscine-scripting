#!/usr/bin/env bash


do_add() {
    echo $(( $1 + $2 ))
}

do_sub() {
    echo $(( $1 - $2 ))
}

do_mult() {
    echo $(( $1 * $2 ))
}

do_divide() {
    echo $(( $1 / $2 ))
}

if [ "$#" -ne 3 ]; then
    echo "Error: expect 3 arguments" >&2
    exit 1
fi

left="$1"
op="$2"
right="$3"

number_regex='^-?[0-9]+$'

if ! [[ "$left" =~ $number_regex ]] || ! [[ "$right" =~ $number_regex ]]; then
    echo "Error: invalid number" >&2
    exit 4
fi

case "$op" in
    "+")
        do_add "$left" "$right"
        ;;
    "-")
        do_sub "$left" "$right"
        ;;
    "*")
        do_mult "$left" "$right"
        ;;
    "/")
        if [ "$right" -eq 0 ]; then
            echo "Error: division by 0" >&2
            exit 2
        fi
        do_divide "$left" "$right"
        ;;
    *)
        echo "Error: invalid operator" >&2
        exit 3
        ;;
esac
