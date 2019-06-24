
echo " "
echo "----------------------------------------------------------------"
echo -e "Bash script for Getting whatsapp database"
echo "----------------------------------------------------------------"
echo " "
cd /opt/genymobile/genymotion/tools/ ; ./adb devices -l
echo -e "Where to save - Enter folder path"
echo -e "E.g: /home/<computer_name>/Desktop"
read -p "folder path- " folder_path
echo -e "\nEnter company name"
read -p "company name- " company_name
echo -e "\nEnter mobile number for getting database"
read -p "Mobile number - " mobile_number
# Get the ip_address from user
echo " "
read -p "IP address? " ip_add
echo -e "./adb -s $ip_add pull /data/data/com.whatsapp.w4b/databases/msgstore.db $folder_path/$company_name-$mobile_number.db" > /home/user/Desktop/db.txt


echo " "
echo "--					******							--"
echo -e "You have successfully save your whatsapp database at $folder_path/$company_name-$mobile_number.db"
echo "--					******							--"
echo " "




