#!/usr/bin/env bash
if [ "$1" == "-c" ]; then
    ivpn disconnect;
    exit
fi
choice="$(cat /usr/share/doc/ivpn/list.txt | dmenu -l 15 | cut -d "|" -f 1)"
if [ "$choice" = "" ]; then
    echo "You gotta make a decision"
    exit
fi
ivpn connect ${choice}
