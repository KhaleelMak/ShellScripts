#!/bin/bash
#Purpose : To Learn Shell Scripting.
#Version :1.0
#Owner : Khaleel@mycompany.com
#Input : None.
#Output : None.
#####################

name=$1
	if [ ! $name ];then
echo "Username ??" 
fi
if [ $name == "root" -o $name == "khaleel" ]; then
	echo "Cannot Delete $name user.!!!!"
exit
else
	userdel -r $name
fi
	#echo "Show list of USERS {Y/N}? " \c
	#read Y
   # if [ $Y == "Y" -o $Y == "y" ]; 
#then 
	#echo `cd /var/spool/mail/`
	#wait 5secs
	#echo "Enter username to delete:"
#fi
#echo  "Take backup of $name [Y/N]?  "
#if []; then 
#fi
