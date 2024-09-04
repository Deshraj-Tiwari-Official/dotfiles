# ZSH

Description:

> This is a minimal ZSH config with all the required necessary tools. This uses zinit as its package manager.

## Step 1: Install ZSH

```bash
sudo pacman install zsh
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
- cd COMMAND uses Zoxide
- cdi launches an interactive zoxide window using the fzf (fuzzyfinder)
- you can zoxide edit to remove, increment or decrement a path, and zoxide add to add a new one without going in the directory
- check out the aliases set in the .zshrc XD
