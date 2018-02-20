#!/bin/bash
echo "please enter the symbol you want to be printed"
read symbol
mystring=""
for x in {1..20}
do
mystring=$mystring$symbol
echo $mystring
done
