# rajayonin's resource files

Public repository to save my config files, so they can be easily accesible.

## Installing
This uses [GNU stow](https://www.gnu.org/software/stow/). In order to install each application's config, use `stow <app>`.

The current supported apps are:
- `vim`: [Vim](https://www.vim.org/) configuration
- `nvim`: [Neovim](https://neovim.io/) configuration
- `zsh`: [Z-shell](https://www.zsh.org/) configuration.  
  Requires:
  - [Oh My Posh](https://ohmyposh.dev/)
  - [fzf](https://github.com/junegunn/fzf)
  - [zoxide](https://github.com/ajeetdsouza/zoxide)
  - [eza](https://github.com/eza-community/eza)
- `bash`: [GNU Bash](https://www.gnu.org/software/bash/) configuration
- `alias`: Extra shell aliases.  
  Requires:
  - [batcat](https://github.com/sharkdp/bat)
  - [eza](https://github.com/eza-community/eza)
  - [Neovim](https://neovim.io/)
  - [Fastfetch](https://github.com/fastfetch-cli/fastfetch)
- `terminator`: [Terminator Terminal Emulator](https://gnome-terminator.org/) configuration

## Fonts
In order to make use of "the cool stuff" (icons, etc), we'll have to use a [Nerd Font](https://www.nerdfonts.com/).

My preferred fonts are:
- Terminal: [CaskaydiaMono NF](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/CascadiaMono) (CascadiaMono)
- IDE: [CaskaydiaCove NF](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/CascadiaCode) (CascadiaCode)

You can install them through [Oh My Posh](https://ohmyposh.dev/):
```
oh-my-posh font install CascadiaMono
oh-my-posh font install CascadiaCode
```
