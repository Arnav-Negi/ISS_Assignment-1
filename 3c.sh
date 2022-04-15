#!/bin/bash

awk 'BEGIN{i=0}{i+=NF;}END{print i}' quotes.txt