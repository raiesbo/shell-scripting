# Shell Scripts

Shell scripts developed in order to automate different tasks, access to folders and help at deployments.

### Others

The repos also containing different solved exercises from the book "Shell Scripting" from Jason Cannon and different code snippets of the book.

### Shell syntax, examples and more

#### Adding permanent alias for the Git Bash on Windows:

- (1) Access the file /C/Program Files/Git/etc/profile.d/aliases.sh
- (2) Run your text editor as an administrator and open that file
- (3) Add your alias and save the file
- (4) Open the Git Bash. Execute 'alias', and you're done. Have fun

Example:

``` shell
alias command_name='action'
```

#### Variables

As in any other langeage, the variable is defined with its name follow by "=" and the value. The variable names are defined in uppercase without spaces separating the name with the equal sign as well as between the equal sign and the value.

```shell
VARIABLE_NAME="value"

#Example:
NAME="Wario"
echo "$NAME"
```
It is good practice to wrap the variable between curly brackets to avoid errors.

#### Functions

```shell
#...
```

#### If-Statements

```shell
#...
```

#### Conditionals

```shell
#...
```

#### Exit command

It is a value between 0 to 255, where 0 means successfully runned command, and it is accessed with "$?".

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
