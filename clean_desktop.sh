# CLEAN DESKTOP
# Decluttering the windows desktop was never that easy.

# VARIABLES
USER="$USERNAME"
PATH="C:/Users/$USERNAME/Desktop"
FOLDERS="images text"

# ACCESS TO THE DESKTOP FILES
cd "$PATH"
FILES=*

# CHECK FOR FOLDERS OR CREATE THEM
for FOLDER in $FOLDERS
do
    if [ ! -d "./$FOLDER" ]
    then
        /bin/mkdir "$FOLDER"
    fi
done

# FILE RELOCATION
for FILE in $FILES
do
    if [[ "$FILE" == *.txt ]]
    then
        echo "file $FILE moved to ./txt/$FILE"
        /bin/mv ./"$FILE" ./text/"$FILE"
    elif [[ "$FILE" == *.jpg ]]
    then
        echo "file $FILE moved to ./txt/$FILE"
        /bin/mv ./"$FILE" ./images/"$FILE"
    elif [[ "$FILE" == *.png ]]
    then
        echo "file $FILE moved to ./txt/$FILE"
        /bin/mv ./"$FILE" ./images/"$FILE"
    fi
done

echo "Decluttering Desktop finished."