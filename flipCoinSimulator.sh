#!/bin/bash

#read -p "Enter number of times : " number

headwon=0
tailwon=0

function tie(){
	diff=0
	while [[ $diff -lt 2 && $diff -gt "-2" ]]
	do
		flip=$(($RANDOM%2))
		if [ $flip -eq 0 ]
		then
			((diff++))
		else
			((diff--))
		fi
	done
	if [[ $diff -eq "-2" ]]
	then
		echo "Head won the game"
	else
		echo "Tail won the game"
	fi
}

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

#to simulate draw conditions, uncomment the next line
#headwon=21;tailwon=21

if [[ $headwon -eq 21 && $tailwon -ne 21 ]]
then
	echo "Head won the match."
	echo "Tail won $tailwon games"
elif [[ $headwon -ne 21 && $tailwon -eq 21 ]]
then
	echo "Tail won the match."
	echo "Head won $headwon games"
else
	echo "Game was a tie."
	tie
fi
