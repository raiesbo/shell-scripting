# Chapter 1: Exercise 6

<<comment
Write a shell script that prompts the user for a name of a file or directory and reports
if it is a regular file, a directory, or another type of file.
Also perform an ls command against tthe file or directory with the long listing option.
comment

# Script:

read -p "Enter a name of a file: " FILE

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