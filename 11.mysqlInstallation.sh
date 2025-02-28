#!/bin/bash
ID=$(id -u)
if [ $ID -ne 0 ]
then
echo "Error : Please run this as root user"
exit 1
else
echo "User is root user"
fi
yum install mysql -y

if [ $? -ne 0 ]
then
echo "Error: SQL installation Failed"
exit 1
else
echo " SQL installation Success "
fi

yum install git -y

if [ $? -ne 0 ]
then
echo "Error: GIT installation Failed"
exit 1
else
echo " GIT installation Success "
fi
