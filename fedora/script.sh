#!/bin/sh

dnf install -y xclip

# Google Chrome
dnf install fedora-workstation-repositories
dnf config-manager --set-enabled google-chrome
dnf install google-chrome-stable

chmod +x ./docker.hs ./vscode.sh ./ibusbamboo.sh ./jetbrainstoolbox.sh