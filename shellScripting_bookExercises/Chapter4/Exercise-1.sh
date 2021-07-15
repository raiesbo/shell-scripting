# Chapter 4: Exercise 1

<<comment
Write a shell script that renames all files in the current directory that end in ".jpg" to begin with today's date in the following format: YYYY-MM-DD.
For example, if a picture of my cat was in the current directory and today was October 31, 2016 it woulf change name from "mycat.jpg" to "2016-10-31-mycat.jpg".

Hint: Look at the format options for the date command.

For "extra credit", make sure to gracefully handle instances where there are no ".jpg" in the current directory.
(Hint: man bash and read the  on the nullglob option)
comment

# Script:

FILES=*.jpg

if [ $FILES != "*.jpg" ]
then
    for IMAGE in *.jpg
    do
        DATE=$(date +%F)
        echo "Renanming $IMAGE to $DATE-$IMAGE"
        mv ./$IMAGE ./$DATE-$IMAGE
    done
else
    echo "There are NO .jpg files."
fi