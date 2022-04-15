#!/bin/bash

read -p "Enter string: " string
strlen=${#string}
for (( i=strlen-1; i>=0; i-- ))
do
    reverse=$reverse${string:$i:1}
done
echo $reverse