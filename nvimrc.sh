#!/bin/bash
# This can be calling with: sh -c 'the strings below'

curl -fLo "$HOME/.config/nvim/init.vim" --create-dirs \
https://raw.githubusercontent.com/storm-sergey/dotfiles/master/.vimrc
