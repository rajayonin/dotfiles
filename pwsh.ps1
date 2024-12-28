# please execute as admin

winget install JanDeDobbeleer.OhMyPosh -s winget
winget install Neovim.Neovim
winget install junegunn.fzf ajeetdsouza.zoxide
winget install eza-community.eza

Install-Module git-aliases -Scope CurrentUser -AllowClobber

Copy-Item ".\nvim\.config\nvim\*" -Destination $env:LOCALAPPDATA -Recurse -Force

Copy-Item ".\pwsh\Microsoft.PowerShell_profile.ps1" -Destination $PROFILE -Force

.$PROFILE
