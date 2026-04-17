#!/bin/sh

for file in "$HOME/.dotfiles/dot-config/tmuxifier"/*.window.sh; do
  [ -f "$file" ] || continue
  layout=$(basename "$file" .window.sh)
  name=$(sed -n 's/^new_window "\(.*\)"$/\1/p' "$file" | head -n1)
  printf '%s\t%s\n' "${name:-$layout}" "$layout"
done | sort
