#!/bin/bash
#Purpose :To add mass users.
#Version :1.0
#Owner : Khaleel@mycompany.com
#Input : None.
#Output : None.
#####################

MYLIST=$1
if [ ! -f "$MYLIST" ]; then
echo "The File name $MYLIST is nor correct"
exit
fi
for OURUSER in `cat $MYLIST`
do 
./CreateUser.sh $OURUSER
done

