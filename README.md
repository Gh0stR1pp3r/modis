# MODIS

Latest release: [Beta v0.3.2](https://github.com/Infraxion/modis/releases/tag/0.3.2)

gh0str1pp3r/modis:latest for master branch

# Creating bot and other API keys

https://infraxion.github.io/modis/guides/api-keys/

Do not disclose your bot credentials to anyone.

# Configuration

Go ahead and pull image from the hub - docker pull gh0str1pp3r/modis:latest

>Bot directory in the image - /usr/src/Modis
Configuration file - /usr/src/Modis/launcher.py
Module credentials - /usr/src/Modis/data.json

Both launcher.py and data.json can be downloaded from github - you must fill credentials and other info yourself.

launcher.py file must be filled with discord bot credentials and mapped to /usr/src/Modis/launcher.py - it will not launch otherwise.

# Running bot in docker

Example:

>docker create --name=modis \
--restart=unless-stopped \
-v /home/bob/modis/launcher.py:/usr/src/Modis/launcher.py \
gh0str1pp3r/modis:latest

For proper youtube functionality (search and query) data.json file must be filled and mapped as well:

>docker create --name=modis \
--restart=unless-stopped \
-v /home/bob/modis/launcher.py:/usr/src/Modis/launcher.py \
-v /home/bob/modis/data.json:/usr/src/Modis/data.json \
gh0str1pp3r/modis:latest
