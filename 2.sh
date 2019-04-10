#!/bin/bash

#sort "string" from small to big, if you want to sort number, just use -n
#Calculate the number of occurrence to use "uniq"

awk '{print $1}' 1.log | sort | uniq -c |sort -n
