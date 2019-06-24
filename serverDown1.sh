#!/bin/bash
SERVERIP21="192.168.0.21"
SERVERIP26="192.168.0.26"
SERVERIP27="192.168.0.27"
SERVERIP28="192.168.0.28"
SERVERIP29="192.168.0.29"
NOTIFYEMAIL="kalpesh.shedge@graymatrix.com,faiyaz.siddiqui@graymatrix.com,krishna.wattamwar@graymatrix.com"
#NOTIFYEMAIL2= faiyaz.siddiqui@graymatrix.com
#NOTIFYEMAIL3= itsupport@graymatrix.com

ping -c 3 $SERVERIP21 > /dev/null 2>&1
if [ $? -ne 0 ]
then
   # Use your favorite mailer here:
	echo -e "$SERVERIP21 Server is down on $(date) \n\n\n Regards, \nTeam ITSupport" | mail -s "talkk server is down" $NOTIFYEMAIL 
fi

ping -c 3 $SERVERIP26 > /dev/null 2>&1
if [ $? -ne 0 ]
then
   # Use your favorite mailer here:
	echo -e "$SERVERIP26 Server is down on $(date) \n\n\n Regards, \nTeam ITSupport" | mail -s "talkk server is down" $NOTIFYEMAIL 
fi

ping -c 3 $SERVERIP27 > /dev/null 2>&1
if [ $? -ne 0 ]
then
   # Use your favorite mailer here:
	echo -e "$SERVERIP27 Server is down on $(date) \n\n\n Regards, \nTeam ITSupport" | mail -s "talkk server is down" $NOTIFYEMAIL
fi

ping -c 3 $SERVERIP28 > /dev/null 2>&1
if [ $? -ne 0 ]
then
   # Use your favorite mailer here:
	echo -e "$SERVERIP28 Server is down on $(date) \n\n\n Regards, \nTeam ITSupport" | mail -s "talkk server is down" $NOTIFYEMAIL
fi

ping -c 3 $SERVERIP29 > /dev/null 2>&1
if [ $? -ne 0 ]
then
   # Use your favorite mailer here:
	echo -e "$SERVERIP29 Server is down on $(date) \n\n\n Regards, \nTeam ITSupport" | mail -s "talkk server is down" $NOTIFYEMAIL
fi
