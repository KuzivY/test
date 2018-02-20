#!/bin/bash

mkdir $1-1 $1-2 $1-3
echo $2_text > $1-1/$3.txt
echo $2_text > $1-2/$3.txt
echo $2_text > $1-3/$3.txt

ls -R

