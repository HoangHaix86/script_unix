#!/usr/bin/python3
import os
import sys
import subprocess

url = "https://data.services.jetbrains.com/products?code=TBA&release.type=release"

command = ['curl', '-s', '-o', '-', url]
result = subprocess.run(command, capture_output=True, text=True)
data_json = result.stdout
try:
    link_download = data_json[0]["releases"][0]["downloads"]["linux"]
    print(link_download)
except:
    pass