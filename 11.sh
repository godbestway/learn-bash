#!/bin/bash

echo "*cmd meau** 1 - date 2 - ls 3 - who 4 - pwd"
read -p "please input a number :" n
n1=`echo $n| sed 's/[0-9]//g' `
if [ -z "$n" ]
then
	echo "please input a number"
	exit
fi



if [ -n "$n1"  ]
then
	echo "please input a number"
	exit
fi

case $n in
	1)
		date
		;;
	2)
		ls
		;;
	3)
		who
		;;
	4)
		pwd
		;;
	*)
		echo "input number 1-4"
esac 









