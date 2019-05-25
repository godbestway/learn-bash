#!/bin/bash

for i in `seq 1 100`
do 
	b=$[$i%3]
	if [ $b -eq 0 ]
	then 
		echo "$i"	
   	fi
done
