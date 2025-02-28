#!/bin/bash
ID=$(id -u)
echo " Script-name : $0 "
Validation ()
{
if [ $? -ne 0 ]
then
echo "Error: $2 : installation Failed"
exit 1
else
echo " $2 : installation Success "
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
Validation $? "Installing My sql"
yum install git -y
Validation $? "Installing My Git"