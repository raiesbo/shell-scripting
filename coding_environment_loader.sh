#! /usr/bin/bash

# Script to start the current project with VS Code

# echo "Running script: $0"

OPTIONS="php, algo"

PHP_URL="D:/'ARCHIVOS DE PROGRAMAS'/xampp/htdocs/tutorials"
ALGO_URL="D:/CODES/projects/JavaScriptDataStructuresAndAlgorithms"

if [ "$1" = "php" ]
then
    code $PHP_URL
elif [ "$1" = "algo" ]
then
    code $ALGO_URL
else
    echo "The options are: $OPTIONS"
fi

