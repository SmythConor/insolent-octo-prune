#Misc aliases
alias la="ls -A"
alias l="ls -CF"
alias ll="ls -l"
alias cl="clear"
alias lc="cl && ll"
alias lt="ls -alt"
alias sagi="sudo apt-get install"

#Git aliases
alias gpom="git push origin master"
alias add="git add"
alias commit="git commit"
alias push="git push"
alias fetch="git fetch"
alias pull="git pull"
alias stat="git status"
alias log="git log"
alias branch="git branch"
alias checkout="git checkout"
alias diff="git diff"
alias show="git show"

color_prompt=yes
PS1='${debian_chroot:+($debian_chroot)}\[\033[0;35m\]\u@\h\[\033[00m\]:\[\033[01;35m\]\w\[\033[00m\]\$ '

#PC specific 
alias j="~/work/bash/j.sh"
alias college=". ~/work/bash/college.sh"
alias mkdor=". ~/work/bash/mkdor.sh"
alias c=". ~/work/bash/c.sh"
alias sublime="~/sw/sublime_text/sublime_text"
alias jks="ssh buildmaster@jenkins"
alias xclip="xclip -selection c"
alias sts="/usr/share/sts-bundle/sts-3.7.0.RELEASE/STS"
alias android="/usr/share/android-studio/bin/studio.sh"

alias lsd='docker ps -a --format="table {{.Names}}\t{{.Image}}\t{{.Status}}\t{{.Ports}}" | sed ''/Exited/s//`printf "\033[0;31mExited\033[0m"`/'' | sed ''/Up/s//`printf "\e[96mUp\033[0m"`/'''
