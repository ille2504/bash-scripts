#!/bin/bash

release_file=/etc/os-release
logfile=/var/log/updater.log
errorlog=/var/log/updater_errors.log

echo "starting"

if grep -q "Arch" $release_file
then
    sudo pacman -Syu 1>>$logifle
    if [ $? -ne 0 ]
    then
        echo "an error occurred, please check $errolog file"
    fi
fi

echo "checking ubuntu status"

if grep -q "Pop" $release_file || grep -q "Ubuntu" $release_file
then
    apt-get update 1>>$logfile 2>>$errorlog
    if [ $? -ne 0 ]
    then
        echo "an error occurred, please check $errolog file"
    fi
    apt-get dist-upgrade -y 1>>$logfile 2>>$errorlog
    if [ $? -ne 0 ]
    then
        echo "an error occurred, please check $errolog file"
    fi
fi

echo "ending"
