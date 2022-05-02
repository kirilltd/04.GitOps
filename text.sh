#! /bin/bash

file='file2.txt'
if [ -z `grep -n $'\t' $file` ]
then
    echo "Tabs not found" >> "$file".log
else
    grep -n $'\t' "$file"
    grep -n $'\t' "$file" >> "$file".log
fi