#! /usr/bin/env sh

add_tab() {
  tab_path="$1"

  if [ -n "$session_name" ]; then
    zellij action new-tab --layout "$tab_path"
  else
    zellij action new-tab --layout "$tab_path"
  fi
}

get_tab_name() {
  layout_file="$1"
  if [ -f "$layout_file" ]; then
    name=$(sed -n 's/.*tab name="\([^"]*\)".*/\1/p' "$layout_file" 2>/dev/null | head -n1)
    if [ -n "$name" ]; then
      printf '%s' "$name"
      return
    fi
  fi
  basename "$layout_file" .kdl
}

get_tabs_dir() {
  if [ -n "$XDG_CONFIG_HOME" ]; then
    printf '%s' "$XDG_CONFIG_HOME/zellij/layouts/tabs"
  else
    printf '%s' "$HOME/.config/zellij/layouts/tabs"
  fi
}

list_available_tabs() {
  tabs_dir="$(get_tabs_dir)"

  for layout in "$tabs_dir"/*.kdl; do
    [ -f "$layout" ] || continue
    name="$(get_tab_name "$layout")"
    printf '%s\x1f%s\n' "$name" "$layout"
  done
}
