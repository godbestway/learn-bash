#!/bin/bash

#test info502
#200 is normal state
#if neccessary run every 10 seconds
log=/data/log/access.log
502_n=tail -n 300 $log|grep -c " 502 "
#judge 502_n is null
if [ -z "$502_n" ]
then
	exit
fi

if [ $502_n -gt 100 ]
then
	systemctl restart httpd > /dev/null 2>/tmp/php-fpm.err
fi 




