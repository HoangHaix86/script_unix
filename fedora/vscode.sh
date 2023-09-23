#!/bin/sh

#Import Microsoft’s GPG Key
rpm --import https://packages.microsoft.com/keys/microsoft.asc

#Add Microsoft’s Visual Studio Code Repository
sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'

#Run System Update
dnf update

dnf -y install code
