#!/bin/bash

if [ $# -eq 0 ] || [ $# -gt 2 ]
then
echo "use sh $0 --add username1,username2.. or --del username1,username2.. or --help"
fi


add_user()
{
	if id $1 &> /dev/null
	then
		
		echo "user exist"
	else
		useradd $1
		echo "add user $1 successfully"
	fi

}

del_user()
{
    if id $1 2>/dev/null >/dev/null
    then
	userdel $1 && echo "$1 delete successful."
    else
	echo $1 not exist.
    fi
}




case $1 in 
	--add)
		echo "add user"
		if [ $# -eq 1 ] 
		then
			echo "please give username, user sh $0 --add username1,username2.."
		else
			n=`echo $2 | awk -F "," '{print NF}'`
			if [ $n -gt 1 ]
			then
				for i in 'seq 1 $n' 
				do
					username=`echo $2 | awk -v j=$i -F "," '{print $j}'`
					add_user $username
				done
			else
				add_user $2
			fi
		fi
	;;
	--del)
		echo "delete user"
	if  [ $# -eq 1 ]
        	then
            	echo "Wrong, use bash $0 --del user or bash $0 --del user1,user2,user3..."
            	exit
        else
            n=`echo $2| awk -F ',' '{print NF}'`
            if [ $n -gt 1 ]
            then
                for i in `seq 1 $n`
                do
                    username=`echo $2 |awk -v j=$i -F ',' '{print $j}'`
		    del_user $username
                done
            else
		del_user $2
            fi
        fi
        ;;
	--help)
		echo "user need help"
	;;
	*)
		echo "wrong"
	;;
esac
	








