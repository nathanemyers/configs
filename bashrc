source ~/.config/git-completion.bash
source ~/.git-prompt.sh

export TERM=xterm-256color
export EDITOR=vim
alias svnlog='svn log -l 5 -v'

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias .......='cd ../../../../../..'

export PS1="\[\e[1;35m\]\$(__git_ps1 "%s"\ )\[\e[0m\]\[\e[1;32m\]\w\[\e[0m\] \[\e[1;33m\]\$\[\e[0m\] "

