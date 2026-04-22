#!/bin/bash
export EDITOR='micro'


alias mi='micro'
alias ls='ls --color=auto'
alias y='yazi'


# Terminal colors using tput
BLACK=$(tput setaf 0)
RED=$(tput setaf 1)
GREEN=$(tput setaf 2)
YELLOW=$(tput setaf 3)
BLUE=$(tput setaf 4)
MAGENTA=$(tput setaf 5)
CYAN=$(tput setaf 6)
WHITE=$(tput setaf 7)
BOLD=$(tput bold)
RESET=$(tput sgr0)


PS1="\[${CYAN}\]\u@\h\[${RESET}\]:\[${WHITE}\]\w\[${RESET}\]\[${GREEN}\]❯\[${RESET}\] "

# History
HISTSIZE=10000
HISTFILESIZE=10000
HISTCONTROL=ignoredups:erasedups

# Append history instead of overwriting
shopt -s histappend
shopt -s checkwinsize

# Directory colors
export LS_COLORS='di=1;34:fi=0;37:ln=1;36:pi=1;33:so=1;35:bd=1;33:cd=1;33:or=1;31:ex=1;32'
