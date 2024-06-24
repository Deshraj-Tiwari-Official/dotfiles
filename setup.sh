#!/bin/bash
echo -e "\e[1m\e[32m Welcome! \e[0m"
echo -e "\e[1m\e[36m This is an Arch Linux post installation guide. This will automatically setup a lot of the things that you would have configured. \e[0m"
echo 
echo

# Installing necessary tools
echo -e "\e[1m\e[35m - Installing necessary tools \e[0m"
sleep 1
sudo pacman -Sy git curl wget p7zip tar rsync aria2 linux-lts linux-lts-headers
sleep 1
clear
echo

# Setting up NODE JS enviornment
echo -e "\e[1m\e[35m - Setting up Node JS and npm \e[0m"
sleep 1
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
nvm install --lts
node --version
npm --version
sleep 1
clear
echo

# Downloading Meslo Nerd Font
echo -e "\e[1m\e[35m - Downloading Meslo Nerd Font\e[0m"
sleep 1
sudo pacman -S ttf-meslo-nerd
fc-cache -fv
sleep 1
clear
echo

# Setting up yay AUR helper
echo -e "\e[1m\e[35m - Setting up yay AUR helpe \e[0m"
sleep 1
cd
mkdir git
cd git
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
sleep 1
clear
echo 

# Downloading development tools from yay
echo -e "\e[1m\e[35m - Downloading development tools from yay \e[0m"
sleep 1
yay -S stow btop vim zoxide fzf bat
sleep 1
clear
echo

# Cloning your dotfiles repo
echo -e "\e[1m\e[35m - Cloning your dotfiles repo \e[0m"
sleep 1
cd 
git clone https://github.com/Deshraj-Tiwari-Official/dotfiles
cd dotfiles
sleep 1
clear

# Final Notes
echo -e "\e[1m\e[33m Final notes\e[0m"
sleep 1
echo -e "\e[1m\e[36m Go to github.com/Deshraj-Tiwari-Official/dotfiles and check out the README.md \e[0m"
