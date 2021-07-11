ls /not/here
echo "$?" # Variable that indicades the exit mode.
# result: 2 (doesnt exist)

ls
echo "$?" # Variable that indicades the exit mode.
# result: 0 (succesfull)