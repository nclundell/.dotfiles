#!/usr/bin/env bash

set -eo pipefail

layout=${1:-}
session=${2:-${TV_TMUX_WINDOW_SESSION:-}}
cwd=${3:-${TV_TMUX_WINDOW_ROOT:-${TMUXIFIER_SESSION_ROOT:-}}}

if [ "$session" = "#S" ] && [ -n "${TMUX:-}" ]; then
  session=$(tmux display-message -p '#S')
fi

if [ "$cwd" = "#{pane_current_path}" ] && [ -n "${TMUX:-}" ]; then
  cwd=$(tmux display-message -p '#{pane_current_path}')
fi

if [ -z "$layout" ] || [ -z "$session" ]; then
  exit 1
fi

if [ -n "$cwd" ] && [ -d "$cwd" ]; then
  cd "$cwd"
fi

export TMUXIFIER="$HOME/.config/tmux/plugins/tmuxifier"
export TMUXIFIER_LAYOUT_PATH="$HOME/.dotfiles/dot-config/tmuxifier"
export PATH="$TMUXIFIER/libexec:$PATH"

if [ -n "$cwd" ]; then
  export TMUXIFIER_SESSION_ROOT="$cwd"
fi

source "$TMUXIFIER/lib/runtime.sh"

# Load the selected window into the tmux session that opened the picker.
session="$session"
load_window "$layout"
