#!/bin/sh
NOTIFYMAIL="itsupport@graymatrix.com,kalpesh.shedge@graymatrix.com,faiyaz.siddiqui@graymatrix.com"
df -H | grep -vE '^Filesystem|tmpfs|cdrom' | awk '{ print $5 " " $1 }' | while read output;
do
  echo $output >  /dev/null 2>&1
  usep=$(echo $output | awk '{ print $1}' | cut -d'%' -f1  )
  partition=$(echo $output | awk '{ print $2 }' )
  if [ $usep -ge 75 ]; then
    echo "Hello Support_Team, \n\nServer is Running out of space: \"$partition ($usep%)\" on $(hostname -I | awk '{print $1}') server as on $(date +" %d/%m/%Y at %R") \nNeed to be done maintenance activity on $(hostname -I | awk '{print $1}') as soon as possbile. \n\n\nRegards, \nTeam ItSupport" | mail -s "Alert: Almost out of disk space $usep%" $NOTIFYMAIL
  fi
done
