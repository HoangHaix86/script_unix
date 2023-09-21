#!/bin/sh

#Uninstall old versions
dnf remove docker \
                  docker-client \
                  docker-client-latest \
                  docker-common \
                  docker-latest \
                  docker-latest-logrotate \
                  docker-logrotate \
                  docker-selinux \
                  docker-engine-selinux \
                  docker-engine

#Install using the rpm repository
dnf -y install dnf-plugins-core
dnf config-manager --add-repo https://download.docker.com/linux/fedora/docker-ce.repo

#Install Docker Engine
dnf install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

#Start docker
systemctl start docker

#Create the docker group
# groupadd docker

#Add your user to the docker group
usermod -aG docker $USER
newgrp docker