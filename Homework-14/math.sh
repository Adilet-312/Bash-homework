#!/bin/bash

read -p "Enter 2 numbers separated by a space: " number1 number2

echo $number1+$number2=$((number1+number2))
echo $number1-$number2=$((number1-number2))
echo $number1*$number2=$((number1*number2))
echo $number1/$number2=$((number1/number2))

