# ZSH

Description:

> This is a minimal ZSH config with all the required necessary tools. This uses zinit as its package manager.

## Step 1: Install ZSH

```bash
yay -S zsh
```

## Step 2: Set as your default shell

```bash
chsh <username>
# /bin/zsh  -- location of the installation
```

## Step 3: Install necessary things

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
