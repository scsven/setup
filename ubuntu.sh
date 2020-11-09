#!/bin/bash

sudo apt update
sudo apt install -y openssh-server vim g++ gcc htop zsh

# Install oh-my-zsh
echo "Y" | sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

