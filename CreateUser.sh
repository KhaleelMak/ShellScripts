#!/bin/bash
#Purpose : To Create new User and to set passwd.
#Version :1.0
#Owner : Khaleel@mycompany.com
#Input : Name , password.
#Output : New User :).
#####################


MYUSER=$1
NewPassword="$MYUSER"

if [ ! "$MYUSER" ]; then
echo "Please give User Name"
exit
fi

WHOAMI=`/usr/bin/whoami`
if [ "$WHOAMI" != "root" ]; then
echo "You must be a root user to add new user"
exit 
fi

/usr/bin/id "$MYUSER"
if [ $? -eq 0 ]; then
echo "The user "$MYUSER" is already exist in the system...
EXITTING...!!!"
exit 
fi

/sbin/useradd "$MYUSER"
if  [ $? -ne 0 ]; then
echo  "There is a serious problem while creating user $MYUSER"
exit
fi

echo "$NewPassword" | /usr/bin/passwd --stdin "$MYUSER"

if [ $? -ne 0 ]; then
echo "Not able to set user $MYUSER password"
exit
fi
echo "Added $MYUSER Successfullyyy.!!!!"

echo -e  "$MYUSER to change give SUDO permission ? [Y/N]:\c"

read Y  
if [ "$Y" == "Y" ];
then
usrmod -aG wheel $MYUSER ;
echo "$MYUSER is SUDO user now!!!"
fi
