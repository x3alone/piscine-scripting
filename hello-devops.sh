#!/bin/bash

echo "Hello $(whoami 2>/dev/null || echo "$USER")!"
