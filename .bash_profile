parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\[\e[1;32m\]\W\[\e[00m\]\[\e[2;32m\]\$(parse_git_branch)\[\e[00m\] $ "

test -r ~/.profile && . ~/.profile
test -r ~/.bashrc && . ~/.bashrc
