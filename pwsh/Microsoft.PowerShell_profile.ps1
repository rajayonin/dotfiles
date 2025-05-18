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

# if we want to use parameters in aliases, we have to use a function
function _du {dust -r}
Set-Alias du _du

function _ls {eza --group-directories-first --icons=auto}
Set-Alias ls _ls

function _ll {eza -lahHg --git --group-directories-first --icons=auto}
Set-Alias ll _ll

function _la {eza --group-directories-first --icons=auto -a}
Set-Alias la _la

function _tree {eza -T -L 4}
Set-Alias tree _tree


# integrations
Invoke-Expression (& { (zoxide init --cmd cd powershell | Out-String) })  # zoxide

