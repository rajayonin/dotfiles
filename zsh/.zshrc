# rajayonin's zsh config file


# #######
# PLUGINS
# #######

# zinit (plugin manager)
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

if [ ! -d "$ZINIT_HOME" ]; then
   mkdir -p "$(dirname $ZINIT_HOME)"
   git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

source "${ZINIT_HOME}/zinit.zsh"


# zsh plugins
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions

# snippets
zinit snippet OMZL::git.zsh
zinit snippet OMZP::git
zinit snippet OMZP::command-not-found


# ######
# PROMPT
# ######


# powerlevel10k
# zinit ice depth=1; zinit light romkatv/powerlevel10k
# [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# oh-my-posh
eval "$(oh-my-posh init zsh --config $HOME/.config/ohmyposh/config.toml)"



# ####
# PATH
# ####
#
export PATH="$HOME/.local/bin:$PATH"

# bun
if [ -d "$HOME/.bun" ]; then
  export BUN_INSTALL="$HOME/.bun"
  export PATH="$BUN_INSTALL/bin:$PATH"
fi

# ruby
if [ -x "$(command -v gem)" ]; then
	export GEM_HOME="$(gem env user_gemhome)"
	export PATH="$PATH:$GEM_HOME/bin"
fi



# ###########
# COMPLETIONS
# ###########

# docker
if [ -x "$(command -v docker)" ]; then
  if [ ! -f "$HOME/.docker/completions" ]; then
    # generate completions
    mkdir -p ~/.docker/completions && docker completion zsh > ~/.docker/completions/_docker
  fi

  FPATH="$HOME/.docker/completions:$FPATH"
fi

# github cli
if [ -x "$(command -v gh)" ]; then
  if [ ! -f "$HOME/.github-cli/completions" ]; then
    # generate completions
    mkdir -p ~/.github-cli/completions && gh completion -s zsh > ~/.github-cli/completions/_gh
  fi

  FPATH="$HOME/.github-cli/completions:$FPATH"
fi

# bun
if [ -x "$(command -v bun)" ]; then
  [ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"
fi


# load completions on startup
autoload -Uz compinit && compinit
zinit cdreplay -q

# fzf completions, must be loaded after compinit
if [ -x "$(command -v fzf)" ]; then
	zinit light Aloxaf/fzf-tab
fi




# ######
# CONFIG
# ######


# keybindings (more info in https://zsh.sourceforge.io/Doc/Release/Zsh-Line-Editor.html#Standard-Widgets)
bindkey '^f' autosuggest-accept
bindkey '^f' accept-search
bindkey '^M' accept-line  # enter
bindkey '^f' forward-char
bindkey '^[[H' beginning-of-line  # fix Home key
bindkey '^[[F' end-of-line  # fix End key
bindkey '^[[3~' delete-char  # fix Del key
bindkey '^H' backward-kill-word  # fix Ctrl+Backspace
bindkey '^[[3;5~' kill-word  # fix Ctrl+Del
bindkey '^[[1;5C' forward-word # fix Ctrl+Right
bindkey '^[[1;5D' backward-word # fix Ctrl+Left

# autocompletion setup
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'  # smartcase
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"  # colors on file completion
zstyle ':completion:*' menu no  # no default menu (we'll use fzf)
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'eza -1 --icons=auto --color=always $realpath'  # fzf for cd w/ eza
# zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'  # fzf for cd
zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'eza -1 --icons=auto -color $realpath'  # fzf for zoxide
zstyle ':fzf-tab:*' fzf-bindings 'ctrl-f:accept'
zstyle ':fzf-tab:*' accept-line enter

# history
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# editor
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# language environment
export LANG=en_US.UTF-8



# ######
# ALIASES
# ######

# basic
alias ls="ls --color"
alias ll="ls -alFh"
alias la="ls -A"
alias :q="exit"
alias :Q="exit"
alias :x="exit"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# extra
if [ -f ~/.sh_aliases ]; then
    . ~/.sh_aliases
fi



# ##################
# SHELL INTEGRATIONS
# ##################

# fzf
if [ -x "$(command -v fzf)" ]; then
	eval "$(fzf --zsh)"
fi

# zoxide
if [ -x "$(command -v zoxide)" ]; then
	eval "$(zoxide init --cmd cd zsh)"
fi

# thefuck
if [ -x "$(command -v thefuck)" ]; then
	eval "$(thefuck --alias)" && export THEFUCK_EXCLUDE_RULES='fix_file'
fi

# nvm
if [ -f /usr/share/nvm/init-nvm.sh ]; then
  source /usr/share/nvm/init-nvm.sh
fi

# yazi
if [ -x "$(command -v yazi)" ]; then
	function y() {  # when exiting yazi, leave at the current directory
		local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
		yazi "$@" --cwd-file="$tmp"
		if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
			builtin cd -- "$cwd"
		fi
		rm -f -- "$tmp"
	}
fi

