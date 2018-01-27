# MODIS

Latest release: [Beta v0.3.2](https://github.com/Infraxion/modis/releases/tag/0.3.2)

## USAGE

# Create bot and invite it

You can create your bot here --> https://discordapp.com/developers/applications/me

After that check your bot ID and use this link to invite bot to your server (replace ID in the link with yours) --> https://discordapp.com/oauth2/authorize?&client_id=YOUR_CLIENT_ID_HERE&scope=bot&permissions=0

Do not disclose your bot credentials to anyone.

# Configuration

Go ahead and pull image from the hub - docker pull gh0str1pp3r/modis

Main directory in the image - /usr/src/Modis
Configuration file - /usr/src/Modis/launcher.py
Module credentials - /usr/src/Modis/data.json

Create launcher.py file with bot credentials in a folder of your choosing and map it to /usr/src/Modis/launcher.py with following contents:

**import modis**

**DISCORD_TOKEN = "Discord bot token here"**
**CLIENT_ID = "Discord bot client ID here"**

**modis.console(**
**    discord_token=DISCORD_TOKEN,**
**    discord_client_id=CLIENT_ID**
**)**

Example:

docker create --name=modis \
--restart=unless-stopped \
-v /home/bob/modis/launcher.py:/usr/src/Modis/launcher.py \
gh0str1pp3r/modis

## About Modis

Modis is a Discord bot that runs with a GUI and is designed to be as modular as possible
so that anyone with some basic Python knowledge can quickly and easily create new modules that run on the bot.

## Current Modules

There are currently 9 modules:

- `bethebot`
- `gamedeals`
- `help`
- `hex`
- `manager`
- `music`
- `replies`
- `rocketleague`
- `tableflip`


### bethebot

bethebot let's the bot's owner send messages as Modis.

### gamedeals

gamedeals uses Reddit to find the best game deals.

### help

help lists the help commands for all modules, as well as the commands for specific modules.

### hex

hex looks for hex values in your messages, and displays a solid block image if it finds a value. hex works with any 3 or 6 digit hex values starting with '#' or '0x'.

### manager

manager allows users to activate and deactivate modules within a server, and change the server prefix for Modis.

### music

music plays videos and playlists from YouTube, and music files stored on the internet.

### rocketleague

rocketleague lets you look up player's Rocket League stats.

## Documentation

More detailed information about each module can be found in the[Documentation](https://infraxion.github.io/modis/documentation/#modules).
