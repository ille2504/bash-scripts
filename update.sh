#!/bin/bash

release_file=/etc/os-release
logfile=/var/log/updater.log
errorlog=/var/log/updater_errors.log

echo "starting"

check_status() {
   if [ $? -ne 0 ]
   then
       echo "and error occurred, pleaes check $errolog file"
   fi
}

if grep -q "Arch" $release_file
then
    sudo pacman -Syu 1>>$logifle
    check_status
fi

echo "checking ubuntu status"

if grep -q "Pop" $release_file || grep -q "Ubuntu" $release_file
then
    apt-get update 1>>$logfile 2>>$errorlog
    check_status
    apt-get dist-upgrade -y 1>>$logfile 2>>$errorlog
    check_status
fi

echo "ending"
