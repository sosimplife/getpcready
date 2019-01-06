#!/bin/bash
# This script is used to set up the Debian or other based operation system on your pc very quickly.
# History:
# 2018/09/03    tim    First edition

# Variable
Cfg_File_Path="./cfg"
# Update source list
UPDATE_SOURCE_LIST="OFF"
if [ $UPDATE_SOURCE_LIST == "ON" ]
then
	echo "Updata source list..."
	file="/etc/apt/sources.list.bak"
	if [ ! -f $file ]
	then
		sudo cp /etc/apt/sources.list $file	
		sudo cp ./cfg/sources.list /etc/apt/sources.list
	fi
	sudo apt-get update && sudo apt-get upgrade
fi

#Git
GIT="OFF"
if [ $GIT == "ON" ]
then
	echo "GetPCReady: Install git ..."
	sudo apt-get install -y git
fi

# Vim
VIM="ON"
if [ $VIM == "ON" ]
then
	echo "GetPCReady: Install vim ..."
	sudo apt-get install -y vim
	cp $Cfg_File_Path/.vimrc ~/.vimrc

	echo "GetPCReady: Install vim - nerdtree"
	git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
	if [ ! -d "~/.vim/plugin" ]
	then
		mkdir -p ~/.vim/plugin
	fi
	cp ~/.vim/bundle/nerdtree/plugin/NERD_tree.vim ~/.vim/plugin/NERD_tree.vim
	if [ ! -d "~/.vim/doc" ]
	then
		mkdir -p ~/.vim/doc
	fi
	cp ~/.vim/bundle/nerdtree/doc/NERDTree.txt ~/.vim/doc/NERDTree.txt
fi

exit 0
# tmux
sudo apt-get install -y tmux

exit 0
