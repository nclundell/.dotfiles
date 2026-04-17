session_root "$HOME/Projects/captivated-customer-api/"

if initialize_session "api"; then
  load_window "editor"
  load_window "docker-compose"

  select_window 1
fi

finalize_and_go_to_session
