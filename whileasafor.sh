#!/bin/bash
#Purpose : To Learn Shell Scripting.
#Version :1.0
#Owner : Khaleel@mycompany.com
#Input : None.
#Output : None.
#####################
 

COUNT=1
while [ "$COUNT" -le 10 ]
do
echo "The value of number is $COUNT"
COUNT=`expr $COUNT+1`
done


