# Chapter 4: Exercise 2

<<comment
Write a script that renames files based on the file extension.
The script should prompt the user for a file extension. Next, it should ask the user what prefix to the file name(s).
By default, the prefix should be the current date in YYYY-MM-DD format. If the user simply presses enter, the current date will be used.
Otherwise, whatever the user entered will be used as the prefix. Next, it should display the orifinal file name and the new name of the file.
Finally, it should rename the file.
comment

read -p "Introduce a file extension:" EXTENSION
FILES=*.$EXTENSION
DATE=$(date +%F)



if [ $EXTENSION ]
then

    if [ $FILES[0] != "*" ]
    then
        # echo "hi"
        read -p "Insert a prefix: (press ENTER for DATE). " PREFIX

        if [ ! "$PREFIX" ]
        then
            PREFIX=$DATE
        fi

        for FILE in $FILES
        do
            echo "Renaming $FILE to $PREFIX-$FILE"
            mv ./$FILE ./$PREFIX-$FILE
        done

    else
        echo "there are no files with the inserted extension"
        exit 1
    fi

else
    echo "You should introduce and extension."
    exit 1
fi
