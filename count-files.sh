#!/usr/bin/env bash

find . -type f -o -type d | wc -l
# ls -1F |grep -v / | wc -l