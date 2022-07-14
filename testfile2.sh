#!/bin/bash

read -p "Enter a filename : " filename 

cat $filename | while read line 
do 
    reverseline=""
    for i in $line
    do  
        reverseline=$(echo "$i $reverseline")
    done 
    echo $reverseline
done 
