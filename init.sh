#!/bin/zsh

cd wk
curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh > install.sh
sh install.sh
rm install.sh

test -f ~/bin || mkdir -p ~/bin
curl https://beyondgrep.com/ack-v3.8.1 > ~/bin/ack && chmod 0755 ~/bin/ack
