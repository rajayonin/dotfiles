# config
$ENV:EDITOR = "nvim"
$ENV:VISUAL = "code"


# keybindings
Set-PSReadlineOption -EditMode Emacs

# modules
# Install-Module git-aliases -Scope CurrentUser -AllowClobber
Import-Module git-aliases -DisableNameChecking


# aliases
Set-Alias -Name lg -Value lazygit -Option AllScope
Set-Alias -Name cat -Value bat -Option AllScope

# if we want to use parameters in aliases, we have to use a function
function _du { dust -r }
Set-Alias -Name du -Value _du -Option AllScope

function _ls { eza --group-directories-first --icons=auto }
Set-Alias -Name ls -Value _ls -Option AllScope

function _ll { eza -lahHg --git --group-directories-first --icons=auto }
Set-Alias -Name ll -Value _ll -Option AllScope

function _la { eza --group-directories-first --icons=auto -a }
Set-Alias -Name la -Value _la -Option AllScope

function _tree { eza -T -L 4 }
Set-Alias -Name tree -Value _tree -Option AllScope

function _gcl { git clone $args && cd (python -c "print('$args'.removesuffix('.git').split('/')[-1])") }
Set-Alias -Name gcl -Value _gcl -Option AllScope

function _up1 { cd .. }
Set-Alias -Name .. -Value _up1 -Option AllScope

function _up2 { cd ..\.. }
Set-Alias -Name ... -Value _up2 -Option AllScope

function _up3 { cd ..\..\.. }
Set-Alias -Name .... -Value _up3 -Option AllScope


# integrations
Invoke-Expression (& { (zoxide init --cmd cd powershell | Out-String) })  # zoxide

# prompt
oh-my-posh init pwsh --config "$HOME/.omp.toml" | Invoke-Expression

