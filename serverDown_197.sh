#!/bin/sh
SERVERIP21="192.168.0.21"
SERVERIP26="192.168.0.26"
SERVERIP27="192.168.0.27"
SERVERIP28="192.168.0.28"
SERVERIP29="192.168.0.29"
NOTIFYEMAIL="kalpesh.shedge@graymatrix.com,faiyaz.siddiqui@graymatrix.com,krishna.wattamwar@graymatrix.com"
NOTIFYEMAIL1="krishna.wattamwar@graymatrix.com"
COUNT_21=$(curl http://43.241.61.151:5000 -k -s -f -o /dev/null --connect-timeout 30 && echo "SUCCESS" || echo "FAIL")
COUNT_26=$(curl http://43.241.61.152:5000 -k -s -f -o /dev/null --connect-timeout 30 && echo "SUCCESS" || echo "FAIL")
COUNT_27=$(curl http://43.241.61.153:5000 -k -s -f -o /dev/null --connect-timeout 30 && echo "SUCCESS" || echo "FAIL")
COUNT_28=$(curl http://43.241.61.154:5000 -k -s -f -o /dev/null --connect-timeout 30 && echo "SUCCESS" || echo "FAIL")
COUNT_29=$(curl http://43.241.61.155:5000 -k -s -f -o /dev/null --connect-timeout 30 && echo "SUCCESS" || echo "FAIL")

MSG=""

if [ $COUNT_21 != "SUCCESS" ];
then
	MSG="${MSG}$SERVERIP21 Server is down on $(date +" %d/%m/%Y at %R")\n"   
else
	echo "SERVERIP21 is working"   > /dev/null 2>&1 
fi

if [ $COUNT_26 != "SUCCESS" ];
then
	MSG="${MSG}$SERVERIP26 Server is down on $(date +" %d/%m/%Y at %R")\n"
else
	echo "$SERVERIP26 is working"	> /dev/null 2>&1
fi

if [ $COUNT_27 != "SUCCESS" ];
then
	MSG="${MSG}$SERVERIP27 Server is down on $(date +" %d/%m/%Y at %R")\n"
else
	echo "$SERVERIP27 is working"	> /dev/null 2>&1
fi

if [ $COUNT_28 != "SUCCESS" ];
then
	MSG="${MSG}$SERVERIP28 Server is down on $(date +" %d/%m/%Y at %R")\n"
else
	echo "$SERVERIP28 is working"	> /dev/null 2>&1
fi

if [ $COUNT_29 != "SUCCESS" ];
then
	MSG="${MSG}$SERVERIP29 Server is down on $(date +" %d/%m/%Y at %R")\n"
else
	echo "$SERVERIP29 is working"	> /dev/null 2>&1
fi

if [ "${MSG}" != "" ];
then
		echo "Hello Support_Team, \n\n${MSG} \n\n\nRegards, \nTeam ITSupport"  | mail -s "Talkk server is down" $NOTIFYEMAIL
fi
