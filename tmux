# ------- #
# Visuals #
# ------- #

set-option -g status-position top

# --------- #
# Key binds #
# --------- #

# Creation
unbind '"'
unbind %
bind -n M-d split-window -h
bind -n M-D split-window -v

# Kill pane
bind -n M-x kill-pane

# Movement
bind -n M-h select-pane -L
bind -n M-l select-pane -R
bind -n M-k select-pane -U
bind -n M-j select-pane -D

# Resize
bind -n M-Up resize-pane -U
bind -n M-Down resize-pane -D
bind -n M-Left resize-pane -L
bind -n M-Right resize-pane -R

# Enter A Command
bind -n M-: command-prompt

# Easily reload config
bind r source-file ~/.tmux.conf

# ------------- #
# Miscellaneous #
# ------------- #

# Allow Colors
set -g default-terminal "xterm-256color"

# Enable mouse control
set -g mouse on

# Set escape time to zero to play nice with vim
set -s escape-time 0

# Make tmux messages last longer
set-option -g display-time 2000
