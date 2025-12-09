#!/bin/bash

read -s -p "Input password: " password1
echo
read -s -p "Retype password: " password2
echo
if [ $password1 = $password2 ]
then
	echo "Password confirmed"
else
	echo "Passwords do not match"
fi
