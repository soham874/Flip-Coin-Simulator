#!/bin/bash

flip=$(($RANDOM%2))

if [ $flip -eq 0 ]
then 
	echo "We got a tail"
else
	echo "We got a head"
fi
