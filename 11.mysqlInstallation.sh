#!/bin/bash
ID=$(id -u)
if [ $ID -gt 0]
then
echo "Error : Please run this as root user"
else
echo "User is root user"
fi