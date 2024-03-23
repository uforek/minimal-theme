#!/usr/bin/env bash

status_right="#[fg=#7dcfff,bold]%l:%m %p"
status_left="#[fg=#7dcfff,bold]#{?client_prefix,, MAIN }#[bg=#7dcfff,fg=#000000]#{?client_prefix, MAIN ,}"

tmux set-option -g window-status-format "#[bg=default,fg=#666666]#I:#W"
tmux set-option -g window-status-current-format "#[bg=default,fg=#7dccff]#I:#W"
tmux set-option -g status-style bg=default,fg=default
tmux set-option -g status-left "${status_left}"
tmux set-option -g status-right "${status_right} "
