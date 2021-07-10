# Chapter 1: Exercise 4

<<comment
Write a shell sript to check to see if a file exists. If it does exist, display "Shadow password are enabled."
Next, check to see if you can write to the file. If you can, display "You have permissions to edit the file".
If you cannot, display "You do NOT have persmissions".
comment

# Script:

# FILE=/etc/shadow
FILE="shellScripting_bookExercices/shellScripting_exercise-1.sh"

echo "$FILE"

if [ -e "$FILE" ]
then
    echo "Shadow passwords are enabled"

    if [ -w "$FILE" ]
    then
        echo "You have permissions to edit $FILE ."
    else
        echo "You do NOT have permissiont to edit $FILE"
    fi

else
    echo "Sorry, the file doesn't exist"
fi