#!/bin/sh

while true; do
	curl https://corona-stats.online/BD?format=json > ~/.shellscript/dwm-bar/corona
	curl -s wttr.in/sylhet?format='%c%t' > ~/.shellscript/dwm-bar/weather
	sleep 30m
done
