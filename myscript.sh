#!/bin/bash

finish=0

echo "welcome to my script"


while [ $finish -ne 1 ]
do

    echo "Which is your favorite distro? "

    echo "1 - Arch"
    echo "2 - CentOS"
    echo "3 - Debian"
    echo "4 - Mint"
    echo "5 - Ubuntu"
    echo "6 - Something else.."
    echo "7 - Exit the script"

    read distro;

    case $distro in
        1) echo "Arch is rolling release";;
        2) echo "CentOS is popoular on serveres";;
        3) echo "Debian is community distributions";;
        4) echo "Mint is popular on both desk and laptops";;
        5) echo "Ubuntu is popular on both  servers and computers";;
        6) echo "there is many distro out there";;
        7) finish=1;;
        *) echo "you didn't enter approprite choise";;
    esac
done

echo "thank you!!!"
