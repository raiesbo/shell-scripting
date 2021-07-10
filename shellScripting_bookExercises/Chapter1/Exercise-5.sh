# Chapter 1: Exercise 5

<<comment
Write a shell script that desplays "man", "bear", "pig", "fog", "cat", and "sheep" on the screen with each appearing on a separate line.
Try to do this in as few lines as possible.
comment

# Script:

ANIMALS="man bear pig dog cat sheep"

# LOOPS EXAMPLE
for ANIMAL in $ANIMALS
do
  echo "$ANIMAL"
done