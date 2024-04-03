## User configuration
set fish_greeting
set -gx LANG en_US.UTF-8
set -gx EDITOR $(which vim)

## thefuck
TF_SHELL=fish thefuck --alias | source

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
alias mux="tmux attach"

alias apti="sudo apt install"
alias apts="sudo apt search"
alias aptr="sudo apt remove"
alias auau="sudo apt update && sudo apt upgrade"

alias ssh@raspi="ssh -Y qinhulin@qhl123.wicp.net"
	
export HOMEBREW_API_DOMAIN="https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles/api"
export HOMEBREW_BOTTLE_DOMAIN="https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles"
export HOMEBREW_BREW_GIT_REMOTE="https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/brew.git"
export HOMEBREW_CORE_GIT_REMOTE="https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/homebrew-core.git"
export HOMEBREW_PIP_INDEX_URL="https://pypi.tuna.tsinghua.edu.cn/simple"
