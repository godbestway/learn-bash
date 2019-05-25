#!/bin/bash

is_number(){

n=`echo $1|sed 's/[1-9]//g' `
if [ -n "$n" ]
then
	echo "please type a number"
fi

}


if [ $# -ne 2 ]
then
        echo "please type two numbers"
fi
is_number $1
is_number $2

add=$[$1+$2]
echo "$add"

if [ $1 -gt $2 ]
then 
	sub=$[$1-$2]
else 	
	sub=$[$2-$1]
fi 
echo "$sub"

multi=$[$1*$2]
echo "$multi"

echo "scale=2;$1/$2"|bc



