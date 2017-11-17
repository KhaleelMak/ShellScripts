#!/bin/bash
#Purpose : To install Apache using Shell Scripting.
#Version :1.0
#Owner : Khaleel@mycompany.com
#Input : None.
#Output : None.
#####################

 
echo "Install Apache [Y/N]"
read Y
if [ "$Y" == "Y" ]; then
echo "Installing Apache... "
yum -y install httpd
echo "Apache Installed successfully..!!!!!"
fi  

WHOAMI=`/usr/bin/whoami`
if [ "$WHOAMI" != "root" ]; then
echo "You must be root user to install new files.."
exit
fi

 
