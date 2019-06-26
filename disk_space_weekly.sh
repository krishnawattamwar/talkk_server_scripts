#!/bin/sh
#percentage space
ADBPATH="/opt/genymobile/genymotion/tools/"
df -h | grep "root" | while read output;
do
#echo $output
available=$(echo $output | awk '{ print $4 }' )
used=$(echo $output | awk '{ print $3 }' )
utilization=$(echo $output | awk '{ print $5 }' )
ems_count=$(${ADBPATH}adb devices -l | grep "model" | wc -l )
echo "Hello Support_Team, \n\nHardDisk utilization of $(hostname -I | awk '{print $1}') server is as below:\n-------------------------------------------------\nTotal active ems=$ems_count \n---------------------\n\nAvailable space= "$available" \nUsed space= "$used"  \nHD utilization in %= $utilization \n\nUp-Time= $(uptime -p) \nlast reboot=$(last reboot  | awk '{if(NR==1) print $5,$6,$7,$8}') \n\n\nRegards, \nITSupport"  | mail -s "Weekly HardDisk utilization report of $(hostname -I | awk '{print $1}')" kalpesh.shedge@graymatrix.com faiyaz.siddiqui@graymatrix.com itsupport@graymatrix.com
done
