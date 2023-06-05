#!/bin/zsh

if ! dpkg -s net-tools >/dev/null 2>&1; then
  yes | sudo apt install net-tools
fi

sudo ifconfig | grep -oP '(?<=inet\s)\d+(\.\d+){3}'
grep -oP '^\d+\.\d+\.\d+\.\d+\s+\K\S+' /etc/hosts
