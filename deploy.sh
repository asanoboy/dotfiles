#!/bin/bash

COMMENT=#asanoboy-dotfiles
PROFILE=".zshrc"

grep "$COMMENT" ~/$PROFILE || ( \
  ( echo "[Info]: Edit ~/$PROFILE" ) && \
  ( echo "source $(pwd)/$PROFILE $COMMENT" >> ~/$PROFILE ) && \
  ( source $(pwd)/$PROFILE ) \
)

cp .vimrc ~/.vimrc
cp .ackrc ~/.ackrc
