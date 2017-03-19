#!/bin/sh

printf "" >"$HOME"/.scdrc
while test $# != 0; do
  for dir in $1/*; do
    echo "$(basename "$dir")=$dir" >>"$HOME"/.scdrc
  done
  shift;
done
