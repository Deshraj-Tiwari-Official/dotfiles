# ZSH

Description:

> This is a minimal ZSH config with all the required necessary tools. This uses zinit as its package manager.

## Step 1: Install ZSH

```bash
sudo dnf install zsh
```

## Step 2: Set as your default shell

```bash
chsh $(whoami)
# /bin/zsh  -- location of the installation
```

## Step 3: Install Package Manager

```bash
# zinit
yay -S zinit
```

## Step 4: Stow the zsh package from the ~/dotfiles directory

```bash
rm ~/.zshrc
cd ~/dotfiles
stow zsh
source ~/.zshrc
```
