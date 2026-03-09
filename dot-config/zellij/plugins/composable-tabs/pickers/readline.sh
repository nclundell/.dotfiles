#! /usr/bin/env sh

source "$(dirname "$0")/../utils/tabs.sh"

tabs=$(list_available_tabs)

printf 'Available tabs:\n\n' >&2

line=1
while IFS=$'\x1f' read -r name path; do
  [ -n "$name" ] || continue
  printf '%2d) %s\n' "$line" "$name" >&2
  line=$((line + 1))
done <<EOF
$tabs
EOF

printf '\nSelect (e.g. 1,3-5): ' >&2
read -r selection

expand_range() {
  echo "$1" | tr ',' ' ' | tr -s ' ' '\n' | while read -r item; do
    [ -n "$item" ] || continue
    case "$item" in
      *-*)
        start=$(echo "$item" | cut -d- -f1)
        end=$(echo "$item" | cut -d- -f2)
        seq "$start" "$end"
        ;;
      *)
        echo "$item"
        ;;
    esac
  done
}

expanded=$(expand_range "$selection")

for sel in $expanded; do
  line=1
  while IFS=$'\x1f' read -r name path; do
    [ "$line" -eq "$sel" ] && printf '%s\n' "$path"
    line=$((line + 1))
  done <<EOF
$tabs
EOF
done
