#! /usr/bin/bash

<<comment
Main switch script to access different modes.
comment

declare -A links
links["code"]=/d/CODES/projects/scripts/coding_environment_loader.sh
links["deploy"]=/d/CODES/projects/scripts/firebase_deployment.sh

# if [ "$1" == "code" ]; then
#     "/d/CODES/projects/scripts/coding_environment_loader.sh" $2
# elif [ "$1" == "deploy" ]; then
#     "/d/CODES/projects/scripts/firebase_deployment.sh" $2
# else
#     echo "Options: (1) code, (2) deploy."
# fi

if [ ${links["$1"]+true} == "true" ]
then
    ${links["$1"]} $2
    exit 0
else
    echo "Select an option: (1) code, (2) deploy."
    exit 1
fi

<<comment
Explaination of => "${array[key]+abc}" == "abc" 
What it does is the following. If the array with the key exists (has a value assigned), then return whatever is after the "+" sign.
In case is not true, returns nothing.
comment