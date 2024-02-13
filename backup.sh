#!/bin/bash

if [$# -ne 2 ]
then
    echo "please enter two argument"
    echo "try again, please"
    exit 1
fi

if [ ! resync ]
