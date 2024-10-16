# rajayonin's resource files

Public repository to save my config files, so they can be easily accesible.

## Installing
This uses [GNU stow](https://www.gnu.org/software/stow/). In order to install each application's config, use `stow <app>`.

The current supported apps are:
- `vim`: [Vim](https://www.vim.org/) configuration
- `nvim`: [Neovim](https://neovim.io/) configuration
- `zsh`: [Z-shell](https://www.zsh.org/) configuration
- `bash`: [GNU Bash](https://www.gnu.org/software/bash/) configuration
- `alias`: Extra shell aliases. Requires:
  - [batcat](https://github.com/sharkdp/bat)
  - [eza](https://github.com/eza-community/eza)
  - [Neovim](https://neovim.io/)
  - [Fastfetch](https://github.com/fastfetch-cli/fastfetch)
- `terminator`: [Terminator Terminal Emulator](https://gnome-terminator.org/) configuration
- `fonts`: My prefered fonts:
    - [CaskaydiaCove NerdFont](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/CascadiaMono) (patched Cascadia Code)

    After stowing, do:
    ```bash
    fc-cache -f -v
    ```
