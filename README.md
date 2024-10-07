# Run the script 
(install curl if not installed by default)

This script will is an Arch Linux post install script,that downloads and configures tools that are required by this repository and other necessary tools.
> [!NOTE]
> This will do a few things.

```bash
curl -sSL https://gist.githubusercontent.com/Deshraj-Tiwari-Official/cca2335cd4d2bd21391aa7145f75756b/raw/3afdaf08bd2d586dd4b4e68aaa64f7786c786f11/setup.sh | bash
```

# Setup your dev environment with stow
> [!NOTE]
> stow . is for all the configs except zsh and the second command is specifically for zsh as the config file of zsh goes in the root directory.
```bash
stow .
stow -v -t ~ zsh
```

That is it. Happy hacking !!!
