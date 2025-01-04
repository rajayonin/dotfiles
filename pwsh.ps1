# please execute as admin

# install dependencies
winget install JanDeDobbeleer.OhMyPosh -s winget
winget install Neovim.Neovim
winget install JesseDuffield.lazygit
winget install junegunn.fzf ajeetdsouza.zoxide
winget install eza-community.eza


# install modules
Install-Module git-aliases -Scope CurrentUser -AllowClobber


# copy config
Copy-Item ".\nvim\.config\nvim\" -Destination $env:LOCALAPPDATA -Recurse -Force

Copy-Item ".\pwsh\Microsoft.PowerShell_profile.ps1" -Destination $PROFILE -Force


# reset
.$PROFILE
