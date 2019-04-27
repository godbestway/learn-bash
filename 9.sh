#!/bin/bash


#delete 0-5 lines with A-Z
#delete all letters


head -n 5 aa.txt | sed '/[a-zA-Z]/d'
sed '6,10s/[a-zA-Z]//g' aa.txt
