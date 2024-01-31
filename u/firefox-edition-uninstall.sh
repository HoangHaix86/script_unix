#!/bin/bash

set -e

sudo apt update

sudo rm -rf /opt/firefox

sudo rm /usr/local/bin/firefox-dev

sudo rm /usr/share/applications/Firefox-dev.desktop
