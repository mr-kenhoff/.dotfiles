# Created by newuser for 5.6.2

export ZSH=/usr/share/oh-my-zsh

ZSH_THEME="nicoulaj"
# pmcgee
# steeef
# nicoulaj

plugins=(
  git
)

source $ZSH/oh-my-zsh.sh


autoload -Uz compinit promptinit
compinit
promptinit
zstyle ':completion:*' menu select
zstyle ':completion::complete:*' gain-privileges 1
setopt COMPLETE_ALIASES

setopt AUTO_CD

setopt CORRECT

setopt inc_append_history
setopt share_history

export EDITOR="vim"
bindkey -v
