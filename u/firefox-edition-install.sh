#!/bin/bash

set -e

sudo apt update

wget "https://download.mozilla.org/?product=firefox-devedition-latest-ssl&os=linux64&lang=en-US" -O Firefox-dev.tar.bz2

sudo tar xjf Firefox-dev.tar.bz2 -C /opt/

rm -r Firefox-dev.tar.bz2

sudo ln -s /opt/firefox/firefox /usr/local/bin/firefox-dev

cat >> /usr/share/applications/Firefox-dev.desktop <<EOF
[Desktop Entry]
Name=Firefox-developer-edition
Exec=/usr/local/bin/firefox-dev
Icon=/opt/firefox/browser/chrome/icons/default/default128.png
comment=browser
Type=Application
Terminal=false
Encoding=UTF-8
Categories=Utility;
EOF
