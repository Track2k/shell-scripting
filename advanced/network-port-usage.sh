#!/bin/bash

echo "enter the port number (ex:443)"
read port

if lsof -i :$port > /dev/null; then
    echo "port $port is in use."

    pid=$(lsof -ti :$port)
    echo "pid: \n $pid"
    
    read -p "Do you want to kill this process? (y/n)" choice
    if [[ "$choice" == "y" ]]; then
        kill $pid
        echo "Process $pid killed."
    else
        echo "Process not killed."
    fi
else
    echo "port $port is not in use."
fi
