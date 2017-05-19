#!/bin/bash

COMMENT=#asanoboy-dotfiles
PROFILE=".bash_profile"

grep "$COMMENT" ~/$PROFILE || ( \
  ( echo "[Info]: Edit ~/$PROFILE" ) && \
  ( echo "source $(pwd)/$PROFILE $COMMENT" >> ~/$PROFILE ) && \
  ( source $(pwd)/$PROFILE ) \
)

cp .vimrc ~/.vimrc
