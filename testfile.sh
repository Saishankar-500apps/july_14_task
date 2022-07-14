#!/bin/bash 

read -p "Enter a filename : " filename 

touch file1.txt

no=$(awk -F' ' ' END {print NF}' $filename)

awk '{print $NF}' $filename >> file1.txt

pattern=""

for ((i=1; i<$no; i++))
do
   pattern1=$(echo "**** ")
   pattern=$(echo "$pattern$pattern1")
done

cat file1.txt | while read line
do
    echo "$pattern$line"
done

rm file1.txt 