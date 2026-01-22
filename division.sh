#!/usr/bin/env bash

if [[ $# -ne 2 ]]; then
  printf "Error: two numbers must be provided\n"
  exit 1
fi
if ! [[ "$1" =~ ^-?[0-9]+$  &&  "$2" =~ ^-?[0-9]+$ ]]; then
  printf "Error: both arguments must be integers\n"
  exit 1
fi
if [[ "$2" == "0" ]]; then
  printf "Error: division by zero is not allowed\n"
  exit 1
fi

echo "$1 / $2" | bc
