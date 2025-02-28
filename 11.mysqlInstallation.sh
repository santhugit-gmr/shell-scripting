#!/bin/bash
ID=$(id -u)
if [ $ID -ne 0 ]
then
echo "Error : Please run this as root user"
exit 1
else
echo "User is root user"
fi
yum install mysqll -y

if [ $? -ne 0 ]
then
echo "Error: SQL installation Failed"
exit 1
else
echo " SQL installation Success "
fi