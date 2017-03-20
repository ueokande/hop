#!/bin/sh

hop() {
  if [ $# = 0 ]; then
    cat "$HOME"/.hoprc
  else
    dir=$(awk -F= '$1=="'"$1"'" { print $2 }' "$HOME"/.hoprc  | head -1)
    if [ -z "$dir" ]; then
      echo 2>&1 "hop: $1: No such file or directory"
      exit 1
    else
      cd "$dir"
    fi
  fi
}
