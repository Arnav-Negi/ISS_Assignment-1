#!/bin/bash

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
}' quotes.txt