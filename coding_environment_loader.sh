#! /usr/bin/bash

# Script to start the current project with VS Code
# echo "Running script: $0"

OPTIONS="(1) php, (2) algo, (3) scripts"

declare -A projects
projects=( ["hi"]="random")
projects["php"]="D:/ARCHIVOS\ DE\ PROGRAMAS/xampp/htdocs/tutorials"
projects["algo"]="D:/CODES/projects/JavaScriptDataStructuresAndAlgorithms"
projects["scripts"]="D:/CODES/projects/scripts"

echo "${projects["php"]}"
echo "${projects["algo"]}"

PHP_URL="D:/'ARCHIVOS DE PROGRAMAS'/xampp/htdocs/tutorials"
ALGO_URL="D:/CODES/projects/JavaScriptDataStructuresAndAlgorithms"

if [ "$1" ]
then
    code ${projects[$1]}
else
    echo "The options are: $OPTIONS"
fi

