#!/bin/zsh

if ! dpkg -s htop >/dev/null 2>&1; then
  yes | sudo apt install htop
fi

sudo htop -u $USER --tree