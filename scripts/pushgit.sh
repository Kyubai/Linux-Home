#!/bin/bash
SSH_AGENT_PID=$(/usr/bin/pgrep -U root ssh-agent)
for PID in $SSH_AGENT_PID; do
    let "FPID = $PID - 1"
    FILE=`/usr/bin/find /tmp -path "*ssh*" -type s -iname "agent.$FPID"`
    export SSH_AGENT_PID="$PID"
    export SSH_AUTH_SOCK="$FILE"
done
cd FOLDER
git add -A
git commit -m "automated backup"
git push
