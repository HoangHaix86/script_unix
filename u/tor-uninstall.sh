#!/bin/bash

set -e

sudo apt update

sudo rm -rf /opt/tor-browser

sudo rm ~/.local/share/applications/start-tor-browser.desktop