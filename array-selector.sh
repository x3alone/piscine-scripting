
@@ -0,0 +1,24 @@
#!/usr/bin/env bash
arr=( "red" "blue" "green" "white" "black" )
if [[ $# -ne 1 ]]; then
    echo "Error"
    exit 0
fi
if ! [[ "$1" =~ ^[0-9]+$ ]]; then
    echo "Error"
    exit 0
fi
i=$(( $1 - 1 ))
if (( i < 0 || i >= ${#arr[@]} )); then
    echo "Error"
    exit 0
fi
echo "${arr[$i]}"
