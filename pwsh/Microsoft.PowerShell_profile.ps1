# prompt
oh-my-posh init pwsh --config "$HOME/.omp.toml" | Invoke-Expression


# config
$ENV:EDITOR = "nvim"
$ENV:VISUAL = "code"


# keybindings
Set-PSReadlineOption -EditMode Emacs

# modules
# Install-Module git-aliases -Scope CurrentUser -AllowClobber
Import-Module git-aliases -DisableNameChecking


# aliases
Set-Alias lg lazygit
Set-Alias cat bat

function myLs {eza --group-directories-first --icons=auto}
Set-Alias ls myLs

function myLl {eza -lahHg --git --group-directories-first --icons=auto}
New-Alias ll myLl

function myLa {eza --group-directories-first --icons=auto -a}
New-Alias la myLa

function myTree {eza -T -L 4}
New-Alias tree myTree


# integrations
Invoke-Expression (& { (zoxide init --cmd cd powershell | Out-String) })  # zoxide

