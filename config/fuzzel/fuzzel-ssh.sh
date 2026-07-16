#!/bin/bash
known_hosts=$(cut -d' ' -f1 ~/.ssh/known_hosts | sed 's/\[//g; s/\]//g; s/:.*//g' | cut -d',' -f1)
selected=$(echo -e "$known_hosts" | sort -u | grep -v "^$" | fuzzel -d -p ' ')
foot -e ssh $selected
