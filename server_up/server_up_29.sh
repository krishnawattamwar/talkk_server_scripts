#!/bin/bash
NOTIFYEMAIL="kalpesh.shedge@graymatrix.com,faiyaz.siddiqui@graymatrix.com,itsupport@graymatrix.com"
#NOTIFYEMAIL1="krishna.wattamwar@graymatrix.com"

echo -e "Hello Support_Team, \n\n192.168.0.29 Server is up on $(date +" %d/%m/%Y at %R") \n\n\nRegards, \nTeam ITSupport"   | mail -s "192.168.0.29 server is up now" $NOTIFYEMAIL

