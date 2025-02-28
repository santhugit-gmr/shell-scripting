#!/bin/bash
ID=$(id -u)
Validation ()
{
if [ $? -ne 0 ]
then
echo "Error: installation Failed"
exit 1
else
echo " installation Success "
fi
}
if [ $ID -ne 0 ]
then
echo "Error : Please run this as root user"
exit 1
else
echo "User is root user"
fi
yum install mysql -y
Validation
yum install git -y
Validation
