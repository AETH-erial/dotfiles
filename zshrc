# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/aeth/.zshrc'
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'
autoload -Uz compinit && compinit



autoload -Uz compinit
compinit
# End of lines added by compinstall

autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT='${vcs_info_msg_0_}'
# PROMPT='${vcs_info_msg_0_}%# '
zstyle ':vcs_info:git:*' formats '%b'


setopt PROMPT_SUBST
PROMPT='%F{green}%*%f %B%F{blue}%n@%M: %B%F{#FFB6C1}%~%f %F{red}${vcs_info_msg_0_}%f$ '


path+=('/home/aeth/go/bin')



# aliases
alias ls="ls -l"
