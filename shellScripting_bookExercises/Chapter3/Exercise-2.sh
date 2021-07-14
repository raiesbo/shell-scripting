# Chapter 3: Exercise 2

<<comment
Modify the script from the previous exercise. Make the "file_count" function accept a directory as an argument.
Next, have the function display the name of the directory followed by a colon.
Finally, display the number of files to the screen on the next line.
Call the function three times. First on the "/etc" directory, enxt on the "/var" directory and finally on the "/urs/bin" directory.
comment

# Script:

function file_count() {

    DIR=$1
    FILES_NUMBER=$(ls $DIR | wc -l)
    echo "$DIR"
    echo "$FILES_NUMBER"
}

file_count /etc
file_count /var
file_count /urs/bin