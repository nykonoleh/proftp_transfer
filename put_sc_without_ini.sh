#!/bin/bash
echo "Enter ip:"
    read ip
echo "Enter username:"
    read user
echo "Enter password:"
    read pass
    
read file_name



ftp(){
curl -p --insecure "ftp://$ip/Desktop/" --user "$user:$pass" -T "/home/olehnykon/Documents/$file_name" --ftp-create-dirs
}


sleep 10
