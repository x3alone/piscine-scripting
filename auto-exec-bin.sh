#!/usr/bin/env bash

cd ~/myBins
ccat > ~/myBins/01exec << 'EOF'
#!/usr/bin/env bash
printf "Hello 01 Scripting Pool\n"
EOF
chmod +x ~/myBins/01exec
export PATH="$HOME/myBins:$PATH"
