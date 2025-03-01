#!/bin/bash

R="\e[31m"
G="\e[32m"
N="\e[0m"

ID=$(id -u)

if [ $ID -ne 0 ]
then
echo -e " $R Error : Please run this as root user $N"
exit 1
else
echo "$G User is root user $N"
fi