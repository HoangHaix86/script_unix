#!/bin/bash

sudo apt update

curl https://pyenv.run | bash

tee -a ~/.zshrc <<EOF
# pyenv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "\$(pyenv init -)"

eval "\$(pyenv virtualenv-init -)"
EOF

pyenv update