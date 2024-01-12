#!/bin/bash

sudo apt update

wget https://vscode.download.prss.microsoft.com/dbazure/download/insider/a45edfc415d19852fa3c3e1cd255a02de9e016d2/code-insiders_1.86.0-1704952655_amd64.deb

sudo dpkg -i code-insiders_1.86.0-1704952655_amd64.deb

rm code-insiders_1.86.0-1704952655_amd64.deb