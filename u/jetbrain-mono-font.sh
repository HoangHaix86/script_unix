#!/bin/bash

set -e

sudo apt install -y unzip

wget https://download.jetbrains.com/fonts/JetBrainsMono-2.304.zip

unzip JetBrainsMono-2.304.zip -d JetBrainsMono

rm JetBrainsMono-2.304.zip

sudo mv JetBrainsMono /usr/local/share/fonts

sudo fc-cache -fv