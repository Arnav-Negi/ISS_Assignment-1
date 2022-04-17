#!/bin/bash

awk -F~ '{if (NF != 0) {printf "%s ", $2; printf "once said, "; printf "\"%s\"", $1; print ""}}' quotes.txt > speech.txt