#!/bin/sh

VERSION_TOOLBOX="2.0.4.17212"

wget https://download-cdn.jetbrains.com/toolbox/jetbrains-toolbox-$VERSION_TOOLBOX.tar.gz && \
    tar -xvzf ./jetbrains-toolbox-$VERSION_TOOLBOX.tar.gz && \
    mv ./jetbrains-toolbox-$VERSION_TOOLBOX ./jetbrains && \
    mv ./jetbrains /opt && \
    rm ./jetbrains-toolbox-$VERSION_TOOLBOX.tar.gz

