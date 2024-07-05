#!/usr/bin/env bash 
volumeicon &
nm-applet &
nitrogen --restore &
picom &
mpd &

# Start Polkit Agent
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &

