#!/bin/zsh
(cd /tmp/.X11-unix && for x in X*; do echo ":${x#X}"; done)