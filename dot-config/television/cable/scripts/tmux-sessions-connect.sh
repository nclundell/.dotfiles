#!/bin/sh

session=$1
layout=$2

if [ -n "$layout" ]; then
  TMUXIFIER_LAYOUT_PATH="$HOME/.dotfiles/dot-config/tmuxifier" tmuxifier load-session "$layout"
elif [ -n "$TMUX" ]; then
  tmux switch-client -t "$session"
else
  tmux attach-session -t "$session"
fi
