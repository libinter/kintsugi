#!/bin/zsh
sudo rm /etc/modprobe.d/blacklist-nvidia-nouveau.conf
# sudo bash -c "echo options nouveau tv_norm=PAL > /etc/modprobe.d/nouveau-kms.conf"
# cat /etc/modprobe.d/nouveau-kms.conf
sudo update-initramfs -u