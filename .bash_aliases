#Misc aliases
alias la="ls -AG"
alias l="ls -CFG"
alias ll="ls -lG"
alias cl="clear"
alias lc="cl && ll"
alias lt="ls -altG"

#Git aliases
alias gpom="git push origin master"
alias gadd="git add"
alias gcommit="git commit"
alias gpush="git push"
alias gfetch="git fetch"
alias gpull="git pull"
alias gstat="git status"
alias glog="git log"
alias gbranch="git branch"
alias gcheckout="git checkout"
alias gdiff="git diff"
alias gshow="git show"

#Docker aliases
alias dstat="docker stats"
alias dpush="docker push"
alias dpull="docker pull"
alias drun="docker run -d -p"
alias dstart="docker start"
alias dstop="docker stop"
alias dc="docker-compose"
alias dlog="docker logs"
alias dlogf="docker logs -f"
alias dlogt="docker logs --tail"
alias dlogft="docker logs -f --tail"
alias img='docker images'
alias lsd='docker ps -a --format="table {{.Names}}\t{{.Image}}\t{{.Status}}\t{{.Ports}}" | sed ''/Exited/s//`printf "\033[0;31mExited\033[0m"`/'' | sed ''/Up/s//`printf "\e[96mUp\033[0m"`/'''

#Bash Vars
color_prompt=yes
PS1='${debian_chroot:+($debian_chroot)}\[\033[0;35m\]\u@\h\[\033[00m\]:\[\033[01;35m\]\w\[\033[00m\]\$ '

#xclip
alias xclip="xclip -selection c"
