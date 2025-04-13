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
alias a='git add'
alias co='git checkout'
alias cm='git commit -m'
alias pl='git pull'
alias plr='git pull --rebase'
alias pu='git push'
alias puf='git push --force-with-lease'
alias puu='git push -u'

compdef _git s=git
compdef _git d=git
compdef _git l=git
compdef _git b=git
compdef _git t=git
compdef _git f=git
compdef _git a=git
compdef _git co=git
compdef _git cm=git
compdef _git pl=git
compdef _git plr=git
compdef _git pu=git
compdef _git puf=git
compdef _git puu=git

git config --global core.editor 'vim -c "set fenc=utf-8"'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

if command -v pyenv >/dev/null 2>&1; then
  echo 'pyenv is installed'
  eval "$(pyenv init -)"
  eval "$(pyenv virtualenv-init -)"
fi

if [ -x /opt/homebrew/bin/brew ]; then
  echo 'brew is installed'
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

export PATH="/usr/local/opt/mysql-client/bin:$HOME/bin:$PATH"
