#!/bin/sh

scd() {
  if [ $# = 0 ]; then
    cat "$HOME"/.scdrc
  else
    dir=$(awk -F= '$1=="'"$1"'" { print $2 }' "$HOME"/.scdrc  | head -1)
    if [ -z "$dir" ]; then
      echo 2>&1 "scd: $1: No such file or directory"
      exit 1
    else
      cd "$dir"
    fi
  fi
}
