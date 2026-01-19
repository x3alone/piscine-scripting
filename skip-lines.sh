#!/usr/bin/env bash

ls -l | sed '1d' | sed -n 'p;n'
