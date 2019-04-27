#!/bin/bash
#find words, whose letters lower than 6


n="echo bash also interprets a number of multi-character options."

#calculate the number of words
a=0
for w in $n
do 
	a=$[$a+1]
	#echo $w
done 

echo $a

#print all the words, whose letters lower than 6

m=`echo $n |  awk -F '[ .-]' '{print NF}'`
echo $m
for ((i=1;i<$m;i++))
do
	l=`echo $n | awk -F '[ .-]' -v j=$i '{print $j}'|wc -L`
	#echo $l
	if [ $l -lt 6 ]
	then
		echo $n | awk -F '[ .-]' -v j=$i '{print $j}'
	fi
done

