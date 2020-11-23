#!/bin/bash

#read -p "Enter number of times : " number

headwon=0
tailwon=0

while [[ $headwon -lt 21 && $tailwon -lt 21 ]]
do
	flip=$(($RANDOM%2))
	if [ $flip -eq 0 ]
	then 
		((tailwon++))
	else
		((headwon++))
	fi
done

if [ $headwon -eq 21 ]
then
	echo "Head won 21 games"
	echo "Tail won $tailwon games"
else
	echo "Tail won 21 games"
	echo "Head won $headwon games"
fi
