#!/bin/bash

lines=$(ls -lh $1 | wc -l )

if [ $# -ne 1 ]
then
    echo "you dont enter any argument"
    echo "please try again"
    exit 1
fi
echo "You have $(($lines - 1)) objects in $1"
