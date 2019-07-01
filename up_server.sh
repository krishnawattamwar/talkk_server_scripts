#!/bin/sh
NOTIFYEMAIL="kalpesh.shedge@graymatrix.com,faiyaz.siddiqui@graymatrix.com,itsupport@graymatrix.com"
#NOTIFYEMAIL1="krishna.wattamwar@graymatrix.com"

#pm2 status | grep "online" | wc -l | while read output;
#do
#if [ $output -eq 3 ]; then
echo "Hello Support_Team, \n\n$(hostname -I | awk '{print $1}') Server is up on $(date +" %d/%m/%Y at %R") \n\n\nRegards, \nTeam ITSupport"  | mail -s "$(hostname -I | awk '{print $1}') server is up now" $NOTIFYEMAIL

#else
#echo "Hello Support_Team, \n\npm2 services is down on $(hostname -I | awk '{print $1}') server at $(date +" %d/%m/%Y at %R"). \nPlease check the issue and Reslove it as soon as possible. \n\n\nRegards, \nTeam ItSupport"  | mail -s "pm2 service is down after rebooting the $(hostname -I | awk '{print $1}') server" $NOTIFYEMAIL
#fi
#done
