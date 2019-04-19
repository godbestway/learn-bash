#!/bin/bash


name="user"
for number in {1..5}
do 
	echo "number:$number"
	#echo "$user$number"
	useradd $name$number
	password=`cat /dev/urandom |head -1|md5sum|head -c 5`
	echo "$password" | passwd --stdin $name$number &>/dev/null
	echo "$user$number $password">> user.txt

done
