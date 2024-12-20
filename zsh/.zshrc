# rajayonin's zsh config file


# #######
# PLUGINS
# #######

ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

# download Zinit, if it's not there yet
if [ ! -d "$ZINIT_HOME" ]; then
   mkdir -p "$(dirname $ZINIT_HOME)"
   git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

# load zinit
source "${ZINIT_HOME}/zinit.zsh"

# powerlevel10k
# zinit ice depth=1; zinit light romkatv/powerlevel10k
# [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# zsh plugins
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light Aloxaf/fzf-tab

# snippets
zinit snippet OMZL::git.zsh
zinit snippet OMZP::git
zinit snippet OMZP::command-not-found

# docker completions
if [ -x "$(command -v docker)" ]; then
  if [ ! -f "$HOME/.docker/completions" ]; then
    # generate completions
    mkdir -p ~/.docker/completions && docker completion zsh > ~/.docker/completions/_docker
  fi

  FPATH="$HOME/.docker/completions:$FPATH"
fi

# load completions on startup
autoload -Uz compinit && compinit
zinit cdreplay -q

# yazi
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}


# ######
# CONFIG
# ######

# PATH
export PATH="$HOME/.local/bin:$PATH"

# keybindings (more info in https://zsh.sourceforge.io/Doc/Release/Zsh-Line-Editor.html#Zle-Widgets)
bindkey '^f' autosuggest-accept
bindkey '^f' forward-char
bindkey '^[[H' beginning-of-line  # fix Home key
bindkey '^[[F' end-of-line  # fix End key
bindkey '^[[3~' delete-char  # fix Del key

# autocompletion setup
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'  # smartcase
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"  # colors on file completion
zstyle ':completion:*' menu no  # no default menu (we'll use fzf)
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'eza -1 --icons=auto --color=always $realpath'  # fzf for cd w/ eza
# zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'  # fzf for cd
zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'eza -1 --icons=auto -color $realpath'  # fzf for zoxide
zstyle ':fzf-tab:*' fzf-bindings 'ctrl-f:accept'
zstyle ':fzf-tab:*' accept-line enter
# zstyle ':fzf-tab:*' accept-line ctrl-j

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

# aliases
alias ls="ls --color"
alias ll="ls -alFh"
alias la="ls -A"
if [ -f ~/.sh_aliases ]; then
    . ~/.sh_aliases
fi
alias :q="exit"
alias :Q="exit"
alias :x="exit"


# ######
# PROMPT
# ######

# PROMPT='%B%F{cyan}%n%f%F{red}@%f%F{green}%m%f:%F{blue}%~%f%F{red}$%f%b '

eval "$(oh-my-posh init zsh --config $HOME/.config/ohmyposh/config.toml)"



# ##################
# SHELL INTEGRATIONS
# ##################

eval "$(fzf --zsh)"
eval "$(zoxide init --cmd cd zsh)"
eval "$(thefuck --alias)" && export THEFUCK_EXCLUDE_RULES='fix_file'
