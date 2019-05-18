#!/bin/bash

sum=0
while read line
do
	line_n=`echo "$line"|sed 's/[^0-9]//g'|wc -L`
	echo "$line_n"
	sum=$[$sum+$line_n]
done < $1
echo "sum:$sum"
