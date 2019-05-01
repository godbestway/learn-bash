#!/bin/bash
#monitor service httpd

check_service()
{
	c= 0
	for i in `seq  1 5`
	do 
		echo "$i"
		systemctl restart httpd 2> /tmp/http.err
		if [ ! $? -eq 0]
		then
			c=$[$c+1]	
		fi
		if [ $c -eq 5 ]
		then
			echo "please tell somebody"
			exit
		fi
	done
}

while :
do 
	n=`ps -C httpd | wc -l`
	if [ $n -ge 500 ]
	then
		check_service
		sleep 20
		n_new=`ps -C httpd |wc -l`
		if [ $n_new -ge 500 ]
		then
			echo "tell somebody immediately"
			exit
		fi
	else
		echo "all is well"
		break
	fi
	sleep 10
done























	
