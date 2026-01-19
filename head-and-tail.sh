#!/usr/bin/env bash

curl -s "https://learn.zone01oujda.ma/assets/devops-branch/HeadTail.txt" | \
{ head -n1 | sed 's/.*/Hello My username is: &,/'; tail -n1 | sed 's/.*/so my passwd is: &/'; }
