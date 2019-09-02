test -r ~/.profile && . ~/.profile
test -r ~/.bashrc && . ~/.bashrc

source ~/dotfiles/.bin/git-prompt.sh

GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWUPSTREAM=1
GIT_PS1_SHOWUNTRACKEDFILES=1
GIT_PS1_SHOWSTASHSTATE=1

blue="\[\e[1;34m\]"
lightblue="\[\e[1;36m\]"
green="\[\e[1;32m\]"
yellow="\[\e[00m\]\[\e[1;33m\]"
white="\[\e[00m\]"
mazenda="\[\e[1;35m\]"
export PS1="\t) $green\W$yellow\$(__git_ps1)\n$white$ "

alias ssh=~/dotfiles/.bin/ssh-host-color.sh

alias s='git status'
alias d='git diff --color'
alias l='git log --color'
alias b='git branch'
alias t='git tag'
alias f='git fetch'
alias co='git checkout'

git config --global core.editor 'vim -c "set fenc=utf-8"'

if [[ -x `which colordiff` ]]; then
	alias diff='colordiff -u'
else
	alias diff='diff -u'
fi

source ~/dotfiles/.bin/git-completion.bash

export PATH=$PATH:~/bin:~/go/bin

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
#if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi

#alias usenvm='export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" && [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

alias tin='terminal-notifier -message "Tin" -sound Glass'

# for mac bash_completion
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"
