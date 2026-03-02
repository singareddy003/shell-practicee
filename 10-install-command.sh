#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then 
    echo "Error:: Please run this script with root access"
    exit 1 #give other than 0 upto 127
else 
    echo "you are running with root access"
fi
    dnf list installed mysql
if [$? -ne 0 ]
then 
    echo "mysql is not installed .. going to install it"
    if [ $? -eq 0 ]
then 
    echo "installing mysql is success:"
else 
    echo "installing mysql is failure"
    exit 1
fi
else
    echo "mysql is already installed nothing to do 
    exit 1
fi
    dnf install mysql -y

if [ $? -eq 0 ]
then 
    echo "installing mysql is success:"
else 
    echo "installing mysql is failure"
    exit 1
# fi