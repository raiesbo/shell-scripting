# Shell Scripts (BASH)

Shell syntax and scripts developed in order to automate different tasks, access to directories and help at deployments.

## Shell syntax, examples and more

### Content:

- [Variables](#Variables:)
- [Array and Associative Arrays](#Array-and-Associative-Arrays:)
- [Functions](#Functions:)
- [If-Statement](#If-Statement:)
- [Conditional operators](#Conditional-operators:)
- [Loops](#Loops:)
- [Exit command](#Exit-command:)
- [Environment variables](#Environment-variables:)
- [Run commands in new bash shells](#Run-commands-in-new-bash-shells:)
- [Wildcards](#Wildcards:)
    - [Character Classes](#Character-Classes:)
    - [Ranges](#Ranges:)
    - [Named Character Classes](#Named-Character-Classes:)

#### Adding permanent alias for the Git Bash on Windows:

- (1) Access the file /C/Program Files/Git/etc/profile.d/aliases.sh
- (2) Run your text editor as an administrator and open that file
- (3) Add your alias and save the file
- (4) Open the Git Bash. Execute 'alias', and you're done. Have fun

Example:

``` shell
alias command_name='action'
```

#### Variables:

As in any other langeage, the variable is defined with its name follow by "=" and the value. The variable names are defined in uppercase without spaces separating the name with the equal sign as well as between the equal sign and the value.

It is good practice to wrap the variable between curly brackets to avoid errors.

```shell
VARIABLE_NAME="value"

#Example:
NAME="Wario"

echo "$NAME"
#Output: Wario
```

It is possible to create local variables usring the local command. This command can only be used within a functions.

```shell
local VARIABLE_NAME="value"
```

#### Array and Associative Arrays:

An array allows us to store a collection of data as separated information in a single variable using the index as a reference. There are multiple ways to declare an array using shell.

In the arrays the data is stored using a numeric based index while in the associarive arrays is used a string.

The indirect way is adding directly a value with specific index.
```shell
ARRAY_NAME[index]=value
```

The explicit way is declaring a variable as an array and then adding the values as follows:
```shell
declare -A ARRAY_NAME

ARRAY_NAME[index]=value
```

The last way to declare arrays is by a list of values in between brackets with a space as separation:
```shell
ARRAY_NAME=(valueOne valueTwo ... valueN)
```

In every case, in order to access the values we will be using the folloring syntax:

```shell
${ARRAY_NAME[index]}

${ARRAY_NAME[$index]} # In case the index is also a variable
```

#### Functions:

There are two ways to define a function that are similar to other programming languages:

```shell
function function_name () {
    #Code
}

function_name () {
    #Code
}
```

The functions work as in any other programming language with the difference that the parameters are accepted as if we were calling another shell Script (with the $1, $2...). The functions dont return any value as we can observe in other programming languages but they return true (when the exit code equals "0") or false (when the exit code equals any value between 1 and 255).

Calling the function doesn't require the use of brackets "()".

```shell
function hello () {
    echo "Hello $1, how are you?"
}

hello Wario
#output: Hello Wario, how are you?
```

#### If-Statement:

```shell
if [ -e $1 ]
then
    echo "The files exists."
elif [ -f $1 ]
then
    echo "The file is a directory."
else
    echo "The file is not a directory or doesn't exist."
fi
```

#### Case-Statement:

Sometimes, instead of an If-Else statement, we can use what in other languages is known as "switch".

```shell
VAR="start"

case $VAR in
    start)
        # Commands come here
        ;;
    stop)
        # Commands come here
        ;;
    *)
        # The "else" of the case statements // Commands come here
        exit 1
        ;;
esac
```



#### Conditional operators:

|File operators|Description|
|---|---|
|-e FILE|Return true if the file exists.|
|-d FILE|Return true if the file is a directory.|
|-f FILE|Return true if file exists and is a regular file.|
|-r FILE|Return true if the file is readable by you.|
|-s FILE|Return true if the file exists and is not empty.|
|-w FILE|Return true if the file is writable by you.|
|-x FILE|Return true if the file is executable by you.|

|String operators|Description|
|---|---|
|-z STRING|Return true if the string is empty.|
|-n STRING|Return true if the string is not empty.|
|STRING1 != STRING2|Return true if the strings are not equal.|
|STRING1 == STRING2|Return true if the strings are equal.|

|Arithmetic operators|Description|
|---|---|
|arg1 -eq arg2|Return true if arg1 is equal to arg2.|
|arg1 -ne arg2|Return true if arg1 is not equal to arg2.|
|arg1 -lt arg2|Return true if arg1 is less than arg2.|
|arg1 -le arg2|Return true if arg1 is less than or equal to arg2.|
|arg1 -gt arg2|Return true if arg1 is greater than arg2.|
|arg1 -ge arg2|Return true if art1 is greater than or equal to arg2.|

#### Loops:

It is possible to loop through a list of elements using a "for * in" loop.

```shell
NAMES_LIST="Wario Mario Luigi Toad Peach"

for NAME in $NAMES_LIST
do
    echo "Hello $NAME"
done
#Output:
# Hello Wario
# Hello Mario
# Hello Luigi
# ...
```

#### Exit command:

It is a value between 0 to 255, where 0 means successfully runned command, and it is accessed with "$?". This is also the only option of returning a value that the functions or any othe process has with shell.

Whenever the script reaches an exit command, it will stop running.

Example:

```shell
echo "Hello world"
RESULT=$?

if [ $RESULT -eq "0" ]
then
    echo "Everything is fine."
    exit 0
else
    echo "There was a problem.
    exit 1
fi
```

#### Environment variables:

By default, there is a set ofeviroment variables than can be accessed.

```shell
$SHELL
#Output: /user/bin/bash
$USERDOMAIN
#Output: demoUser
$PATH
#Output: /usr/local/bin:/usr/bin:
$LANG
#Output: en_US.UTF-8
$PWD
#Output: /home/demoUser
$HOMEPATH
#Output: /home/demoUser
$(date)
#Output: Current date
$( date '+%F_%H:%M:%S' )
#Output: Formated current date
```

#### Run commands in new bash shells:

In case we want to invoke temporally multiple bash terminals to run different functions at once, there is this solution:

```shell
bash --rcfile <(COMMAND_NAME)
```

#### Wildcards:

The wildcards are ways to match files and directory names and select a file or a set of files. It is usually used in conjunction with other commands such as ls, rm, cp, mv... The two main wildcards are "*" and "?".

In the following example, the star will help us store a list of all the .txt files found in the current directory.
```shell
TEXT_FILES=*.txt
```

The interrogation sign helps us to match every file with a single character as name. We can add as many interrogation signs a we decide to match longer names o mix it with letters or numbers in order to specify the search.
```shell
TEXT_FILES=?.txt # Will store any file with a name of a single character.

TEXT_FILES=a??.txt # Will store any file with  three characters name that start with the letter "a".
```

- ##### Character Classes:

It is possible to create specific patterns to make specific searches. These patterns are Character Classes. For example, [aeiou] will match any vowel.

<!-- ```shell

``` -->

- ##### Ranges:

It is also possible to simplify the character classes using ranges which consist on two numbers or letter with a hyphen in between. As an example, [1-9] would macht any number from 1 to 9.

- ##### Named Character Classes:

Instead of creating your own Character classes, it is possible to use existing ones with predefined behavior.

### Others

The repo also contains different solved exercises from the book “Shell Scripting” from Jason Cannon and different code snippets of the book.