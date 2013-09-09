#!/bin/bash

DOT_FILES=( .vimrc .gvimrc vimfiles)

for file in ${DOT_FILES[@]}
do
    if test $file = "vimfiles"
    then
        ln -s $HOME/dotfiles/$file $HOME/.vim
    else
        ln -s $HOME/dotfiles/$file $HOME/$file
    fi
done

