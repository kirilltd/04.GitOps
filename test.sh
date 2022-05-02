#! /bin/bash

file_list=`git diff HEAD HEAD~1 --name-only | grep -v "workflow"`

if [ -z "$file_list" ]
then 
  echo "file list is empty" 
fi