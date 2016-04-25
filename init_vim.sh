#!/bin/zsh

git clone https://github.com/sokiaoba/vim-settings.git
mv vim-settings/ ~/
cp ~/vim-settings/.vimrc ~/

mkdir -p ~/.vim/bundle
git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
