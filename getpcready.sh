#!/bin/bash
# This script is used to set up the Debian or other based operation system on your pc very quickly.
# History:
# 2018/09/03    tim    First edition

# Update source list
echo "Updata source list..."
file="/etc/apt/sources.list.bak"
if [ ! -f $file ]
then
	sudo cp /etc/apt/sources.list $file	
fi

cd ./cfg
pwd
exit 0
# Vim
sudo apt-get install -y vim

# tmux
sudo apt-get install -y tmux

exit 0
