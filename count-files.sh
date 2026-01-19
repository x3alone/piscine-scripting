#!/usr/bin/env bash

find . -maxdepth 1 -type f | wc -l
# ls -1F |grep -v / | wc -l