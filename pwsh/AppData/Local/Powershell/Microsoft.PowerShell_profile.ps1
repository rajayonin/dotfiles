# prompt
oh-my-posh init pwsh --config "$HOME/.omp.toml" | Invoke-Expression


# config
$ENV:EDITOR = "nvim"
$ENV:VISUAL = "code"


# keybindings
Set-PSReadlineOption -EditMode Emacs

# modules
#f45873b3-b655-43a6-b217-97c00aa0db58 PowerToys CommandNotFound module
# Import-Module -Name Microsoft.WinGet.CommandNotFound
Import-Module 'gsudoModule'
# Install-Module -Name PowerColorLS -Repository PSGallery
# Install-Module -Name Terminal-Icons -Repository PSGallery
Import-Module PowerColorLS
# Install-Module git-aliases -Scope CurrentUser -AllowClobber
Import-Module git-aliases -DisableNameChecking


# aliases
function myLs {PowerColorLS}
Set-Alias ls myLs

function myLl {PowerColorLS -a -l}
New-Alias ll myLl

function myLa {PowerColorLS -a}
New-Alias la myLa

