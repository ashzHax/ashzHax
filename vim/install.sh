#!/bin/sh
# Installation script for my Linux Vim configuration

usage()
{
  echo "[usage] ./install.sh [ubuntu]"
  exit
}

cmd()
{
  echo "[cmmnd] $@"
  $@
}

ubuntu()
{
  # install Vim
  cmd sudo apt-get install -y vim

  # YouCompleteMe plugin requirement install
  cmd sudo apt-get install -y build-essential cmake vim-nox python3-dev
  cmd sudo mkdir -p /etc/apt/keyrings
  cmd curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg
  cmd echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_current.x nodistro main" | sudo tee /etc/apt/sources.list.d/nodesource.list
  cmd sudo apt-get install -y mono-complete golang nodejs openjdk-17-jdk openjdk-17-jre npm
  cmd cd ~/.vim/bundle/YouCompleteMe
  cmd python3 install.py --all

  # cscope install
  sudo apt install cscope

  # configuration copy
  cmd cp ./vimrc ~/.vimrc
  cmd cp ./vim ~/vim -f
}

# main
if [ $# -eq 0 -o $# -gt 1 ]; then
  usage
fi

echo "[alert] starting vim config install" 

if [ $# -eq 1 ]; then
  case $1 in
    "ubuntu")
      ubuntu
      ;;
  esac
fi

echo "[alert] install finished"
