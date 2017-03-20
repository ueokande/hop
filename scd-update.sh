#!/bin/sh

printf "" >"$HOME"/.scdrc

while test $# != 0; do
  if ! [ -d $1 ]; then
    echo 2>&1 "$0: '$1': No such file or directory"
    shift
    continue
  fi

  for dir in $1/*; do
    echo "$(basename "$dir")=$dir" >>"$HOME"/.scdrc
  done
  shift;
done
