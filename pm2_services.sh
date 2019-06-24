#!/bin/sh
NOTIFYMAIL="itsupport@graymatrix.com,kalpesh.shedge@graymatrix.com,faiyaz.siddiqui@graymatrix.com"
#pm2 status | wc -l | while read output;
#do
#if [ $output -eq 4 ]; then
# echo "pm2 services is down"  > /dev/null 2>&1
# pm2 restart all
#fi
#done

pm2 status | wc -l | while read output;
do
if [ $output -eq 4 ]; then
 pm2 resurrect
			pm2 status | grep "online" | wc -l | while read output;
			do
			if [ $output -eq 3 ]; then
			echo "Hello Support_Team, \n\npm2 services is down on $(hostname -I | awk '{print $1}') server at $(date). \nbut it's running now after firing pm2 resurrect command. \n\n\nRegards, \nTeam ItSupport" | mail -s "pm2 service is working on $(hostname -I | awk '{print $1}') server after firing pm2 resurrect" $NOTIFYMAIL
                        fi
                        done
fi
done

pm2 status | grep "online" | wc -l | while read output;
do
if [ $output -eq 3 ]; then
 echo "Hello Support_Team, \n\npm2 services is working on $(hostname -I | awk '{print $1}') server at $(date). \n\n\nRegards, \nTeam ItSupport"  > /dev/null 2>&1
else
 echo "Hello Support_Team, \n\npm2 services is down on $(hostname -I | awk '{print $1}') server at $(date). \nPlease check the issue and Reslove it. \n\n\nRegards, \nTeam ItSupport"  | mail -s "pm2 service is down on $(hostname -I | awk '{print $1}') server" $NOTIFYMAIL
fi
done




