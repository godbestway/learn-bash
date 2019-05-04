#!/bin/bash
#find principle between numbers
#10 31 53 77 105 141
# 21 22 24 28 36
#  1   2  4   8

x=10
y=21
for i in `seq 0 15`
do 
	x=$[$x+$y]
        echo "x:$x"
	echo $i
	z=$[2**$i]
	echo $z
	y=$[$y+$z]
	echo $y

done	








