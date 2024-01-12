#!/bin/bash

sudo apt update

sudo apt install -y openssl

wget https://dl.pstmn.io/download/latest/linux_64

tar zxf linux_64

sudo mv Postman /opt

cat <<EOF > /opt/Postman/app/resources/Postman.desktop
[Desktop Entry]
Encoding=UTF-8
Name=Postman
Exec=/opt/Postman/app/Postman %U
Icon=/opt/Postman/app/resources/app/assets/icon.png
Terminal=false
Type=Application
Categories=Development;
EOF

install -t ~/.local/share/applications/ /opt/Postman/app/resources/Postman.desktop

rm linux_64

