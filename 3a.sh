#!/bin/bash

ls -nl quotes.txt | awk '{print $5}'