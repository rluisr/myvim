#!/bin/bash -eu

function common() {
  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
  cp -rf .vim ../
  cp -rf .vimrc ../
}

function rhel_prepare() {
  yum groupinstall Development Tools -y
  yum install ruby ruby-devel rake -y
}

function debian_prepare() {
  sudo apt-get update -y
  sudo apt-get dist-upgrade -y
}

if [ "$(uname)" == 'Darwin' ]; then
  common

# RHEL
elif [ -e /etc/redhat-release ]; then
  rhel_prepare
  common

# Debian
elif [ -e /etc/lsb-release ]; then
  debian_prepare
  common

else
  echo "Your platform ($(uname -a)) is not supported."
  exit 1
fi
