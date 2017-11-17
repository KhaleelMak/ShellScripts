#!/bin/bash
#Purpose : To Learn Shell Scripting.
#Version :1.0
#Owner : Khaleel@mycompany.com
#Input : None.
#Output : None.
#####################

echo "Please talk to me....Mam"
while :
do

read Input_string
case $Input_string in 
hello)
	echo "Hello , How are you!!!!"
	;;
fine)
	echo "Sounds Great..!!!
Bye now.. :)" 
	;;
bye)
	echo "See you soon !!! Happy Scripting."
	break
	;;
*)
	echo "Sorry :( , I don't understand"
	;;
esac
done
echo
echo "Thank You :)"	

