#!/usr/bin/env bash

CURRENT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

git_status="#($CURRENT_DIR/git-status.sh #{pane_current_path})"
wb_git_status="#($CURRENT_DIR/wb-git-status.sh #{pane_current_path} &)"

tmux set -g status-justify absolute-centre
tmux set -g status-style bg=default,fg=default
tmux set -g status-right "#[bg=default,fg=#ffffff]$git_status$wb_git_status"
tmux set -g window-status-format "#[bg=default,fg=#7dccff]#{?#{==:#I,1},󰲡,#{?#{==:#I,2},󰲣,#{?#{==:#I,3},󰲥,#{?#{==:#I,4},󰲧,#{?#{==:#I,5},󰲩,#I}}}}} #W"
tmux set -g window-status-current-format "#[bg=default,fg=#7dccff]#{?#{==:#I,1},󰲡,#{?#{==:#I,2},󰲣,#{?#{==:#I,3},󰲥,#{?#{==:#I,4},󰲧,#{?#{==:#I,5},󰲩,#I}}}}} #W"
