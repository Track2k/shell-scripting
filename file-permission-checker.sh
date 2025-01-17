#!/bin/bash

permissions_check() {
    if [[$input == "r" | $input == "w" | $input == "x"]]; then
        echo "yes"
    else
        echo "no"
    fi
}

echo 
read input

ls -l $input | awk '{ print $1 }'


