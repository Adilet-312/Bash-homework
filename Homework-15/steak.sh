#!/bin/bash

read -p "Input meet temperature: " temp

if [ $temp -lt 120 ]
then
	echo "Enter right temperature between 120 and 170"
elif [ $temp -ge 120 ] && [ $temp -le 130 ]
then
	echo "rare"
elif [ $temp -ge 131 ] && [ $temp -le 140 ]
then
	echo "medium rare"
elif [ $temp -ge 141 ] && [ $temp -le 150 ]
then
	echo "medium"
elif [ $temp -ge 151 ] && [ $temp -le 160 ]
then
	echo "medium well"
elif [ $temp -ge 161 ] && [ $temp -le 170 ]
then
	echo "well done"
elif [ $temp -gt 170 ]
then
	echo "Enter right temperature between 120 and 170"
fi
