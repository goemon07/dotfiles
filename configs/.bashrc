#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias l='ls -lah --color=auto'
PS1='[\u@\h \W]\$ '

complete -C /usr/bin/terraform terraform

complete -C /home/goemon/.local/bin/terraform terraform

source /home/goemon/.config/broot/launcher/bash/br
