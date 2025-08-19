## end-4 dots-hyprland

function fish_prompt -d "Write out the prompt"
    # This shows up as USER@HOST /home/user/ >, with the directory colored
    # $USER and $hostname are set by fish, so you can just use them
    # instead of using `whoami` and `hostname`
    printf '%s@%s %s%s%s > ' $USER $hostname \
        (set_color $fish_color_cwd) (prompt_pwd) (set_color normal)
end

if status is-interactive
    # Commands to run in interactive sessions can go here
    set fish_greeting

end

starship init fish | source
if test -f ~/.local/state/quickshell/user/generated/terminal/sequences.txt
    cat ~/.local/state/quickshell/user/generated/terminal/sequences.txt
end

## User configuration
#set fish_greeting
set -gx LANG en_US.UTF-8
set -gx EDITOR $(which vim)

## Gemini
set -gx GOOGLE_CLOUD_PROJECT "swift-impulse-464202-v8"

## Claude Code
set -gx ANTHROPIC_BASE_URL "https://anyrouter.top"
set -gx ANTHROPIC_AUTH_TOKEN "sk-4PJfTXw2madxcKnsjjLPcMqRTp41I0cpBOkKRyK4BWyXeLyx"


fish_vi_key_bindings
bind -M insert \ce end-of-line

## thefuck
TF_SHELL=fish thefuck --alias | source

## command-not-found
source /usr/share/doc/filkoll/command-not-found.fish

## init zoxide
zoxide init fish | source

## Useful aliases
alias cht="cht.sh"
alias m="micro"
alias pupu="pkg update&&pkg upgrade"

alias setproxy="set -gx http_proxy http://127.0.0.1:9000 && set -gx https_proxy http://127.0.0.1:9000 && set -gx ALL_PROXY socks5://127.0.0.1:9000"
alias unsetproxy="set -e http_proxy && set -e https_proxy && set -e ALL_PROXY"
alias pc="proxychains"

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

alias translate="aichat -r translate"
	
