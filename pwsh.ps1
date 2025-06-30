#Requires -RunAsAdministrator


# TODO: use this to copy config w/out administrator privileges
function copy-config {
    param(
        [Parameter(Mandatory, HelpMessage="Target item to copy")]
        [string] $source,

        [Parameter(Mandatory, HelpMessage="Destination path")]
        [string] $destination,
    )

    Copy-Item $source $destination -Recurse -Force
    }
}


function make-link {
    param(
        [Parameter(Mandatory, HelpMessage="Source item to link to")]
        [string] $source,

        [Parameter(Mandatory, HelpMessage="Link item")]
        [string] $link,

        [Parameter(HelpMessage="Forces the creation of the symlink, even if the target exists")]
        [switch] $Force
    )

    if ( $Force ) {
        New-Item -Path $link -ItemType SymbolicLink -Value $source -Force | Out-Null
    }
    else {
        New-Item -Path $link -ItemType SymbolicLink -Value $source | Out-Null
    }
}


# install dependencies
if ( "update" -ne $args[0] ) {
    winget install -e --id Microsoft.WindowsTerminal
    winget install -e --id JanDeDobbeleer.OhMyPosh -s winget
    winget install -e --id junegunn.fzf ajeetdsouza.zoxide
    winget install -e --id eza-community.eza
    winget install -e --id Neovim.Neovim
    winget install -e --id Wilfred.difftastic
    winget install -e --id JesseDuffield.lazygit
    winget install -e --id sharkdp.bat
    winget install -e --id bootandy.dust
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh  # install Rust
    cargo install --locked tree-sitter-cli
    winget install -e --id OpenJS.NodeJS
    winget install -e --id DenoLand.Deno

    # install modules
    Install-Module git-aliases -Scope CurrentUser -AllowClobber
}


# copy config
make-link "$PWD\vim\.vimrc" "$HOME\.vimrc"
make-link "$PWD\nvim\.config\nvim\" "$env:LOCALAPPDATA\nvim\"
make-link "$PWD\lazygit\.config\lazygit\" "$env:LOCALAPPDATA\lazygit\"
make-link "$PWD\ohmyposh\.config\ohmyposh\config.toml" "$HOME\.omp.toml"
make-link "$PWD\windowsterminal\settings.json" "$env:LOCALAPPDATA\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json" -Force
make-link "$PWD\pwsh\Microsoft.PowerShell_profile.ps1" $PROFILE


# reset
. $PROFILE
