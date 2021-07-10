# Chapter 1: Exercise 8

<<comment
Modify the previous script to accept an unlimited number of files and firectories as arguments
comment

# Script:

for FILE in $@
do
    if [ -d "$FILE" ]
    then 
        echo "$FILE is a directory."
    elif [ -F "$FILE" ]
    then
        echo "The file $FILE is a file"
    else
        echo "The file must be of another kind."
    fi

    ls -l $FILE
done
