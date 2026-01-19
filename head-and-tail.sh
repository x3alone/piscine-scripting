#!/usr/bin/env bash
curl -s "https://learn.zone01oujda.ma/assets/devops-branch/HeadTail.txt" | {
first=$(head -n1)
echo "Hello My username is:$first,"

last=$(tail -n1)
echo "so my passwd is: $last"
}
