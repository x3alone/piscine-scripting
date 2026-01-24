#!/usr/bin/env bash

if [ "$#" -ne 2 ]; then
    echo "Error: expect 2 arguments" >&2
    exit 1
fi

flag="$1"
username="$2"

case "$flag" in
    -e)
        if getent passwd "$username" > /dev/null; then
            echo "yes"
        else
            echo "no"
        fi
        ;;
    -i)
        info=$(getent passwd "$username")
        if [ -n "$info" ]; then
            echo "$info"
        fi
        ;;
    *)
        echo "Error: unknown flag" >&2
        exit 1
        ;;
esac
