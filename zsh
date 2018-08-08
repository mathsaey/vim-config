# zsh
# global zsh configuration

source ~/.dotfiles/shell.sh

# ---------------- #
# General settings #
# ---------------- #

# Enable
autoload -Uz compinit && compinit

# ------ #
# Prompt #
# ------ #

setopt prompt_subst

P_cont='%{%F{black}%K{white}%} %n@%m %{%f%k%}'
P_dir='%{%F{black}%K{blue}%} $(pwd | sed -e "s,^$HOME,~,") %{%f%k%}'
P_pre='%{%F{red}%}$ %{%f%k%}'

PROMPT=$P_cont$P_dir$'\n'$P_pre

# ------- #
# Plugins #
# ------- #

source ~/.dotfiles/res/zsh-plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.dotfiles/res/zsh-plugins/git-flow-completion/git-flow-completion.zsh
