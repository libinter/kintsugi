#!/bin/zsh

if ! dpkg -s lshw >/dev/null 2>&1; then
  yes | sudo apt install lshw
fi

sudo lshw  -businfo