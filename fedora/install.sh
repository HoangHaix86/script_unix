#!/bin/bash

echo "======================== Start Vagrant ========================"
sudo dnf install -y dnf-plugins-core
sudo dnf config-manager --add-repo https://rpm.releases.hashicorp.com/fedora/hashicorp.repo
sudo dnf install -y vagrant
echo "======================== Finished Vagrant ========================"

echo "======================== Start VirtualBox ========================"
sudo dnf install -y @development-tools
sudo dnf install -y kernel-devel kernel-headers dkms qt5-qtx11extras elfutils-libelf-devel zlib-devel
sudo wget http://download.virtualbox.org/virtualbox/rpm/fedora/virtualbox.repo -P /etc/yum.repos.d/
sudo dnf install -y VirtualBox-7.0
sudo systemctl enable vboxdrv --now
echo "======================== Finished VirtualBox ========================"