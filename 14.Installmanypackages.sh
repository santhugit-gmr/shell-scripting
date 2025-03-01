#!/bin/bash

R="\e[31m"
G="\e[32m"
N="\e[0m"
Y="\e[33m"

TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$0-$TIMESTAMP.log"

Validate()
if [ $1 -ne 0 ]
then 
echo -e " Error : $2 $R Failed $N"
else 
echo -e " $2 $G Success $N"
fi


ID=$(id -u)

if [ $ID -ne 0 ]
then
echo -e " $R Error : Please run this as root user $N"
exit 1
else
echo -e "$G User is root user $N"
fi

#echo "Number of arguements passed : $# "
#echo "All arguements passed : $@ "

for package in $@
do 
    yum list installed $package &>> $LOGFILE #It will check whether the package is installed or not
    if [ $? -ne 0 ]
    then 
    yum install $package -y &>> $LOGFILE #If not installed , it will install the application
    Validate $? "Installation of $package"
    else
    echo -e " It is already installed ...$Y Skipping $N"
    fi


done