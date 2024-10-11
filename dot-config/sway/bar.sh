#! /bin/bash

running=$(pgrep waybar | wc -l)

echo $running
if [ $running -gt 0 ]; then
  pkill waybar
fi

waybar -c $HOME/.config/waybar/sway_config.jsonc
