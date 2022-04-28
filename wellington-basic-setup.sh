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
git clone --depth 1 https://github.com/dense-analysis/ale.git ~/.vim/pack/git-plugins/start/ale
git clone https://github.com/itchyny/lightline.vim ~/.vim/pack/plugins/start/lightline

# # Asynchronous Lint Engine vim
git clone --depth 1 https://github.com/dense-analysis/ale.git ~/.vim/pack/git-plugins/start/ale

# # You Complete Me vim
sudo apt install build-essential cmake vim-nox python3-dev -y
sudo apt install mono-complete golang nodejs default-jdk npm -y
mkdir -p ~/.vim/bundle/
cd  ~/.vim/bundle/
git clone https://github.com/ycm-core/YouCompleteMe.git --depth 1
cd YouCompleteMe
git submodule update --init --recursive
python3 install.py --all
cd ~

# # Auto close html and xml
mkdir -p ~/.vim/plugin
wget https://raw.githubusercontent.com/alvan/vim-closetag/master/plugin/closetag.vim -O \
     ~/.vim/plugin/closetag.vim
echo "let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.urdf*'" >> \
      ~/.vimrc

# Powerline fonts
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
cd ..
rm -rf fonts

# Brave web browser
#sudo snap install brave

# Bitwarden password manager
sudo snap install bitwarden

# tldr cli helper
sudo apt install tldr -y

# Spotify
sudo snap install spotify

# Flat Remix theme
#mkdir ~/.themes
#mkdir ~/.icons
#git clone https://github.com/daniruiz/flat-remix.git --depth 1
#git clone https://github.com/daniruiz/flat-remix-gtk.git --depth 1
#cp -r flat-remix/Flat-Remix* ~/.icons/
#cp -r flat-remix-gtk/Flat-Remix* ~/.themes/ 
#rm -rf flat-remix
#rm -rf flat-remix-gnome
sudo apt install gnome-tweaks

# Signal messenger
sudo snap install signal-desktop

# discord
snap install discord

# okular pdf reader
sudo apt install okular -y

# zsh and Oh My Zsh and my favorite plugins
sudo apt install zsh -y
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
wget https://raw.githubusercontent.com/wvmcastro/misc/main/.zshrc
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
sudo apt install python3-dev python3-pip python3-setuptools -y
sudo pip3 install thefuck -y
sudo chsh -s $(which zsh)

# tmux
sudo apt install tmux

# vscode
#sudo snap install code --classic
