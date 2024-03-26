#!/bin/sh

set -e

sudo apt update

sudo apt install curl jq libfuse2 -y

LINK_DOWNLOAD=$(curl -s 'https://data.services.jetbrains.com/products?code=TBA&release.type=release' | jq -r '.[0].releases[0].downloads.linux.link')

FILE_NAME=$(jq -n -r --arg str $LINK_DOWNLOAD '$str | split("/") | .[-1]')

curl -s -L -O $LINK_DOWNLOAD

tar -xf $FILE_NAME

rm $FILE_NAME

sudo mv jetbrains-toolbox* /opt/jetbrains-toolbox

/opt/jetbrains-toolbox/jetbrains-toolbox





    
