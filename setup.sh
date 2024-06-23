sudo pacman -S git curl wget p7zip unrar tar rsync exfat-utils fuse-exfat ntfs-3g flac jasper aria2
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
nvm install --lts
sudo pacman -S ttf-meslo-nerd
fc-cache -fv
cd ~/Downloads 
mkdir git
cd git
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
yay -S stow
yay -S zoxide
yay -S fzf
clear
