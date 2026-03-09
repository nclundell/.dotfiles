#! /usr/bin/env sh

get_pickers_dir() {
  if [ -n "$ZELLIJ_DIR" ]; then
    printf '%s/plugins/composable-tabs/pickers' "$ZELLIJ_DIR"
  else
    _base="$(cd "$(dirname "$0")/../.." && pwd)"
    printf '%s/pickers' "$_base"
  fi
}

detect_picker() {
  # Check --picker flag first
  if [ "$1" = "--picker" ]; then
    picker_path="$(get_pickers_dir)/$2.sh"
    if [ -f "$picker_path" ] && [ -x "$picker_path" ]; then
      printf '%s' "$picker_path"
      return 0
    fi
    return 1
  fi

  # Auto-detect: gum -> sk -> fzf -> readline
  for picker in gum sk fzf readline; do
    picker_path="$(get_pickers_dir)/$picker.sh"
    if [ -f "$picker_path" ] && [ -x "$picker_path" ]; then
      case "$picker" in
        gum) ! command -v gum >/dev/null 2>&1 && continue ;;
        sk)  ! command -v sk >/dev/null 2>&1  && continue ;;
        fzf) ! command -v fzf >/dev/null 2>&1 && continue ;;
      esac
      printf '%s' "$picker_path"
      return 0
    fi
  done
  return 1
}
