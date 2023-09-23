#!/bin/sh

VERSION_TOOLBOX="2.0.4.17212"

wget https://download-cdn.jetbrains.com/toolbox/jetbrains-toolbox-$VERSION_TOOLBOX.tar.gz && \
    tar -xvzf ./jetbrains-toolbox-$VERSION_TOOLBOX.tar.gz && \
    rm -rf /opt/jetbrains && \
    mv ./jetbrains-toolbox-$VERSION_TOOLBOX /opt/jetbrains && \
    rm ./jetbrains-toolbox-$VERSION_TOOLBOX.tar.gz && \
    sh -c "/opt/jetbrains/jetbrains-toolbox"


