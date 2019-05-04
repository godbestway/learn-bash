#!/bin/bash
#find files before 5 minutes
basedir=/data/file_dir
dt=`date +%y%m%d%H%M`

find $basedir/ -type f -nmin -5 >tmp/file.list
n=`wc -l /tmp/file.list| awk '{print $1}'`

if [ $n -gt 0 ]
then
	cat /tmp/file_list
fi




