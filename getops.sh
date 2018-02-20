#!/bin/bash

funca () {
  echo "first : $1"
}
funcb () {
  cat $1
}
while getopts ":a:b:c" option; do
  case $option in
    a)
      funca $OPTARG
      ;;
    b)
      funcb $OPTARG
      ;;
    c)
      echo "ce spracyuvalo"
      ;;
    \?) 
      echo "invalid option: -$OPTARG" >&2
      exit1
      ;;
    :)
      echo "Option -$OPTARG requires an argument." >&2
      exit1
      ;;

  esac
done
