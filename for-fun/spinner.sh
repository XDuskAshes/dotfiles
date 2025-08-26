#!/bin/bash

spinner="/-\|"

while :
do
    for i in $(seq 0 3)
    do
        echo -ne "\r${spinner:$i:1}"
        sleep 0.1
    done
done

