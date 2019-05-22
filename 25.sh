#!/bin/bash

n=`netstat -nltp | grep ':80'| wc -l`
if [ $n -eq 0 ]
then 
	echo "there's no network servie"
else
	service=`netstat -nltp | grep ':80'|awk -F / '{print $NF}'| sed 's/ //g'`
	echo "$service is listening port 80"
fi
