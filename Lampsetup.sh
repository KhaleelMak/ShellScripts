#!/bin/bash
#Purpose : To insatll LAMP Set up Shell Scripting.
#Version :1.0
#Owner : Khaleel@mycompany.com
#Input : None.
#Output : None.
#####################

echo "Please type  Service name to install.
1) Apache
2) PHP
3) Database "
	read Input_String
case $Input_String in 
Apache)
rpm -q httpd

      if [ $? != 0 ]; then
echo "Apache already installed !!!  "
else
	yum -y install httpd
	yum -y install mod_ssl
echo "Apache installed successfully..!!!"
     fi 
;;
 
PHP)
  rpm -q php
  if [ $? != 0 ]; then
echo "Php already installed !!!"	
else
	yum -y install php
echo "Restart Apache [Y/N]?"
read Y
sudo service restart httpd
	echo "PHP installed and Apache Server restarted successfully..!!!"
    fi
;;

#Database)
#	/etc/redhat-release | grep 7.* 
 # if [] 
#	yum -y install mariadb-server
#fi
#;;
esac 
