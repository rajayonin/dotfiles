# please execute as admin

if ( "update" -ne $args[0] ) {
    # install dependencies
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


# TODO: symlinks

# copy config
Copy-Item ".\vim\.vimrc" -Destination $HOME -Recurse -Force
Copy-Item ".\nvim\.config\nvim\" -Destination $env:LOCALAPPDATA -Recurse -Force
Copy-Item ".\lazygit\.config\lazygit\" -Destination $env:LOCALAPPDATA -Recurse -Force
Copy-Item ".\ohmyposh\.config\ohmyposh\config.toml" -Destination "$HOME\.omp.toml" -Force
Copy-Item ".\windowsterminal\settings.json" -Destination "$env:LOCALAPPDATA\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState" -Force

Copy-Item ".\pwsh\Microsoft.PowerShell_profile.ps1" -Destination $PROFILE -Force


# reset
.$PROFILE  # FIXME: this doesn't reset shit
