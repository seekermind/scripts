#!/bin/bash

state=$(cat /sys/class/net/enp1s0/operstate)
if [ "$state" != "down" ]
then
	ip=$(ifconfig enp1s0 | awk '/inet / {print $2}')
