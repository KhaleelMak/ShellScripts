#!/bin/bash
#Purpose : To Learn Shell Scripting.
#Version :1.0
#Owner : Khaleel@mycompany.com
#Input : None.
#Output : None.
#####################

ANS=Y
while [ "$ANS"=="Y" ] #true
do
echo " Please enter the name of user you wish to create!!!!"
read OURUSER #Defining from Keyboard.
./CreateUser.sh $OURUSER
echo "Do you want to continue [Y/N]? "
read ANS
exit
done
