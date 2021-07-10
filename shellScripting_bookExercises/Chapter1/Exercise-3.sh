# Chapter 1: Exercise 3

<<comment
Store the output of the vommand "hostname" in a variable. Display "This script is running on _______. "
where "_____" is the output of the "hostname" command.
Hint: It's a best practice to use the ${VARIABLE} syntax if there is text or characters that directly precede or follow the variable.
comment

# Script:

NAME=$HOSTNAME
echo "This script is running on $NAME."