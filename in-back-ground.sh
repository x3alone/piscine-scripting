#!/usr/bin/env bash

nohup bash -c '
line=$(grep "moon" facts)
if [ -n "$line" ]; then
  echo "$line"         # print matching line
  echo "The moon fact was found!" > output.txt
fi
' &