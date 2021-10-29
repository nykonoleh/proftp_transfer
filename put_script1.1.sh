#!/bin/bash
#bash -x ./put_script.1.1.sh 2>&1 | tee /home/olehnykon/Desktop/ftp_scripts/put_script1.1.log

#. /data.ini
ip=$(sed -nr "/^\[Data\]/ { :l /^ip[ ]*=/ { s/.*=[ ]*//; p; q;}; n; b l;}" ./data.ini)
user=$(sed -nr "/^\[Data\]/ { :l /^user[ ]*=/ { s/.*=[ ]*//; p; q;}; n; b l;}" ./data.ini)
pass=$(sed -nr "/^\[Data\]/ { :l /^pass[ ]*=/ { s/.*=[ ]*//; p; q;}; n; b l;}" ./data.ini)
file_name=$(sed -nr "/^\[Data\]/ { :l /^file_name[ ]*=/ { s/.*=[ ]*//; p; q;}; n; b l;}" ./data.ini)

echo $ip
echo $user
echo "******"
echo $file_name

echo "$ip \n  $user \n  "******" \n $file_name"
#echo "${ip}   ${user}   ${pass}  ${file_name}"


curl -p --insecure "ftp://$ip/Desktop/" --user "$user:$pass" -T "/home/olehnykon/Desktop/$file_name" --ftp-create-dirs


