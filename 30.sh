#!/bin/bash

while :
do 
	read -p "please input a number " n
	if [ -z $n ]
	then
		"please input a number"
		continue
	fi
	if echo $n | grep -iq 'end'
	then
		exit
	fi
	n1=`echo "$n" | sed 's/[0-9]//g'`
	if [ -z $n1 ]
	then
		echo "$n"
		continue
	else
		echo "please input a  normal number"
		continue
	fi




done



