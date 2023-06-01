#!/bin/zsh

mkdir -p nvidia-340

sudo apt install linux-headers-$(uname -r)

echo "From: https://download.nvidia.com/XFree86/Linux-x86_64/340.108/README/installdriver.html"

curl -L "https://download.nvidia.com/XFree86/Linux-x86_64/340.108/NVIDIA-Linux-x86_64-340.108.run" -o "nvidia-340/driver.run"
# sudo update-initramfs -u
# echo "------------- DOWNLOADING PACKAGES -------------"

# base_urls=(
#   "http://ftp.debian.org/debian/pool/non-free/n/nvidia-graphics-drivers-legacy-340xx/"
#   "http://ftp.debian.org/debian/pool/contrib/n/nvidia-settings-legacy-340xx/"
# )
# example="http://ftp.debian.org/debian/pool/non-free/n/nvidia-graphics-drivers-legacy-340xx/libegl1-nvidia-legacy-340xx_340.107-2~bpo9+1_amd64.deb"

# version="3~deb10u1"
# packages=(
#   'libegl1-nvidia-legacy-340xx_340.108-'"$version"'_amd64.deb'
#   'nvidia-legacy-340xx-driver-bin_340.108-'"$version"'_amd64.deb'
#   'libgl1-nvidia-legacy-340xx-glx_340.108-'"$version"'_amd64.deb'
#   'nvidia-legacy-340xx-driver-libs_340.108-'"$version"'_amd64.deb'
#   'libnvidia-legacy-340xx-eglcore_340.108-'"$version"'_amd64.deb'
#   'nvidia-legacy-340xx-kernel-dkms_340.108-'"$version"'_amd64.deb'
#   'libnvidia-legacy-340xx-glcore_340.108-'"$version"'_amd64.deb'
#   'nvidia-legacy-340xx-kernel-support_340.108-'"$version"'_amd64.deb'
#   'libnvidia-legacy-340xx-ml1_340.108-'"$version"'_amd64.deb'
#   'nvidia-legacy-340xx-vdpau-driver_340.108-'"$version"'_amd64.deb'
#   'nvidia-legacy-340xx-alternative_340.108-'"$version"'_amd64.deb'
#   'nvidia-settings-legacy-340xx_340.108-4+b1_amd64.deb'
#   'nvidia-legacy-340xx-driver_340.108-'"$version"'_amd64.deb'
#   'xserver-xorg-video-nvidia-legacy-340xx_340.108-'"$version"'_amd64.deb'
# )



# for base_url in "${base_urls[@]}"; do
#   for package in "${packages[@]}"; do
#     package_url="$base_url$package"
#     if curl --output /dev/null --silent --head --fail "$package_url"; then
#       if [[ -e "nvidia-340/$package" ]]; then
#         echo "Exists: $package"
#       else
#         echo "Download: $package_url"
#         curl -L "$package_url" -o "nvidia-340/$package"
#       fi
#     else
#       echo "404: $package"
#     fi
#   done
# done

# echo "------------- INSTALLING DEPENDENCIES -------------"

# yes | sudo apt install glx-alternative-nvidia nvidia-installer-cleanup nvidia-kernel-common nvidia-modprobe nvidia-support dkms firmware-misc-nonfree


# echo "------------- INSTALLING NVIDIA PACKAGES -------------"

# sudo dpkg -i nvidia-340/*.deb

# echo "------------- CHECK DPKG -------------"

# dpkg -l | grep nvidia

# echo "------------- CHECK LSMOD -------------"

# lsmod | grep nvidia
