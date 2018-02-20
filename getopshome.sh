#!/bin/bash

creatfolder () {
  mkdir $1
}
createfile  () {
  touch $1
}
dir         () {
  ls -la $1
}

while getopts ":d:f:l:h" option; do
  case $option in
    d)
      createfolder $OPTARG
      ;;
    f)
      createfile $OPTARG
      ;;
    l)
      dir
      ;;
    h)
      cat readme.txt
   \?)
      echo "Invalid option: -$OPTARG >&2
      exit 1
      ;;
    :) 
      echo "Option -$OPTARG requires an argumen." >&2
      exit 1
      ;;
  esac
done
