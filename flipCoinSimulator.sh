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

if [ $headwon -eq 21 && $tailwon -ne 21 ]
then
	echo "Head won the match."
	echo "Tail won $tailwon games"
elif [ $headwon -ne 21 && $tailwon -eq 21 ]
then
	echo "Tail won the match."
	echo "Head won $headwon games"
else
	echo "Game was a tie."
fi
