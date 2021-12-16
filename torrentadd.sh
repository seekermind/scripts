#!/bin/bash
DIRECTORY=$(find /media/Series/ /media/Movies/ /media/game/ /media/Software/os/ /media/tutorials/Study-material -type d -maxdepth 0  2>/dev/null | dmenu -i -p "Directory: ")
[ $DIRECTORY = "" ] && exit 1
transmission-remote -a "$@" -w "$DIRECTORY" && notify-send "torrent added to:" "$DIRECTORY"
