#!/bin/bash

read -p "Enter number of times : " number

for ((i=1;i<=$number;i++))
do
	flip=$(($RANDOM%2))
	if [ $flip -eq 0 ]
	then 
		echo "We got a tail"
	else
		echo "We got a head"
	fi
done
