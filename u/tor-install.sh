#!/bin/bash

set -e

sudo apt update

wget https://www.torproject.org/dist/torbrowser/13.0.9/tor-browser-linux-x86_64-13.0.9.tar.xz

sudo tar -xf tor-browser-linux-x86_64-13.0.9.tar.xz -C /opt/

sudo chown -R $USER:$USER /opt/tor-browser

cd /opt/tor-browser

./start-tor-browser.desktop --register-app