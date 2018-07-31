# ------- #
# Visuals #
# ------- #

set-option -g status-position top

set-window-option -g status-left " #S@#H "
set-window-option -g status-left-length 20
set-window-option -g status-right " %H:%M %d-%b-%y "
set-window-option -g window-status-format " #I: #W "
set-window-option -g window-status-current-format " #I: #W "

set-window-option -g status-left-fg black
set-window-option -g status-left-bg white
set-window-option -g status-right-fg black
set-window-option -g status-right-bg white

set-window-option -g status-bg white
set-window-option -g window-status-current-fg black
set-window-option -g window-status-current-bg blue

set-window-option -g message-bg blue
set-window-option -g message-fg black

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
bind -n M-S-Up resize-pane -U
bind -n M-S-Down resize-pane -D
bind -n M-S-Left resize-pane -L
bind -n M-S-Right resize-pane -R

# Enter A Command
bind -n M-: command-prompt

# Easily reload config
bind r source-file ~/.tmux.conf

# ------------- #
# Miscellaneous #
# ------------- #

# Allow Colors
set -g default-terminal "screen-256color"

# Enable mouse control
set -g mouse on

# Set escape time to zero to play nice with vim
set -s escape-time 0

# Make tmux messages last longer
set-option -g display-time 2000

# Don't allow automatic window renaming
set-window-option -g allow-rename off

# Automatically update window numbers so there are no gaps between indices
set-option -g renumber-windows on
