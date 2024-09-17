# Waybar

Description:


## Step 1: Install Waybar

```bash
paru -S wayabr
```

## Step 2: Stow the waybar package from the ~/dotfiles directory

```bash
cd ~/dotfiles
stow waybar
```


## Step 3: Add user to the input group for functionality

```bash
sudo usermod -aG input $(whoami)
```
