#!/bin/sh
NOTIFYMAIL="itsupport@graymatrix.com,kalpesh.shedge@graymatrix.com,faiyaz.siddiqui@graymatrix.com"

count=$(pm2 jlist | python -c "import sys, json;item_dict = json.load(sys.stdin);print len(item_dict)")
if [ $count -eq 0 ]; then
 pm2 resurrect
        echo "Hello Support_Team, \n\npm2 services is down on $(hostname -I | awk '{print $1}') server at $(date +" %d/%m/%Y at %R"). \nbut it's running now after firing pm2 resurrect command. \n\n\nRegards, \nTeam ItSupport" | mail -s "pm2 service is working on $(hostname -I | awk '{print $1}') server after firing pm2 resurrect" $NOTIFYMAIL

elif [ $count -eq 0 ]; 
then
		echo "Hello Support_Team, \n\npm2 services is down on $(hostname -I | awk '{print $1}') server at $(date +" %d/%m/%Y at %R"). \nPlease check the issue and Reslove it. \n\n\nRegards, \nTeam ItSupport"  | mail -s "pm2 service is down on $(hostname -I | awk '{print $1}') server" $NOTIFYMAIL
else
 echo "NoChange"
fi

