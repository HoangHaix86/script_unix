#!/bin/bash

set -e

sudo apt-get update

sudo apt-get install -y git wget zsh

wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh

sudo chmod +x ./install.sh --skip-chsh

sh ./install.sh --skip-chsh

rm ./install.sh

# plugins

sudo tee -a ~/.zshrc <<EOF
[[ -r ~/Repos/znap/znap.zsh ]] ||
git clone --depth 1 -- https://github.com/marlonrichert/zsh-snap.git ~/Repos/znap
source ~/Repos/znap/znap.zsh

znap source marlonrichert/zsh-autocomplete
znap source zsh-users/zsh-syntax-highlighting
EOF

source ~/.zshrc
