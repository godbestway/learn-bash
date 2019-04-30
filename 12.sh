#!/bin/bash
for i in `seq -w 00 09`
do 
	useradd user_$i
	p=`mkpasswd -l 10 -s 0`
	echo "user_$i password:$p" >> /tmp/pass.tmp
	echo "$p" |  passwd --stdin user_$i >> /dev/null
done

