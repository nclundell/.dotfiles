#!/bin/sh

current=$(tmux display-message -p '#S' 2>/dev/null || true)

{
  for file in "$HOME/.dotfiles/dot-config/tmuxifier"/*.session.sh; do
    [ -f "$file" ] || continue

    layout=$(basename "$file" .session.sh)
    session=$(sed -n 's/^if initialize_session "\(.*\)"; then$/\1/p' "$file" | head -n1)
    [ -n "$session" ] || session="$layout"

    printf 'defined\t%s\t%s\n' "$session" "$layout"
  done

  tmux list-sessions -F '#{session_name}' 2>/dev/null | while IFS= read -r session; do
    [ -n "$session" ] || continue
    printf 'active\t%s\t\n' "$session"
  done
} | awk -F '\t' -v current="$current" '
  {
    name = $2
    if (name == "") next
    names[name] = 1
    if ($1 == "defined") {
      defined[name] = 1
      if ($3 != "") layouts[name] = $3
    }
    if ($1 == "active") active[name] = 1
  }
  END {
    for (name in names) {
      marker = (name == current ? "●" : "○")
      icon = (active[name] ? "󰆍" : "")
      layout = (name in layouts ? layouts[name] : "")
      printf "%s\t%s %s %s\t%s\t%s\n", name, marker, icon, name, name, layout
    }
  }
' | sort -f
