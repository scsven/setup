#!/bin/bash

sudo apt update
sudo apt install -y openssh-server vim g++ gcc htop zsh

# Install oh-my-zsh
echo "Y" | sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Download .vimrc_vundle and install
wget -O ~/.vimrc https://raw.githubusercontent.com/scsven/vimrc/master/.vimrc_vundle
vim +PluginInstall +qall
rm ~/.vimrc

# Download .vimrc
wget -O ~/.vimrc https://raw.githubusercontent.com/scsven/vimrc/master/.vimrc
wget -O ~/.vimrc_vundle https://raw.githubusercontent.com/scsven/vimrc/master/.vimrc_vundle

