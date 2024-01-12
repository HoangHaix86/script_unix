#!/bin/bash

set -e

sudo apt-get update

sudo apt-get install -y git wget zsh

zsh

curl -sSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh | bash -s -- --skip-chsh

# plugins

sudo tee -a ~/.zshrc <<EOF
alias code="code-insiders"
alias dc="docker compose"
alias dps="docker ps"
alias ds="docker stop"

[[ -r ~/Repos/znap/znap.zsh ]] ||
git clone --depth 1 -- https://github.com/marlonrichert/zsh-snap.git ~/Repos/znap
source ~/Repos/znap/znap.zsh

znap source marlonrichert/zsh-autocomplete
znap source zsh-users/zsh-syntax-highlighting
EOF

source ~/.zshrc
