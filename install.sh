#!/bin/bash -exu

function common() {
  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
  cp -rf .vim ../
  cp -rf .vimrc ../
}

function rhel_prepare() {
  yum groupinstall Development Tools -y
  yum install ruby ruby-devel rake -y
}

if [ "$(uname)" == 'Darwin' ]; then
  common

# Only rhel
elif [ "$(expr substr $(uname -s) 1 5)" == 'Linux' ]; then
  rhel_prepare
  common

else
  echo "Your platform ($(uname -a)) is not supported."
  exit 1
fi
