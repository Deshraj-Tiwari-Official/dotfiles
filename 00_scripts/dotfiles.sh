#!/bin/bash

set -e

bold=$(tput bold)
reset=$(tput sgr0)

green=$(tput setaf 2)

cd ~
git clone https://github.com/Deshraj-Tiwari-Official/dotfiles
cd dotfiles
stow .
stow -v -t ~ zsh

echo -e "${bold}${green}Successfully setup dotfiles!${reset}"
