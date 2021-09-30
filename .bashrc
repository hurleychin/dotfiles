#
# ~/.bashrc
#
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

source ~/.merge_export

# drop into fish
if [[ $(ps --no-header --pid=$PPID --format=cmd) != "fish" && -z ${BASH_EXECUTION_STRING} ]]
then
	exec fish
fi

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
