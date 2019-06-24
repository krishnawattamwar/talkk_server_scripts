#!/bin/bash
echo "-------------------------------"
echo "script for clearing whatsapp chats of all IIFL bots"
echo "-------------------------------"
cd /opt/genymobile/genymotion/tools/
#./adb devices -l
echo "Do you want to clear all chats of IIFL" 
a=y
echo " "
read -p "yes(y) or No(n)- " yes
	if [ $yes = $a  ]; then
./adb -s $(./adb devices -l | grep "IIFL" | awk '{if(NR==1) print $1}') shell sh /data/talkk/deleteAllChat.sh
echo "			****			"
echo "Successfully clear chat on $(./adb devices -l | grep "IIFL" | awk '{if(NR==1) print $4}')"
echo "			****			"

./adb -s $(./adb devices -l | grep "IIFL" | awk '{if(NR==2) print $1}') shell sh /data/talkk/deleteAllChat.sh
echo "                  ****                    "
echo "Successfully clear chat on $(./adb devices -l | grep "IIFL" | awk '{if(NR==2) print $4}')"
echo "                  ****                    "

./adb -s $(./adb devices -l | grep "IIFL" | awk '{if(NR==3) print $1}') shell sh /data/talkk/deleteAllChat.sh
echo "                  ****                    "
echo "Successfully clear chat on $(./adb devices -l | grep "IIFL" | awk '{if(NR==3) print $4}')"
echo "                  ****                    "

./adb -s $(./adb devices -l | grep "IIFL" | awk '{if(NR==4) print $1}') shell sh /data/talkk/deleteAllChat.sh
echo "                  ****                    "
echo "Successfully clear chat on $(./adb devices -l | grep "IIFL" | awk '{if(NR==4) print $4}')"
echo "                  ****                    "


./adb -s $(./adb devices -l | grep "IIFL" | awk '{if(NR==5) print $1}') shell sh /data/talkk/deleteAllChat.sh
echo "                  ****                    "
echo "Successfully clear chat on $(./adb devices -l | grep "IIFL" | awk '{if(NR==5) print $4}')"
echo "                  ****                    "


echo " "
echo "----------------------------------------------------------------"
echo -e "Congratulation you have successfully clear the whatsapp chat of all IIFL instance which are as below: \n$(./adb devices -l | grep "IIFL" | awk '{if(NR==1) print $4}') \n$(./adb devices -l | grep "IIFL" | awk '{if(NR==2) print $4}') \n$(./adb devices -l | grep "IIFL" | awk '{if(NR==3) print $4}') \n$(./adb devices -l | grep "IIFL" | awk '{if(NR==4) print $4}') \n$(./adb devices -l | grep "IIFL" | awk '{if(NR==5) print $4}')"
echo "----------------------------------------------------------------"
echo " "

else
echo "TRY AGAIN"
fi

