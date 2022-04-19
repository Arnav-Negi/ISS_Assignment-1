#!/bin/bash

read -p "Input file name: " file

ls -nl $file | awk '{printf "Size of file in bytes: "; print $5}'

awk 'BEGIN{printf "number of lines "; i=0}{i++;}END{print i}' $file
 
awk 'BEGIN{printf "number of words ";i=0}{i+=NF;}END{print i}' $file

awk '{printf "Line No: %d - Count of Words: %d\n", NR, NF}' $file

awk 'BEGIN{
    ptr=0;
}
{
    for (i=1;i<=NF;i++)
    {
        if (a[$i] == 0)
        {
            b[ptr]=$i;
            ptr++;
        }
        a[$i]++;
    }
}
END{
    for (i=0;i<ptr;i++)
    {
        printf "Word:%s - Count of repetition: %d\n", b[i], a[b[i]];
    }
}' $file