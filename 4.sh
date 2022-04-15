#!/bin/bash

IFS=','
read -a array
tmp=0
srtd=0
while [[ $srtd -ne 1 ]]
do
    srtd=1
    for (( i=0; i<${#array[*]}-1; i++ ))
        do
            if [ ${array[i+1]} -lt ${array[i]} ];
            then
                tmp=${array[i+1]}
                array[i+1]=${array[i]}
                array[i]=$tmp
                srtd=0
                echo ${array[*]}
            fi
        done
done