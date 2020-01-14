#!/bin/bash
SSH_AGENT_PID=$(/usr/bin/pgrep -U root ssh-agent)
for PID in $SSH_AGENT_PID; do
    let "FPID = $PID - 1"
    FILE=$(/usr/bin/find /tmp -path "*ssh*" -type s -iname "agent.$FPID")
    export SSH_AGENT_PID="$PID" 
    export SSH_AUTH_SOCK="$FILE"
done
/usr/bin/scp -i /root/.ssh/id_rsa /root/OneDrive/ZZZ/Database.kdbx "root@82.165.124.68:/root/backup/"
