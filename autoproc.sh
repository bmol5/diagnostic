#!/bin/bash

ps -eo pid,uid,pcpu,%mem,size,cmd --sort -pcpu > processuse.txt
scriptdate=$( echo "$(date)" | awk -F " " '{print $4 " " $5}') >> processuse.txt
git add processuse.txt
git push diag main


