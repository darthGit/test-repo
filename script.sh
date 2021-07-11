#!/bin/bash

echo $1

echo $(($2+1))

str=$3
for (( i=0; i<${#str}; i++ )); do
  echo "${str:$i:1}"
done

echo $4 | sed 's/4/four/g'

if ! [[ $5 =~ ^[0-9]+$ ]]
then
    exit 128
fi

for param in $@
do
  echo $param
done
