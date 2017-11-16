test -r ~/.profile && . ~/.profile
test -r ~/.bashrc && . ~/.bashrc

source ~/dotfiles/.bin/git-prompt.sh

GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWUPSTREAM=1
GIT_PS1_SHOWUNTRACKEDFILES=1
GIT_PS1_SHOWSTASHSTATE=1

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\[\e[1;36m\]\u\[\e[1;34m\]@\h \[\e[1;32m\]\W\[\e[00m\]\[\e[1;33m\]\$(__git_ps1)\[\e[00m\] \n$ "
# export PS1="\[\e[1;36m\]\u\[\e[1;34m\]@\h \[\e[1;32m\]\W\[\e[00m\]\[\e[1;33m\]\$(parse_git_branch)\[\e[00m\] \n$ "

# export PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '

alias ssh=~/dotfiles/.bin/ssh-host-color.sh

alias s='git status'
alias d='git diff --color'
alias l='git log --color'
alias b='git branch'
alias t='git tag'

alias dps='docker ps'
alias dstart='docker start'
alias dstop='docker stop'

git config --global core.editor 'vim -c "set fenc=utf-8"'

if [[ -x `which colordiff` ]]; then
	alias diff='colordiff -u'
else
	alias diff='diff -u'
fi

source ~/dotfiles/.bin/git-completion.bash

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(rbenv init -)"
export PTOOLSPATH=/Users/asano/git/phalcon-devtools/
export PATH=$PATH:/Users/asano/git/phalcon-devtools
export PTOOLSPATH=/Users/asano/git/phalcon-devtools/
export PATH=$PATH:/Users/asano/git/phalcon-devtools
export PTOOLSPATH=/Users/asano/git/phalcon-devtools/
export PATH=$PATH:/Users/asano/git/phalcon-devtools
