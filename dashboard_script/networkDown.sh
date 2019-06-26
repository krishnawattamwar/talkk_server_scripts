#!/bin/sh
SERVERIP1="8.8.8.8"

ping -c 3 $SERVERIP1 > /dev/null 2>&1
if [ $? -ne 0 ]
then
   # Use your favorite mailer here:
	echo "\nInternet is down on $(hostname -I | awk '{print $1}') server $(date +"at %R %d/%m/%Y ")" >> /opt/network_info/network_info.txt  
else
	echo "SERVERIP1 is working"	> /dev/null 2>&1
fi
