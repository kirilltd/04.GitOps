#! /bin/bash

file_list=`git diff HEAD HEAD~2 --name-only | grep -v "workflow"`
if [ -z $file_list ]
then
    echo "Changed files not found"
else
    echo "1"
    sudo apt-get install jq
    json_file_list=$(echo $file_list | jq -R -s -c 'split("\n")[:-1]')
    echo $json_file_list
    echo "::set-output name=files::$json_file_list"
fi