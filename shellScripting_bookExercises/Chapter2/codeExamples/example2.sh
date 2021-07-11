HOST="google.com"
ping -n 1 $HOST
# echo $?

# if [ $? -eq "0" ]
# then
#     echo "HOST reachable."
# else
#     echo "HOST unreachable."
# fi

if [ $? -ne "0" ]
then
    echo "HOST unreachable."
fi

#  mkdir /tmp/bak && cp test.txt /temp/back/
#  echo $?

# If $? = 0 then will start the second statement
ping -n 1 $HOST && echo "$HOST reachable"

# Only if $? != 0 then will start the second statement
ping -n 1 $HOST || echo "$HOST reachable"