#!/bin/sh

while true
do
mbsync -a   # first check for mail
/home/kim/.scripts/mailbox.sh
sleep 600
done

