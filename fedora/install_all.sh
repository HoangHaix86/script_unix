#!/bin/sh
print() {
	echo "========================"
	echo $1
	echo "========================"
}

print "Chrome"
#sudo dnf install -y google-chrome-beta
#sudo dnf install -y google-chrome-stable
sudo dnf install -y google-chrome-unstable

print "VSCode"
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
dnf check-update
sudo dnf install -y code # or code-insiders

# print "IbusBamboo"
# sudo dnf config-manager --add-repo https://download.opensuse.org/repositories/home:lamlng/Fedora_38/home:lamlng.repo
# sudo dnf install -y ibus-bamboo

print "JetBrains Toolbox"
if [ ! -d "/opt/jetbrains" ]; then
	VERSION_TOOLBOX="2.0.4.17212"
	wget https://download-cdn.jetbrains.com/toolbox/jetbrains-toolbox-$VERSION_TOOLBOX.tar.gz
	tar -xzf ./jetbrains-toolbox-$VERSION_TOOLBOX.tar.gz
	sudo mv ./jetbrains-toolbox-$VERSION_TOOLBOX /opt/jetbrains
	rm ./jetbrains-toolbox-$VERSION_TOOLBOX.tar.gz
	sh -c "/opt/jetbrains/jetbrains-toolbox"
fi
print "Enable Minimize & Maximize"
gsettings set org.gnome.desktop.wm.preferences button-layout 'appmenu:minimize,maximize,close'
# gsettings set org.gnome.desktop.wm.preferences button-layout 'close,maximize,minimize:appmenu'
# gsettings set org.gnome.desktop.wm.preferences button-layout 'appmenu:minimize,close'
# gsettings reset org.gnome.desktop.wm.preferences button-layout

print "Docker Engine"

sudo dnf remove docker \
                  docker-client \
                  docker-client-latest \
                  docker-common \
                  docker-latest \
                  docker-latest-logrotate \
                  docker-logrotate \
                  docker-selinux \
                  docker-engine-selinux \
                  docker-engine
sudo dnf -y install dnf-plugins-core
sudo dnf config-manager --add-repo https://download.docker.com/linux/fedora/docker-ce.repo
sudo dnf install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo usermod -aG docker $USER
newgrp docker


# Vagrant
sudo dnf install -y dnf-plugins-core
sudo dnf config-manager --add-repo https://rpm.releases.hashicorp.com/fedora/hashicorp.repo
sudo dnf -y install vagrant