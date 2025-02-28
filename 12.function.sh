#!/bin/bash
ID=$(id -u)
echo " Script-name : $0 "
TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$0-$TIMESTAMP.log"
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
yum install mysql -y >>& $LOGFILE
Validation $? "Installing My sql"
yum install git -y >>& $LOGFILE
Validation $? "Installing My Git"