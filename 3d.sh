#!/bin/bash

awk '{printf "Line No: %d - Count of Words: %d\n", NR, NF}' quotes.txt