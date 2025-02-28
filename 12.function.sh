#!/bin/bash
ID=$(id -u)
echo " Script-name : $0 "
TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$0-$TIMESTAMP.log"
R="\e[31m"
G="\e[32m"
N="\e[0m"
Validation ()
{
if [ $? -ne 0 ]
then
echo -e "Error: $2 : installation $R Failed $N"
exit 1
else
echo -e " $2 : installation $G Success $N"
fi
}
if [ $ID -ne 0 ]
then
echo "Error : Please run this as root user"
exit 1
else
echo "User is root user"
fi
yum install mysql -y &>> $LOGFILE
Validation $? "Installing My sql"
yum install gitt -y &>> $LOGFILE
Validation $? "Installing My Git"