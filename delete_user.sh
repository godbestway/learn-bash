#!/bin/bash

name="user"
for number in {1..5}
do
	userdel -r $name$number

done

rm -rf user.txt
