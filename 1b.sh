#!/bin/bash

awk '{a[$0]++; if(a[$0] == 1) print $0}' quotes.txt > output1b.txt