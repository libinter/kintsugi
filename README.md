# PC Kintsugi

A selection of scripts for configuring Linux installations.

Burn USB:

```zsh
sudo dd if=$installer.iso of=/dev/disk$number bs=1m
```

Default user after install is without sudo:

```
su -
usermod -aG sudo $user
reboot now
```

Configure script:

```
sh -c "$(wget https://raw.githubusercontent.com/libinter/kintsugi/main/setupInitialOS.sh -O -)"
```

Clone repository:

```zsh
git clone git@github.com:libinter/kintsugi.git && cd kintsugi
sudo chmod +x *.sh && setupInitialOS.sh
```

Adjust Chromium:

```zsh
chrome://gpu
chrome://flags
```

Configure Samba:

```
sudo nano /etc/samba/smb.conf

[$name]
path = $folder
read only = no
guest ok = no

sudo smbpasswd -a $user
sudo /etc/init.d/smbd restart
```

Notes:

* NVIDIA 340 driver is not included as of Debian 11
* BT878/9 chips overheat without heatsinks at PAL resolution
* FFMPEG & V4L2 Loopback works well for Chromium