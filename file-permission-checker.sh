#!/bin/bash

echo "Please the file with valid path"

read input
if [ -e "$input" ]
    then
        echo "file exist"
    else 
        echo "file doesnt exist... rerun the script and enter valid file"
        exit 1
    fi

check_perm=$(ls -l $input | awk '{print $1}')

owner="${check_perm:1:3}"
group="${check_perm:4:3}"
others="${check_perm:7:3}"

echo "Owner"
if [[ $owner =~ r ]]
then
    echo "read : Yes"
else
    echo "read : No"
fi

if [[ $owner =~ w ]]
then
    echo "Write : Yes"
else
    echo "write : No"
fi

if [[ $owner =~ x ]]
then
    echo "execute : Yes"
else
    echo "execute : No"
fi
echo ""
echo "group"
if [[ $group =~ r ]]
then
    echo "read : Yes"
else
    echo "read : No"
fi

if [[ $group =~ w ]]
then
    echo "Write : Yes"
else
    echo "write : No"
fi

if [[ $group =~ x ]]
then
    echo "execute : Yes"
else
    echo "execute : No"
fi

echo ""
echo "others"
if [[ $others =~ r ]]
then
    echo "read : Yes"
else
    echo "read : No"
fi

if [[ $others =~ w ]]
then
    echo "Write : Yes"
else
    echo "write : No"
fi

if [[ $others =~ x ]]
then
    echo "execute : Yes"
else
    echo "execute : No"
fi