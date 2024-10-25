winget install JanDeDobbeleer.OhMyPosh -s winget
winget install Neovim.Neovim

Install-Module -Name PowerColorLS -Repository PSGallery
Install-Module -Name Terminal-Icons -Repository PSGallery
Install-Module git-aliases -Scope CurrentUser -AllowClobber

Copy-Item ".\nvim\.config\nvim\*" -Destination $env:LOCALAPPDATA -Recurse

Copy-Item ".\pwsh\AppData\Local\PowerShell\Microsoft.PowerShell_profile.ps1" -Destination $PROFILE

.$PROFILE
