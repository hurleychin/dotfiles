if status is-interactive
    # Commands to run in interactive sessions can go here
end

set fish_greeting

# ls, the common ones I use a lot shortened for rapid fire usage
alias l='ls -lFh'     #size,show type,human readable
alias la='ls -lAFh'   #long list,show almost all,show type,human readable
alias lr='ls -tRFh'   #sorted by date,recursive,show type,human readable
alias lt='ls -ltFh'   #long list,sorted by date,show type,human readable
alias ll='ls -l'      #long list
alias ldot='ls -ld .*'
alias lS='ls -1FSsh'
alias lart='ls -1Fcart'
alias lrt='ls -1Fcrt'
alias lsr='ls -lARFh' #Recursive list of files and directories
alias lsn='ls -1'     #A column contains name of files and directories

alias cht="cht.sh"
alias m="micro"
alias vim="neovim"
alias pupu="pkg update&&pkg upgrade"
alias setproxy="export http_proxy=http://rickgo.cf:9001 https_proxy=http://rickgo.cf:9001"
alias unsetproxy="set -e http_proxy https_proxy"
