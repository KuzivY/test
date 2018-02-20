#!/bin/bash
if [[ $# -ge 1 && $1 != 10 ]]
then
echo "variable exists and not equal 10"
elif [[ $1 -eq 10 ]]
then
echo "v desjatochku"
else
echo "variable doesn't exists"
fi

