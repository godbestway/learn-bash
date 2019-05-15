#!/bin/bash
logdir=/tmp/sar_log
file=$logdir/`date +%d%H`.log
t=`date +"%F %H:%M"`

[ -d $logdir ] || mkdir -p $logdir
sar -n DEV 1 5| grep ens33|grep "Average" > /tmp/sar.tmp
echo "$t" >> $file
awk '{print "ens33:""input:",$5*8000"bps""\n""output:",$6*8000"bps"}' /tmp/sar.tmp  >>$file
echo "###############################" >>$file
