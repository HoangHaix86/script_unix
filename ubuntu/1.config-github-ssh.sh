#!/bin/bash

set -e

sudo apt update
sudo apt remove openssh-server openssh-client -y
sudo apt autoremove
sudo apt autoclean

sudo apt install -y xclip openssh-client git curl wget

# SSH Github
ssh-keygen -t ed25519 -f ~/.ssh/id_ed25519_github
ssh-add ~/.ssh/id_ed25519_github
cat ~/.ssh/id_ed25519_github.pub | xclip -sel clip