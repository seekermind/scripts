#!/bin/bash
disk=$(lsblk -lp | awk '/part $|disk $/ { 
if ($4<50)
	print $1" ("$4")";
}' | dmenu -i -p "Which drive to mount?" | awk '{print $1}')
[ -z "$disk" ] && exit 1
point=$(cat ~/.shellscripts/mountpoint | dmenu -i -p "Where?")
[ -z "$point" ] && exit 1
[ ! -d $point ] && sudo mkdir $point
sudo mount $disk $point 

