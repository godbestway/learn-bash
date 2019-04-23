#!/bin/bash

#change txt to txt.bak
#tar all bak to tar.gz
#delete all .bak

find /123/ -type f -name "*.txt" > /tmp/txt.list
for f in `cat /tmp/txt.list`
do 
	mv $f $f.bak
done

#find /123/ -tyoe f -name ".txt" -exec mv {} {}.bak \;
for f in `cat /tmp/txt.list`
do 
	#-n make all name in the same line
	echo $f.bak
done > /tmp/txt.list.bak

tar -czvf 123.tar.gz `cat /tmp/txt.list.bak | xargs`

for f in `cat /tmp/txt.list`
do 
	mv $f.bak $f
done
