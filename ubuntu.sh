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