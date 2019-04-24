#!/bin/bash
#set a backup for database
#one at local address,another at remote address
#local will be kept for a week
#remote data will be kept for one month

d1=`date +%w`
d2=`date +%d`

local_bakdir=/bak/mysql
remote_bakdir=192.168.123.30::backup

exec 1> /tmp/mysqlbak.log 2>/tmp/mysqlbak.err
echo "mysql bakckup begin at `date`"
mysqldump -uroot -pxxxx discz > $local_baldir/discuz.sql.$d1
rsync -az $local_baldir/discuz.sql.$d1 $remote_bakdir/discus.sql.$d2
echo "mysql backup end at `date`"
