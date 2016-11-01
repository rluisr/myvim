#!/bin/bash -exu
yum install ruby ruby-devel rake -y
yum groupinstall Development Tools -y
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp -rf .vim ../
cp -rf .vimrc ../
