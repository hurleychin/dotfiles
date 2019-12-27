#
# ~/.bashrc
#

LANG=en_US.UTF-8
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# start tmux
if [[ -z "$TMUX" ]] ;then
    ID="`tmux ls | grep -vm1 attached | cut -d: -f1`" # get the id of a deattached session
    if [[ -z "$ID" ]] ;then # if not available create a new one
        tmux new-session #&& exit # auto exit
    else
        tmux attach-session -t "$ID" #&& exit # if available attach to it
    fi
fi
