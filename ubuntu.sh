#!/bin/sh

# Postman

sudo tar -xzf postman*.tar.gz -C /opt
rm postman*.tar.gz
/opt/Postman/Postman
sudo ln -s /opt/Postman/Postman /usr/bin/postman

cat <<EOT >> ~/.local/share/applications/postman.desktopd
[Desktop Entry]
Encoding=UTF-8
Name=Postman
Exec=postman
Icon=/opt/Postman/app/icons/icon_128x128.png
Terminal=false
Type=Application
Categories=Development;
EOT

wget -O- https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update && sudo apt install vagrant