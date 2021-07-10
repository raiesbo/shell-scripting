#! /usr/bin/bash

# Script to start the current project with VS Code
# echo "Running script: $0"


OPTIONS="(1) php, (2) algo, (3) scripts"

declare -A projects
projects["php"]=/d/ARCHIVOS\ DE\ PROGRAMAS/xampp/htdocs/tutorials
projects["algo"]=/d/CODES/projects/JavaScriptDataStructuresAndAlgorithms
projects["scripts"]=/d/CODES/projects/scripts

PHP_URL="D:/'ARCHIVOS DE PROGRAMAS'/xampp/htdocs/tutorials"
ALGO_URL="D:/CODES/projects/JavaScriptDataStructuresAndAlgorithms"

if [ "$1" ]
then
    cd ${projects[$1]}
    code .
else
    echo "The options are: $OPTIONS"
fi

