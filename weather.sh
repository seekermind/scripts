#!/bin/sh
#AccuWeather (r) RSS weather tool for conky
#USAGE: weather.sh <locationcode>
#(c) Michael Seiler 2007

if [ -z $1 ]; then
    echo
    echo "USAGE: weather.sh <locationcode>"
    echo
    exit 0;
fi

temp=$(curl --connect-timeout 30 -s http://rss.accuweather.com/rss/liveweather_rss.asp\?metric\=${FAHRENHEIT}\&locCode\=$1 | perl -ne 'if (/Currently/) {chomp;/\<title\>Currently: (.*)?\<\/title\>/; print "$1"; }' | sed 's/.* //g;s/F//g')

echo "🌡️ $(( ( $temp - 32 ) * 5 / 9 ))°C"
