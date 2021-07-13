# POSITIONAL PARAMETERS

function hello()  {
    echo "Hello $1"
}

hello raiesbo


# it is even possible to access all the parameters using "$@".


function hello2() {
    for NAME in $@
    do
        echo "Hello $NAME"
    done
}

hello2 raiesbo mario luigi toad peach