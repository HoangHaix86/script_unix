#!/bin/bash

echo 'deb http://download.opensuse.org/repositories/home:/lamlng/xUbuntu_22.04/ /' | sudo tee /etc/apt/sources.list.d/home:lamlng.list
curl -fsSL https://download.opensuse.org/repositories/home:lamlng/xUbuntu_22.04/Release.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/home_lamlng.gpg > /dev/null
sudo apt update \
    && sudo apt install ibus-bamboo