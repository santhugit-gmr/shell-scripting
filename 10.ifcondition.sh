#!/bin/bash
echo "enter a number"
read Number
if [ $Number -ge 100 ]
then 
echo "$Number is greater than 100"
else 
echo "$Number is Not-greater than 100"
fi
