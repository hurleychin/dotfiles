## User configuration
set fish_greeting
set -gx LANG en_US.UTF-8
set -gx EDITOR vim

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

alias cht="cht.sh"
alias m="micro"
alias pupu="pkg update&&pkg upgrade"

alias setproxy="set -gx http_proxy http://127.0.0.1:9001 && set -gx https_proxy http://127.0.0.1:9001 && set -gx ALL_PROXY socks5://127.0.0.1:9000"
alias unsetproxy="set -e http_proxy && set -e https_proxy && set -e ALL_PROXY"

alias sdm="sudo systemctl "
alias sdmu="systemctl --user "
alias loc="sudo updatedb && locate"
alias system-optimize="sudo pacman -Scc --noconfirm && sudo journalctl --vacuum-time=2weeks"
alias system-err="journalctl -fp err  && systemctl --state=failed" # err=3 | warning=4
alias ssh@mbp="ssh qinhulin-mbp"
alias rmbl="rm -- *(-@D)"
alias httpsrv="python -m http.server"

export NEMU_HOME=/home/qinhulin/ics2022/nemu
export AM_HOME=/home/qinhulin/ics2022/abstract-machine
