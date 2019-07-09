#!/bin/bash
NOTIFYEMAIL="kalpesh.shedge@graymatrix.com,faiyaz.siddiqui@graymatrix.com,itsupport@graymatrix.com"
#NOTIFYEMAIL1="krishna.wattamwar@graymatrix.com"

echo -e "Hello Support_Team, \n\n$(hostname -I | awk '{print $1}') Server is up on $(date +" %d/%m/%Y at %R") \n\n\nRegards, \nTeam ITSupport"   | mail -s "$(hostname -I | awk '{print $1}') server is up now" $NOTIFYEMAIL
