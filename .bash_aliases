#!/bin/bash

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
alias gcommita="git commit --amend"
alias gcommitane="git commit --amend --no-edit"
alias gclean="git clean -dfx"
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
alias dimg='docker images'
alias lsd='docker ps -a --format="table {{.Names}}\t{{.Image}}\t{{.Status}}\t{{.Ports}}" | sed ''/Exited/s//`printf "\033[0;31mExited\033[0m"`/'' | sed ''/Up/s//`printf "\e[96mUp\033[0m"`/'''

#Bash Vars
color_prompt=yes
PS1='${debian_chroot:+($debian_chroot)}\[\033[0;35m\]\u@\h\[\033[00m\]:\[\033[01;35m\]\w\[\033[00m\]\$ '

# Copy file to clipboard
# Needs to be updated to cross platform
function cbc {
	cat $1 > /dev/clipboard 
}

# lists all the modified files
function gmodified {
	git status -suno | awk '{ FS=" M "; output=""; for(i=2;i<=NF;i++){output=output$i" "}; print output; }'
}

# lists all the deleted files
function gdeleted {
	git status -suno | awk '{ FS=" D "; output=""; for(i=2;i<=NF;i++){output=output$i" "}; print output; }'
}

# adds all the modified files
function gaddm {
	gmodified | xargs git add
}

# adds all the deleted files
function gaddd {
	gdeleted | xargs git add
}

# adds all the modified/deleted files
function gadda {
	gaddm
	gaddd
}


# Set the upsteam to master for whatever branch
function gsetup {
	git branch --set-upstream-to=origin/master $(git branch | awk '/^\*/{print $2}')
}

# Checks out all the modified files
function gcheckoutm {
	gmodified | xargs git checkout
}

# Checks out all the deleted files
function gcheckoutd {
	gdeleted | xargs git checkout
}

# Checks out all the modified/deleted files
function gcheckouta {
	gcheckoutam
	gcheckoutad
}

# Performs a hard reset to head and deletes untracked files
function grhc() {
	git reset -q --hard HEAD && git clean -qdfx
}
