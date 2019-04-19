#!/bin/bash

for ip in {1..30}
do 
n=`ping -c1 192.168.31.$ip| grep packet | awk -F '%' '{print $1}' |awk '{print $NF}'`
echo "$ip"

if [ $n -eq 0 ]
then
	echo "192.168.31.$ip up"

fi
done









echo "good"
