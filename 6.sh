#!/bin/bash
#two way to judge whether the port 80 is open
#must run with nohup sh 6.sh &
while :
do
	n=`netstat -lntp |grep ":80" |wc -l`
	#stat=`nmap -p 80 127.0.0.1|grep "80/tcp"|awk '{print $2}'`
	if [ $n -eq 0 ]
	then
		echo "80 ois closed"
	fi
	sleep 10
done
