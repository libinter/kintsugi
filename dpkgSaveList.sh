#!/bin/zsh
filename="$1"
if [[ -z $1 ]]; then
  # Set $1 to today's date in the format of YYYY-MM-DD
  set -- $(date +%Y-%m-%d)
  filename="dpkg.$1.txt"
fi

dpkg --get-selections > $filename
