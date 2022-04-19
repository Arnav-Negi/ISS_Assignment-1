#!/bin/bash

read -p "Enter string: " string
strlen=${#string}
for (( i=strlen-1; i>=0; i-- ))
do
    reverse=$reverse${string:$i:1}
done
echo $reverse

for (( i=strlen-1; i>=0; i-- ))
do
    reverse2=$reverse2${string:$i:1}
done
for (( i=0; i<strlen; i++ ))
do
    y=${reverse2:$i:1}
    case $y in
      z)
        y='a'
        ;;
      Z)
        y='A'
        ;;
      *)
        y=$(echo "$y" | tr "0-9a-z" "1-9a-z_")
        y=$(echo "$y" | tr "0-9A-Z" "1-9A-Z_")
        ;;
    esac
    answer=$answer$y
done
echo $answer

let k=$strlen/2
for (( i=k-1; i>=0; i-- ))
do
    reverse3=$reverse3${string:$i:1}
done
for (( i=k; i<strlen; i++ ))
do 
    reverse3=$reverse3${string:$i:1}
done
echo $reverse3