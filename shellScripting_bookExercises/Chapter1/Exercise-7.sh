# Chapter 1: Exercise 7

<<comment
Modify the previous script so that it accepts the file or directory name as an argumetn isntead of prompting the user to enter it.
comment

# Script:

FILE=$1

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