#!/bin/sh
#percentage space
NOTIFYMAIL="itsupport@graymatrix.com,kalpesh.shedge@graymatrix.com,faiyaz.siddiqui@graymatrix.com"
df -h | grep "root" | while read output;
do
#echo $output
available=$(echo $output | awk '{ print $4 }' )
used=$(echo $output | awk '{ print $3 }' )
utilization=$(echo $output | awk '{ print $5 }' )
echo "Hello Support_Team, \n\nHardDisk utilization of $(hostname -I | awk '{print $1}') server is as below: \nAvailable space= "$available" \nUsed space= "$used"  \nHD utilization in %= $utilization \nUp-Time= $(uptime -p) \nlast reboot=$(last reboot  | awk '{if(NR==1) print $5,$6,$7,$8}') \n\n\nRegards, \nITSupport"  | mail -s "Daily HardDisk utilization report of $(hostname -I | awk '{print $1}') server" $NOTIFYMAIL
done
