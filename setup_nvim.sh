#!/bin/bash

DIR="$(dirname "$(readlink -f "$0")")"

# install nvim 
echo '[+] Installing nvim'
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf nvim-linux-x86_64.tar.gz

echo 'export PATH="$PATH:/opt/nvim-linux-x86_64/bin"' >> ~/.bashrc
echo '[+] Adding rust analyzer'
rustup component add rust-analyzer

if [ ! -d ~/.config ]; then
	mkdir ~/.config
fi

if [ -d ~/.config/nvim ]; then 
	echo '[+] Backing up current nvim config'

	mv ~/.config/nvim{,.bak}
fi

echo '[+] Adding custom config'
if [ -d ./nvim ]; then
	cp -r ./nvim ~/.config/
else
	echo "Can't find nvim config dir in current directory, please navigate to the root of the git repo"
	exit 1
fi

echo '[+] next steps:'
echo '[+] start nvim and install plugins'
echo '[+] then check for updates (U)'
echo '[+] if nvim does not work add this to your bashrc/zprofile: export PATH="$PATH:/opt/nvim-linux-x86_64/bin"'
