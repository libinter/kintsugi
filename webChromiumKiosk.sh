#!/bin/zsh

DISPLAY=:0 chromium-browser --kiosk --disable-features=TranslateUI --touch-devices=$2 --check-for-update-interval=31536000 --app-auto-launched --disable-pinch --incognito --noerrdialogs --disable-suggestions-service --disable-translate --disable-save-password-bubble --disable-session-crashed-bubble --disable-infobars --app=$1 &
