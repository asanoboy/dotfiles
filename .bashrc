if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

alias ssh=~/.bin/ssh-host-color.sh

alias s='git status'
alias d='git diff --color'
alias l='git log --color'
alias b='git branch'
alias t='git tag'
