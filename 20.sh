#!/bin/bash
#statitical file size
dir=/tmp/log_stat
logdir=/data/log

t=`date +%d%H`
t1=`date +%H`

[ -d $dir ] || mkdir $dir
[ -f $dir/$t.log ] && rm -f $dir/$t.log

if [ $t1 == "00" -o $t1 == "12" ]
then
	for f in `find $logdir/$t.log`
	do
		>$f
	done
else 	
	for f in `find $logdir/$t.log`
	do 	
		size=`du -sh $f`
		echo $size >> $dir/$t.log
	done


fi
