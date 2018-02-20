#!/bin/bash

startgame () {
  clear
  echo "введіть максимальне число"
  read maximum
  secret=$(( (RANDOM % $maximum ) + 1 ))
  try=1
  
  until [[ $guess -eq $secret ]]; do
    echo "введіть число"
    read guess
    if [[ $guess -gt $secret ]]; then
      ((try++))
      echo "ваше число є більше за задане"
    elif [[ $guess -lt $secret ]]; then
      ((try++))
      echo "ваше число є менше за задане"
    fi
  done
  echo "ви вгадали число від 1 $maximum, це зайняло $try спроб"
  exit
}

printnumbers () {
  echo "please enter the symbol you want to be printed"
  read symbol
  mystring=""
  for x in {1..20}
  do
  mystring=$mystring$symbol
  echo $mystring
  done
  exit
}


OPTIONS="start quit numbers"
select opt in $OPTIONS; do
  if [ "$opt" = "start" ]; then
    startgame
  elif [ "$opt" = "quit" ]; then
    echo "bye-bye" 
    exit
  elif [ "$opt" = "numbers" ]; then
    printnumbers
  else
    echo "bad choice"
  fi
done

