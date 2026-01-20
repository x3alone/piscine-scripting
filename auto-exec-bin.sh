#!/usr/bin/env bash

cd ~/myBins
cat > ~/myBins/01exec << 'EOF'
printf "Hello 01 Scripting Pool\n"
chmod +x ~/myBins/01exec
export PATH="$HOME/myBins:$PATH"
