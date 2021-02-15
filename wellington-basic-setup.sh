#!/bin/bash

# Git
sudo apt install git -y

# Vim text editor
sudo apt install vim vim-gtk -y
cd ~
wget https://raw.githubusercontent.com/wvmcastro/misc/main/.vimrc
mkdir -p ~/.vim/pack/themes/start
cd ~/.vim/pack/themes/start
git clone https://github.com/dracula/vim.git dracula

# Powerline fonts
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
cd ..
rm -rf fonts

# Brave web browser
sudo apt install apt-transport-https curl gnupg -y
curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -
echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install brave-browser -y

# Bitwarden password manager
snap install bitwarden

# tldr cli helper
sudo apt install tldr -y

# Spotify
snap install spotify

# lxc containers
snap install lxd

# Flat Remix theme
mkdir ~/.themes
mkdir ~/.icons
git clone https://github.com/daniruiz/flat-remix.git --depth 1
git clone https://github.com/daniruiz/flat-remix-gtk.git --depth 1
cp -r flat-remix/Flat-Remix* ~/.icons/
cp -r flat-remix-gtk/Flat-Remix* ~/.themes/ 
rm -rf flat-remix
rm -rf flat-remix-gnome
sudo apt install gnome-tweak-tool -y

# Signal messenger
wget -O- https://updates.signal.org/desktop/apt/keys.asc | \
sudo apt-key add -
echo "deb [arch=amd64] https://updates.signal.org/desktop/apt xenial main" \ | sudo tee -a /etc/apt/sources.list.d/signal-xenial.list
sudo apt update && sudo apt install signal-desktop -y

# discord
snap install discord

# zsh and Oh My Zsh and my favorite plugins
sudo apt install zsh -y
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
wget https://raw.githubusercontent.com/wvmcastro/misc/main/.zshrc
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
sudo apt install python3-dev python3-pip python3-setuptools
sudo pip3 install thefuck

