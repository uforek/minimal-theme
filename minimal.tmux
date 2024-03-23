#!/usr/bin/env bash

status_right="#[fg=#7dcfff,bold]%l:%m"
status_left="#[fg=#7dcfff,bold]#{?client_prefix,, MAIN }#[bg=#7dcfff,fg=#000000]#{?client_prefix, MAIN ,}"

tmux set-option -g status-position bottom
tmux set-option -g status-justify centre
tmux set-option -g window-status-format "#[fg=#666666]#I:#W"
tmux set-option -g window-status-current-format "#[fg=#7dccff]#I:#W"
