#!/bin/bash

set -e  # Exit on error

# Text formatting functions
bold=$(tput bold)
reset=$(tput sgr0)

# Color codes
green=$(tput setaf 2)
magenta=$(tput setaf 5)

# Welcome message
echo -e "${bold}${green}Starting setup...${reset}"

# Update system and install base tools
echo -e "${bold}${magenta}- Updating system and installing base tools...${reset}"
sudo pacman -Syu --noconfirm
sudo pacman -S --noconfirm git curl wget p7zip tar rsync aria2 linux-lts linux-lts-headers unzip

# Install paru AUR helper
echo -e "${bold}${magenta}- Installing paru AUR helper...${reset}"
if ! command -v paru &> /dev/null; then
    sudo pacman -S --needed --noconfirm base-devel
    git clone https://aur.archlinux.org/paru.git
    cd paru
    makepkg -si --noconfirm
    cd .. && rm -rf paru
fi

# Install development tools
echo -e "${bold}${magenta}- Installing development tools...${reset}"
paru -S --noconfirm stow btop zoxide fzf bat yazi nerdfetch ripgrep ttf-jetbrains-mono hyprpaper tmux sesh-bin eza hyprlock lazygit clipman hyprpicker hypridle pavucontrol brightnessctl power-profiles-daemon xdg-desktop-portal-wlr neovim zsh kitty starship cava hyprland dunst waybar wofi
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Apply Catppuccin Mocha theme to Bat
echo -e "${bold}${magenta}- Applying Catppuccin Mocha theme to Bat...${reset}"
mkdir -p "$(bat --config-dir)/themes"
wget -P "$(bat --config-dir)/themes" https://github.com/catppuccin/bat/raw/main/themes/Catppuccin%20Mocha.tmTheme
bat cache --build
touch ~/.config/bat/config
echo '--theme="Catppuccin Mocha"' >> ~/.config/bat/config

# Final notes
echo -e "${bold}${green}Setup completed successfully!${reset}"
