#!/bin/bash
# Example: username@hostname:cwd$
PS1="\[\e[1;32m\]\u@\h\[\e[0m\]:\[\e[1;34m\]\w\[\e[0m\]\$ "

# Ensure coloring
export CLICOLOR=1
# terminal title showing current working directory
ROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD}\007"'

alias ls='ls -p --color=auto'

