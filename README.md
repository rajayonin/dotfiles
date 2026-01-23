# rajayonin's resource files

Public repository to save my config files, so they can be easily accesible.

## Installing
This uses [GNU stow](https://www.gnu.org/software/stow/). In order to install each application's config, use `stow <app>`.
Some applications might have some different routes in MacOS, so `stow` won't work.

Other applications (marked as `*`) need their configs in other path, check the documentation.

The current supported apps are:
- `vim`: [Vim](https://www.vim.org/) configuration
- `nvim`: [Neovim](https://neovim.io/) configuration  
  Requires:
  - [ripgrep](https://github.com/BurntSushi/ripgrep)
  - [fd](https://github.com/sharkdp/fd)
  - [tree-sitter](https://github.com/tree-sitter/tree-sitter)
  - [Deno](https://deno.com/)
  - `xclip` (for Linux)

  Depends-on:
  - `lazygit`
- `helix`: [Helix](https://helix-editor.com/) configuration  
  Requires:
  - `xclip` (for Linux)
- `zsh`: [Z-shell](https://www.zsh.org/) configuration  
  Requires:
  - [fzf](https://github.com/junegunn/fzf)
  - [zoxide](https://github.com/ajeetdsouza/zoxide)
  - [eza](https://github.com/eza-community/eza)

  Depends-on:
  - `ohmyposh`
  - `yazi`
- `bash`: [GNU Bash](https://www.gnu.org/software/bash/) configuration
- `alias`: Extra shell aliases (valid for Bash and ZSH)  
  Requires:
  - `awk`

  Requires (coreutils replacements):
  - [batcat](https://github.com/sharkdp/bat)
  - [eza](https://github.com/eza-community/eza)
  - [advcpmv](https://github.com/jarun/advcpmv)
  - [dust](https://github.com/bootandy/dust)
  - [dysk](https://github.com/Canop/dysk)

  Optional:
  - [Fastfetch](https://github.com/fastfetch-cli/fastfetch)
  - [Onefetch](https://github.com/o2sh/onefetch)
  - [trash-cli](https://github.com/andreafrancia/trash-cli)
  - [yay](https://github.com/Jguer/yay)
  - [circumflex](https://github.com/bensadeh/circumflex)
  - [GNU GRUB](https://www.gnu.org/software/grub/)
  - [Git](https://git-scm.com/)

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
    - [batcat](https://github.com/sharkdp/bat)
    - [dust](https://github.com/bootandy/dust)
    - [Python 3](https://www.python.org/)

  Depends-on:
    - `lazygit`
    - `nvim`
    - `ohmyposh`
- `code`: [VS Code](https://code.visualstudio.com/) configuration  
  Depends-on:
    - `vim`
- `gnome`: [GNOME WM](https://www.gnome.org/) configuration
- `btop`: [BTOP++](https://github.com/aristocratos/btop) configuration

> [!TIP]
> To enable GPU monitoring w/out needing to run as `root`, add the required permisions (in Unix systems) with:
> ```bash
> sudo setcap cap_perfmon=+ep $(which btop)
> ```

- `windowsterminal`*: [WindowsTerminal](https://github.com/microsoft/terminal) configuration
- `solaar`: [Solaar](https://github.com/pwr-Solaar/Solaar) configuration
- `karabiner`*: [Karabiner-Elements](https://karabiner-elements.pqrs.org/) configuration (MacOS)
- `rectangle`*: [Rectangle](https://rectangleapp.com/) configuration (MacOS)
- `alt-tab`*: [AltTab](https://alt-tab-macos.netlify.app/) configuration (MacOS)
- `dual-function-keys`*: [Dual Function Keys](https://gitlab.com/interception/linux/plugins/dual-function-keys) configuration


### Minimal install (SSH servers)
This includes the `bash` and `vim` configs.
```bash
git clone https://github.com/rajayonin/dotfiles
cd dotfiles
bash min.sh
```


### Windows install (Powershell)
Installs Windows setup: `windowsterminal`, `vim`, `neovim`, `lazygit`, `ohmyposh`, and `pwsh`, including dependencies.

> [!IMPORTANT]
> Execute as administrator, in Powershell.

```powershell
git clone https://github.com/rajayonin/dotfiles
cd dotfiles
.\win.ps1
```

To update config files w/out installing dependencies:
```powershell
.\win.ps1 update
```

> [!NOTE]
> This script creates symbolic links, so it should only be run again on a
> machine if a new application is added.


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

