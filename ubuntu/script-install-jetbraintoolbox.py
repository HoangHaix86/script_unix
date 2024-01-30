#!/usr/bin/python3
import os
import sys
import subprocess
import json

url = "https://data.services.jetbrains.com/products?code=TBA&release.type=release"

command = ['curl', '-s', '-o', '-', url]
result = subprocess.run(command, capture_output=True, text=True)
data_json = result.stdout
data_json = json.loads(data_json)

link_download = data_json[0]["releases"][0]["downloads"]["linux"]["link"]

command = ['wget', link_download, '-O', 'jetbrains-toolbox.tar.gz']
subprocess.run(command)
