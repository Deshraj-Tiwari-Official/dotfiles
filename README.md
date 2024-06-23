## You should have the following tools installed:

1.  git
2.  curl

## Prerequisite(s)

### Install yay

```bash
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
```

### Get recommended tools

```bash
sudo pacman -S p7zip unrar tar rsync exfat-utils fuse-exfat ntfs-3g flac jasper aria2
```

### Install NodeJS using NVM

<a href="https://nodejs.org/en/download/package-manager">Guide</a>

### Setup a Nerd Font (Meslo Nerd Font)

1. Check out the nerdfonts website and townload the font.
2. Put it into the ~/.local/share/fonts directory after unzipping it.
3. Run the following command to rebuild font cache:

```bash
fc-cache -fv
```

4. Set the font as your default terminal emulator font

### Download GNU stow

```bash
yay -S stow
```

# Setup your dev environment

Check out the README.md files of each one to set them up one by one.

1. [ZSH](./zsh/README.md)
2. [Neovim](./nvim/.config/nvim/README.md)
