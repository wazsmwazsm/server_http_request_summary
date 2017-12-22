#!/bin/bash
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin

i=1
httpry -i eth1 -o output.txt -d
while true
do
   ((i++))
   if [ $i -gt 23 ]; then
        killall httpry
        i=1
        bash getLog.sh
        rm output.txt
        httpry -i eth1 -o output.txt -d
   fi
   sleep 1h
done
