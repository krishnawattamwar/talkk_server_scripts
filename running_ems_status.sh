#!/bin/sh
#sleep 30m
NOTIFYMAIL="itsupport@graymatrix.com,kalpesh.shedge@graymatrix.com,faiyaz.siddiqui@graymatrix.com"
ADBPATH="/opt/genymobile/genymotion/tools/"
running_ems=$(${ADBPATH}./adb devices -l | awk {'print $4'} | cut -c 7-50)
ems_count=$(${ADBPATH}adb devices -l | grep "model" | wc -l )
virtualbox_list=$(VBoxManage list vms | awk {'print $1'})
virtualbox_count=$(VBoxManage list vms | awk {'print $1'} | wc -l)
ems_difference=`expr $ems_count - $virtualbox_count`
echo "Hello Support_Team, \n\nList of Running Bots on $(hostname -I | awk '{print $1}') are as below: \n-----------$running_ems
============\nems_count=$ems_count\n============ \n\nList of created instances on Virtualbox are as below: \n-----------\n$virtualbox_list
============\nems_count=$virtualbox_count\n============\n\nTotal No. of ems which is not using= $ems_difference  \n\n\nRegards, \nITSupport" | mail -s "List of running ems on $(hostname -I | awk '{print $1}')" $NOTIFYMAIL

