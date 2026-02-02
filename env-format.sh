#!/usr/bin/env bash

printf "%s\n" "$PWD"

printenv | cut -d= -f1 | grep 'H'
