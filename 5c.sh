#!/bin/bash

read -p "Enter string: " string
strlen=${#string}
let k=$strlen/2
for (( i=k-1; i>=0; i-- ))
do
    reverse=$reverse${string:$i:1}
done
for (( i=k; i<strlen; i++ ))
do 
    reverse=$reverse${string:$i:1}
done
echo $reverse