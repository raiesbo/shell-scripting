
# cd /var/www
# cp *.html /var/www-just_html

cd /var/www
for FILE in *.html
do
    echo "Copying $FILE"
    cp $FILE /var/www-just-html
done