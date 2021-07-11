# Chapter 2: Exercise 1

<< comment
Write a shell script that displays, "This script will exit with a 0 exit status."
Be sure that the script does indeed exit with a 0 exit status.
comment

# script:

# if [ "$?" -eq "0" ]
# then
#     echo "This script will exit with a 0 exit status."
# fi

echo "This script will exit with a 0 exit status."
exit 0