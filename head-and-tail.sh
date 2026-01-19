#!/usr/bin/env bash

curl -s "https://learn.zone01oujda.ma/assets/devops-branch/HeadTail.txt" | \
(head -n1 && tail -n1)
