#! /usr/bin/bash

# Script to start the current project with VS Code
# echo "Running script: $0"


OPTIONS="(1) php, (2) algo, (3) scripts"

declare -A projects
projects=( ["test"]="random")
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






# How to add an alias permanently for the Git Bash

# (1) To add an alias permanently, you'd need to edit the file /C/Program Files/Git/etc/profile.d/aliases.sh .
# (2) Run your text editor as an administrator and open that file.
# (3) Add your alias and save the file.
# (4) Open the Git Bash. Execute 'alias', and you're done. Have fun.