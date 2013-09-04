#!/bin/bash

DOT_FILES=( _vimrc _gvimrc .vim)

for file in ${DOT_FILES[@]}
do
    if test $file = ".vim"
    then
        ln -s $HOME/dotfiles/$file $HOME/.vim
    else
        ln -s $HOME/dotfiles/$file $HOME/$file
    fi
done

