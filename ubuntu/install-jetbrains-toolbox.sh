#!/bin/bash


wget https://download-cdn.jetbrains.com/toolbox/jetbrains-toolbox-2.0.5.17700.tar.gz

tar -xzf jetbrains-toolbox-2.0.5.17700.tar.gz

mv jetbrains-toolbox-2.0.5.17700 ./jetbrains-toolbox

sudo mv ./jetbrains-toolbox /opt 

sudo apt-get install -y libfuse2

/opt/jetbrains-toolbox/jetbrains-toolbox


# ~/.config/autostart/jetbrains-toolbox.desktop
# $ rm -rf ~/.local/share/JetBrains/Toolbox
# $ rm -rf ~/.local/share/applications/jetbrains-toolbox.desktop