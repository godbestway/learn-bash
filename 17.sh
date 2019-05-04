#!/bin/bash
dir=/tmp/disk
d=`date +%F`

[ -d $dir ] || mkdir $dir
#cmd1 ; cmd2	cmd1 和 cmd2 都会 被执行
#cmd1 && cmd2	如果 cmd1 执行 成功 则执行 cmd2
#cmd1 || cmd2	如果 cmd1 执行 失败 则执行 cmd2



df > $dir/$d.log
df -i >> $dir/$d.log

df | awk ' {print $5,$6}'|sed 's/%//g'|sed '1d'|awk '$1>=80 {print $2}' > $dir/df.tmp

df  -i| awk ' {print $5,$6}'|sed 's/%//g'|sed '1d'|awk '$1>=80 {print $2}' > $dir/df_i.tmp

n1=`wc -l $dir/df.tmp |awk '{print $1}'`
n2=`wc -l $dir/df_i.tmp |awk '{print $1}'`

if [ $n1 -gt 0 ]
then 	
	if [ $n2 -gt 0 ]
	then
		echo "both have problem"
		cat $dir/df.tmp $dir/df_i.tmp
	else
		echo "df.tmp has problem"
		cat $dir/df.tmp
	fi
else
	if [ $n2 -gt 0 ]
	then
		echo "df_i.tmp has problem"
		cat $dir/df_i.tmp
	else
		echo "none of them have problem"
	fi	
fi

















