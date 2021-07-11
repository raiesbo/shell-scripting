# Chapter 2: Exercise 3

<< comment
Write a script that executes the command "cat/etc/shadow". If the command returns 0 exit status, report "Command succeeded" and exit with a 0 exit status.
If the command returns a non-zero exit status, report "Command failed" and exit with a 1 exit status.
comment

# script:

# COMMAND="cat/etc/shadow"

cat /etc/shadow

if [ $? -eq "0" ]
then
    echo "Command succeded"
    exit 0
else
    echo "Command failed"
    exit 1
fi