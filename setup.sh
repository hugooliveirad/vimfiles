#!/bin/bash

set -e

unlink ~/.vimrc
[ -f ~/.vimrc ] && echo 'you should backup and remove your ~/.vimrc' && exit 1

echo 'installing'
ln -s ~/.vim/vimrc ~/.vimrc
[ -d ~/.vim/bundle/vundle ] || git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
vim +BundleInstall +qall

echo 'happy coding'
