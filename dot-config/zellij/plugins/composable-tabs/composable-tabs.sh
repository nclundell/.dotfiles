#! /usr/bin/env sh

SCRIPT_DIR=$(dirname "$0")
ZELLIJ_DIR="$(cd "$SCRIPT_DIR/../.." && pwd)"
export ZELLIJ_DIR

source "$SCRIPT_DIR/utils/tabs.sh"
source "$SCRIPT_DIR/utils/pickers.sh"

picker=$(detect_picker "$@")
selected_tabs=$("$picker")

for layout in $selected_tabs; do
  add_tab "$layout"
done
