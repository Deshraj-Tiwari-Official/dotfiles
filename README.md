# Run the script 
(install curl if not installed by default)

This script will is an Arch Linux post install script, that sets up many things like a firewall, downloads more linux kernels, and also downloads and configures tools that are required by this repository and other necessary tools like bat, btop, fastfetch, etc., with custom configurations.

> [!NOTE]
> This will download a few packages.

```bash
curl -sSL https://gist.githubusercontent.com/Deshraj-Tiwari-Official/cca2335cd4d2bd21391aa7145f75756b/raw/e761ec7a66fe265bb2f5c2f3f9bdc21a6dc235d0/setup.sh | bash
```

# Setup your dev environment

Check out the README.md files of each one to set them up one by one.

1. [Alacritty](./alacritty/.config/alacritty/README.md)
2. [ZSH](./zsh/README.md)
3. [OMP](./ohmyposh/.config/ohmyposh/README.md)
4. [Tmux](./tmux/.config/tmux/README.md)
