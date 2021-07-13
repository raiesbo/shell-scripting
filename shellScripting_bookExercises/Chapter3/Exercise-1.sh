# Chapter 3: Exercise 1

<< comment
Write a shell script that consists of a function that displays the number of files in the present working directory.
Name this function "file_count" and call it in your script.
If you use a variable in your funtion, remember to make ir a local variable.

Hint: The wc utility is used to count the number of lines, words and bytes.
comment

# Script:


function file_count() {
    FILES_NUMBER=$(ls | wc -l)
    echo "$FILES_NUMBER"
}

file_count