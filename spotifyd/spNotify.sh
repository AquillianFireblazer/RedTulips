#!/bin/bash

ART=$(sp art)

curl $ART --output ~/.cache/albumArt/art.jpg

track_info=$(~/.config/spotifyd/spotify-current.sh)
icon="~/.cache/albumArt/art.jpg"

sleep 1

dunstify --icon=$icon --appname=Spotify "$track_info"
