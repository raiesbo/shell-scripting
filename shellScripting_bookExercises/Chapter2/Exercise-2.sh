# Chapter 2: Exercise 2

<< comment
Write a shell script that accepts a file or directory name as an argument.
Have the script report if it is a regular file, a directory, or another type of file.
If it is a regular file, exit with a 0 exit status.
If it is directory, exit with a 1 exit status. If it is some other type of file, exit with a 2 exit status.
comment

# script:

if [ -d "$1" ]
then
    echo "It is a directory."
    exit 1
elif [ -e "$1" ]
then
    echo "It is a file."
    exit 0
else
    echo "it is some othe type of file."
    exit 2
fi