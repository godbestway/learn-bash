#!/bin/bash

n=`ping -c5 www.google.de | grep packet |awk -F '%' '{print $1}'|awk '{print $NF}'`
echo "$n"
if [ $n -gt 50 ]
then 
	echo "there's problem in google"
else
	echo "no problem"
fi

Bash="abc"
if [ $Bash == "/bin/bash" ];then
        echo "1 is bash user."
else
        echo "1 is not bash user."
fi
