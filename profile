#!/bin/sh

scd() {
  if [ $# = 0 ]; then
    cd
  else
    dir=$(awk -F= '$1=="'"$1"'" { print $2 }' "$HOME"/.scdrc  | head -1)
    if [ -z "$dir" ]; then
      echo 2>/dev/null "scd: $1: No such file or directory"
    else
      cd "$dir"
    fi
  fi
}
