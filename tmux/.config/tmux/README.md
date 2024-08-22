# Tmux 

Description:

> This is an amazing tool that works like a tiling WM for your terminal

## Step 1: Install Tmux 

```bash
sudo nala install tmux
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
tmux # To download the packages, press leader (Ctrl + <space>) followed by capital I (shift + i)
```

## Step 5: Reload the config

```bash
tmux source ~/.config/tmux/tmux.conf
```

Here is a [Cheatsheet](https://tmuxcheatsheet.com/)
