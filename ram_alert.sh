#!/bin/sh
NOTIFYMAIL="itsupport@graymatrix.com,kalpesh.shedge@graymatrix.com,faiyaz.siddiqui@graymatrix.com"
ram_space=$(echo "scale=2; $(vmstat -s  | head -n 5 | tail -n 1 | awk {'print $1'})/1024" | bc)
vmstat -s  | head -n 5 | tail -n 1 | awk {'print $1'} | while read output;
do
#echo "$output"
if [ $output -lt 150000 ]; then
        echo "Hello Support_Team, \n\nRAM Space is $ram_space MB on $(hostname -I | awk '{print $1}') server which is very low. Please check the server and Solve the RAM issue as soon as possible. \n\n\nRegards, \nTeam ItSupport" | mail -s "RAM space is very low on $(hostname -I | awk '{print $1}') server" $NOTIFYMAIL
fi
done
