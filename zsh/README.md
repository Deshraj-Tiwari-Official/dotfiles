# ZSH

Description:

> This is a minimal ZSH config with all the required necessary tools. This uses zinit as its package manager.

## Step 1: Install ZSH

```bash
sudo pacman -S zsh
```

## Step 2: Set as your default shell

```bash
chsh $(whoami)
# /bin/zsh  -- location of the installation
```

## Step 3: Install Package Manager

```bash
# zinit
bash -c "$(curl --fail --show-error --silent --location https://raw.githubusercontent.com/zdharma-continuum/zinit/HEAD/scripts/install.sh)"
```

## Step 4: Stow the zsh package from the ~/dotfiles directory

```bash
rm ~/.zshrc
cd ~/dotfiles
stow zsh
source ~/.zshrc
```


# After Install
Some important things to remind you:
- cd = zoxide
- cdi = zoxide (interactive)
- yy = yazi
- Check out the aliases set as well in the .zshrc file_
