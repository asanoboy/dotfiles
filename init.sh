#!/bin/bash

cd wk
curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh > install.sh
sh install.sh
rm install.sh

test -f ~/bin || mkdir -p ~/bin
curl https://beyondgrep.com/ack-2.18-single-file > ~/bin/ack
chmod 0755 ~/bin/ack
