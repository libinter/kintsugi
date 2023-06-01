# PC Kintsugi

A selection of scripts for configuring Linux installations.

```zsh
sudo dd if=$installer.iso of=/dev/disk$number bs=1m
```

```
sh -c "$(wget https://raw.githubusercontent.com/libinter/kintsugi/main/setupInitialOS.sh -O -)"
```

```zsh
git clone git@github.com:libinter/kintsugi.git && cd kintsugi
sudo chmod +x *.sh && setupInitialOS.sh
```

```zsh
chrome://gpu
chrome://flags
```