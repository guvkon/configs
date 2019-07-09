#!/bin/sh

# Must be executed from directory of this file

CONFIGS_DIR="`pwd`"
USER="`whoami`"

move_and_link() {
    if [ -f "~/$1" ] || [ -d "~/$1" ]; then
        mv "~/$1" "~/$1.backup"
    fi
    ln -s "$CONFIGS_DIR/$1" "~/$1"
}

move_and_link .zshrc
move_and_link .vimrc
move_and_link .shell_aliases
move_and_link .gitconfig
mkdir -p "~/.vim/pack/$USER"
ln -s "$CONFIGS_DIR/vim-packs" "~/.vim/pack/$USER/start"
git submodule init
git submodule update
