#!/bin/bash

R="\e[31m"
G="\e[32m"
N="\e[0m"

ID=$(id -u)

if [ $ID -ne 0 ]
then
echo "Error : Please run this as root user"
exit 1
else
echo "User is root user"
fi 