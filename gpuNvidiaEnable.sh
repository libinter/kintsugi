#!/bin/zsh
yes | sudo apt install firmware-misc-nonfree nvidia-legacy-340xx-driver
sudo rm -f /etc/modprobe.d/nouveau-kms.conf
sudo bash -c "echo blacklist nouveau > /etc/modprobe.d/blacklist-nvidia-nouveau.conf"
sudo bash -c "echo options nouveau modeset=0 >> /etc/modprobe.d/blacklist-nvidia-nouveau.conf"
cat /etc/modprobe.d/blacklist-nvidia-nouveau.conf
sudo update-initramfs -u