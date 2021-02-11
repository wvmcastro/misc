#!/bin/bash

# Vim text editor
sudo apt install vim vim-gtk -y

# Git
sudo apt install git -y

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

# zsh and oh my zsh
sudo apt install zsh -y
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Spotify
snap install spotify
