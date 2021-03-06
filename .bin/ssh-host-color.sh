#!/bin/bash
#
# Fork from https://gist.github.com/773849
#

set_term_bgcolor(){
  local R=$1
  local G=$2
  local B=$3
  /usr/bin/osascript <<EOF
tell application "iTerm2"
  tell the current window
    tell the current session
      set background color to {$(($R*65535/255)), $(($G*65535/255)), $(($B*65535/255))}
    end tell
  end tell
end tell
EOF
}

if [[ "$@" =~ gs1 ]]; then
  set_term_bgcolor 40 10 0
elif [[ "$@" =~ gs-dev ]]; then
  set_term_bgcolor 20 30 0
else
  set_term_bgcolor 0 0 50
fi

ssh $@

set_term_bgcolor 0 0 0
