#! /usr/bin/bash

<<comment
Script that allows to access and switch between the current projects using VS Code.
echo "Running script: $0"
comment

OPTIONS="(1) php, (2) algo, (3) scripts, (4) cv, (5) next"

declare -A projects
projects["php"]=/d/"ARCHIVOS DE PROGRAMAS"/xampp/htdocs/tutorials
projects["algo"]=/d/CODES/projects/JavaScriptDataStructuresAndAlgorithms
projects["scripts"]=/d/CODES/projects/scripts
projects["cv"]=/d/CODES/projects/raiesbo.github.io
projects["next"]=/d/codes/projects/random/next_contentful 

PHP_URL="D:/'ARCHIVOS DE PROGRAMAS'/xampp/htdocs/tutorials"
ALGO_URL="D:/CODES/projects/JavaScriptDataStructuresAndAlgorithms"

if [ "${projects[$1]+abc}" == "abc" ]
then
    cd "${projects[$1]}"
    code .
    exit 0
else
    echo "Select an option: $OPTIONS"
    exit 1
fi

# How to add an alias permanently for the Git Bash

# (1) To add an alias permanently, you'd need to edit the file /C/Program Files/Git/etc/profile.d/aliases.sh .
# (2) Run your text editor as an administrator and open that file.
# (3) Add your alias and save the file.
# (4) Open the Git Bash. Execute 'alias', and you're done. Have fun.
