# Tmux 

Description:

> This is an amazing tool that works like a tiling WM for your terminal

## Step 1: Install Tmux 

```bash
sudo pacman -S tmux
```

## Step 2: Install tmp plugin manager 

```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

## Step 3 Stow the tmux package from the ~/dotfiles directory

```bash
cd ~/dotfiles
stow tmux 
```

## Step 4: Start Tmux and download packages
```bash
tmux
```

## Step 5: Reload the config

```bash
tmux source ~/.config/tmux/tmux.conf
```
Now press leader (ctrl+<space>) followed by I (shift+I) to install the tpm plugins
# After Install
- Check out the config for shortcuts and all
Here is a [Cheatsheet](https://tmuxcheatsheet.com/)
