session_root "$HOME/Projects/captivated-frontend/"

if initialize_session "frontend"; then
  load_window "editor"
  load_window "ember"

  select_window 1
fi

finalize_and_go_to_session
