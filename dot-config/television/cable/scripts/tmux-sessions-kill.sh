#!/bin/sh

session=$1
tmux has-session -t "$session" 2>/dev/null && tmux kill-session -t "$session"
