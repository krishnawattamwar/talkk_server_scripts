echo "script for clear whatsapp chats"
cd /opt/genymobile/genymotion/tools/
./adb devices -l
#echo -e " fire two commads \n 1. cd /data/talkk \n 2. sh deleteAllChat.sh"
#echo " "
# Get the ip_address from user
#echo " "
read -p "IP address? " ip_add
./adb -s $ip_add shell sh /data/talkk/deleteAllCh
