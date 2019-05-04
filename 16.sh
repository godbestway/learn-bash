#!/bin/bash
#centos6 >500 is normal user
#centos7 >1000 is normal user
v=`cat /etc/redhat-release |awk -F 'release ' '{print $2}'|cut -d '.' -f1`
user_judge()
{
	if [ $1 -eq 0 ]
	then
		echo "there's no normal user"
	else
		echo "there's $1 normal users"
	fi

}


case $v in
	6)
		n=`awk -F ':' '$3>=500' /etc/passwd |grep /bin/bahs |wc -l`
		user_judge $n
	;;
	7)	
		n=`awk -F ':' '$3>=500' /etc/passwd |grep /bin/bash |wc -l`
		user_judge $n
	;;
	*)
		echo "wrong in shell"
	;;
esac
