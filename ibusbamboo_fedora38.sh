#!/bin/sh

#Fedra 38
dnf config-manager --add-repo https://download.opensuse.org/repositories/home:lamlng/Fedora_38/home:lamlng.repo
dnf -y install ibus-bamboo
