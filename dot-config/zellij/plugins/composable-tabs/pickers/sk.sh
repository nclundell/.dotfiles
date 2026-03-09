#!/bin/sh

command -v sk >/dev/null 2>&1 || exit 1

. "$(dirname "$0")/../utils/tabs.sh"

tabs=$(list_available_tabs)
[ -n "$tabs" ] || exit 1

selected=$(printf '%s\n' "$tabs" | while IFS=$'\x1f' read -r name path; do
  [ -n "$name" ] || continue
  printf '%s\n' "$name"
done | sk --multi --prompt="Select tabs: ")

[ -n "$selected" ] || exit 1

printf '%s\n' "$tabs" | while IFS=$'\x1f' read -r name path; do
  [ -n "$name" ] || continue
  for sel in $selected; do
    [ "$name" = "$sel" ] && printf '%s\n' "$path"
  done
done
