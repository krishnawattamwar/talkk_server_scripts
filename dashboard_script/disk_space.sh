#!/bin/sh
df -h / |  awk '{ if(NR==2) print $5 }' | cut -c 1,2 | while read output;
do
if [ $output -gt 85 ];then
echo "\n$(hostname -I | awk '{print $1}') Server is Running out of space \"$partition ($output%)\" on$(date +" %d/%m/%Y at %R")" > /opt/network_info/disk_space.txt
else
rm /opt/network_info/disk_space.txt
fi
done
