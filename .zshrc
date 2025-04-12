script_dir="$(cd "$(dirname "${(%):-%x}")" && pwd)"

# git-promptの読み込み
source "${script_dir}/.bin/git-prompt.sh"

# git-completionの読み込み
fpath=(~/.bin $fpath)
zstyle ':completion:*:*:git:*' script "${script_dir}/.bin/git-completion.bash"
autoload -Uz compinit && compinit

# プロンプトのオプション表示設定
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUPSTREAM=auto

# プロンプトの表示設定(好きなようにカスタマイズ可)
setopt PROMPT_SUBST ; PS1='%*) %F{cyan}%~%f %F{yellow}$(__git_ps1 "(%s)")%f
\$ '

alias ssh=~/dotfiles/.bin/ssh-host-color.sh

alias s='git status'
alias d='git diff --color'
alias l='git log --color'
alias b='git branch'
alias t='git tag'
alias f='git fetch'
alias co='git checkout'

git config --global core.editor 'vim -c "set fenc=utf-8"'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
export PATH="/usr/local/opt/mysql-client/bin:$HOME/bin:$PATH"
