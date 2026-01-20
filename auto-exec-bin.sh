#!/usr/bin/env bash

cd ~/myBins
cat > ~/myBins/01exec << 'EOF'
echo "Hello 01 Scripting Pool"
chmod +x ~/myBins/01exec
export PATH="$HOME/myBins:$PATH"
