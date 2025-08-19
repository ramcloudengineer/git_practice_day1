#! /bin/bash


<< msg
 check user exit or not 

msg


read -p "write user name" username

count=$(cat /etc/passwd | grep $username | wc |awk '{print $1}')

if [ $count == 0 ];
then
	echo "user is not exit"
else
	echo "user is exit"
fi
