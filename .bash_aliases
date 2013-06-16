alias upd='sudo apt-get update'
alias upg='sudo apt-get upgrade'
alias show='sudo apt-cache show'
alias showp='sudo apt-cache showpkg'
alias auu='sudo apt-get update && sudo apt-get upgrade'
alias remo='sudo apt-get remove'
alias sag='sudo apt-get'
alias purge='sag purge'
alias nau='nohup nautilus . &> /dev/null &'
alias lt='ll -tr'
alias sus='sudo pm-suspend'
alias hib='sudo pm-hibernate'
alias sysmon='gnome-system-monitor'
alias chr='nh google-chrome'
alias dv='dirs -v'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias pd2='pd +2'
alias less='less -i'
alias unityReplace='DISPLAY=:0 unity --replace &'
alias compizReplace='DISPLAY=:0 compiz --replace &'
alias clips='xclip -selection clipboard'
alias ee='echo -e'

# Git
alias gstat='git status'
alias gst='gstat'
alias gc='git commit -m'
alias gscommit='git stash && git svn dcommit && git stash pop'
alias gsupdate='git stash && git svn rebase && git stash pop'
alias qg='nh qgit'

gr() {
    gradle "$@"
}

grrep() {
    grep -ri "$1" "$2" --include="$3"
}

uzl() {
    unzip -l "$1" | less
}

clip() {
    "$1" | xclip -selection clipboard
}

rf() {
    rm -rf "$1"
}

pd() {
    if [ -z "$1" ];
        then pushd && dv && ll
    else
        pushd "$1" && dv && ll
    fi
}

cl() {
    cd "$1" && ll
}

kil() {
    pkill -9 -f "$1"
}

peg() {
    ps -ef | grep "$1"
}

mkcd() {
    mkdir "$1" && cd "$1"
}

nh() {
    nohup "$1" &> /dev/null &
}

ged() {
    nohup gedit "$1" &> /dev/null &
}

inst()
{
  sudo apt-get install $1
}

complete -A command nh
complete -d command cl
complete -d command pd
complete -df command rf
