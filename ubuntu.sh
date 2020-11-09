#!/bin/bash

sudo apt update
sudo apt install -y openssh-server vim g++ gcc htop zsh

# Install Vundle
git clone https://github.com/VundleVim/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim

# Download .vimrc_vundle and install
wget -O $HOME/.vimrc https://raw.githubusercontent.com/scsven/vimrc/master/.vimrc_vundle
vim +PluginInstall +qall
rm $HOME/.vimrc

# Download .vimrc
wget -O $HOME/.vimrc https://raw.githubusercontent.com/scsven/vimrc/master/.vimrc
wget -O $HOME/.vimrc_vundle https://raw.githubusercontent.com/scsven/vimrc/master/.vimrc_vundle


# Install manually

# oh-my-zsh
wget -O $HOME/oh-my-zsh-install.sh https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh

