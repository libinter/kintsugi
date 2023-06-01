#!/bin/bash

echo "------------- UPDATE -------------"
sudo apt update

echo "------------- SAMBA -------------"
yes | sudo apt install samba

echo "------------- GIT -------------"
yes | sudo apt install git

echo "------------- CURL -------------"
yes | sudo apt install curl

echo "------------- V4L2 -------------"
yes | sudo apt install v4l-utils build-essential v4l2loopback-dkms

echo "------------- FFMPEG -------------"
yes | sudo apt install ffmpeg

echo "------------- NVIDIA -------------"
yes | sudo apt install nvidia-detect

echo "------------- VLC -------------"
yes | sudo apt install vlc vlc-plugin-* libavcodec-extra

echo "------------- CHROMIUM -------------"
yes | sudo apt install chromium

echo "------------- ZSH & OH-MY-ZSH -------------"
if [[ -z "$ZSH" ]]; then
    yes | sudo apt install zsh
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
else
    echo "ZSH is installed: $ZSH"
fi

echo "------------- NVM -------------"
if [[ -z "$NVM_DIR" ]]; then
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
else
    echo "NVM is installed: $NVM_DIR"
fi