test -r ~/.profile && . ~/.profile
test -r ~/.bashrc && . ~/.bashrc

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\[\e[1;36m\]\u\[\e[1;34m\]@\h \[\e[1;32m\]\W\[\e[00m\]\[\e[2;32m\]\$(parse_git_branch)\[\e[00m\] \n$ "

alias ssh=~/.bin/ssh-host-color.sh

alias s='git status'
alias d='git diff --color'
alias l='git log --color'
alias b='git branch'
alias t='git tag'

git config --global core.editor 'vim -c "set fenc=utf-8"'

if [[ -x `which colordiff` ]]; then
	alias diff='colordiff -u'
else
	alias diff='diff -u'
fi
