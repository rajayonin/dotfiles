# rajayonin's resource files

Public repository to save my config files, so they can be easily accesible.

## Installing
This uses [GNU stow](https://www.gnu.org/software/stow/). In order to install each application's config, use `stow <app>`.

The current supported apps are:
- `vim`: [Vim](https://www.vim.org/) configuration
- `nvim`: [Neovim](https://neovim.io/) configuration  
  Requires:
  - [ripgrep](https://github.com/BurntSushi/ripgrep)
  - [fd](https://github.com/sharkdp/fd)
  - [tree-sitter](https://github.com/tree-sitter/tree-sitter)
  - `xclip` (for Linux)

  Depends-on:
  - `lazygit`
- `zsh`: [Z-shell](https://www.zsh.org/) configuration  
  Requires:
  - [fzf](https://github.com/junegunn/fzf)
  - [zoxide](https://github.com/ajeetdsouza/zoxide)
  - [eza](https://github.com/eza-community/eza)

  Depends-on:
  - `ohmyposh`
  - `yazi`
- `bash`: [GNU Bash](https://www.gnu.org/software/bash/) configuration
- `alias`: Extra shell aliases  
  Requires:
  - [batcat](https://github.com/sharkdp/bat)
  - [eza](https://github.com/eza-community/eza)
  - [Fastfetch](https://github.com/fastfetch-cli/fastfetch)
  - [trash-cli](https://github.com/andreafrancia/trash-cli)

  Depends-on:
  - `nvim`
- `terminator`: [Terminator Terminal Emulator](https://gnome-terminator.org/) configuration
- `ghostty`: [Ghostty](https://ghostty.org/) configuration
- `ohmyposh`: [Oh My Posh](https://ohmyposh.dev/) configuration
- `yazi`: [yazi](https://github.com/sxyazi/yazi) configuration
- `lazygit`: [Lazygit](https://github.com/jesseduffield/lazygit) configuration  
  Requires:
    - [difftastic](https://github.com/wilfred/difftastic) (requires [Rust](https://rustup.rs/))
- `pwsh`: [Powershell](https://microsoft.com/powershell/) configuration  
  Requires:
    - [Oh My Posh](https://ohmyposh.dev/)
    - [fzf](https://github.com/junegunn/fzf)
    - [zoxide](https://github.com/ajeetdsouza/zoxide)
    - [eza](https://github.com/eza-community/eza)
    - [ripgrep](https://github.com/BurntSushi/ripgrep)

  Depends-on:
    - `lazygit`
    - `nvim`
    - `ohmyposh`
- `code`: [VS Code](https://code.visualstudio.com/) configuration  
  Depends-on:
    - `vim`


### Minimal install (SSH servers)
This includes the bash and vim configs
```
git clone https://github.com/rajayonin/dotfiles
cd dotfiles
bash min.sh
```


### Windows install (Powershell)
> [!IMPORTANT]
> Execute as administrator, in Powershell
```powershell
git clone https://github.com/rajayonin/dotfiles
cd dotfiles
.\pwsh.ps1
```

To update config files after dependencies are already installed:
```powershell
.\pwsh.ps1 update
```



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

