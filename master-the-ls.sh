#!/usr/bin/env bash

ls -At | sed 's/$/\//' | tr '\n' ','
# ls -Atp | tr '\n' ',' | sed 's/,$/\n/'