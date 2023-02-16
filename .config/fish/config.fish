if status is-interactive
    # Commands to run in interactive sessions can go here
    if type -q fastfetch
        fastfetch
    else
        neofetch    
    end    
end

## User configuration
set fish_greeting
set -gx LANG en_US.UTF-8
set -gx EDITOR nvim

## Useful aliases
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

alias setproxy="set -gx http_proxy http://rickgo.cf:9001 && set -gx https_proxy http://rickgo.cf:9001 && set -gx ALL_PROXY socks5://rickgo.cf:9000"
alias unsetproxy="set -e http_proxy && set -e https_proxy && set -e ALL_PROXY"
alias cht="cht.sh"
alias m="micro"
alias vim="nvim"
alias pupu="pkg update&&pkg upgrade"
