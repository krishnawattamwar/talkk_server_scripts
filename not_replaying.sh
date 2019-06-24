echo "Script for If ems is not replaying"
cd /opt/genymobile/genymotion/tools/
./adb devices -l
echo "Fire below command to see last record id"
echo -e "/system/xbin/sqlite3 /data/data/com.whatsapp.w4b/databases/msgstore.db" "\"select max(_id) from messages;\""
echo " "
# Get the ip_address from user
echo " "
read -p "IP address? " ip_add
./adb -s $ip_add shell

