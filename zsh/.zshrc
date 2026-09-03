# rajayonin's zsh config file

# time function for debugging
delta() {
    local now diff
    now=$(date +%s%N)

    if [[ -n ${_delta_last:-} ]]; then
        diff=$((now - _delta_last))
        printf '%d.%03d ms\n' $((diff / 1000000)) $((diff % 1000000 / 1000))
    fi

    _delta_last=$now
}

delta



# ######
# PROMPT
# ######

# echo "Prompt"

# powerlevel10k
# zinit ice depth=1; zinit light romkatv/powerlevel10k
# [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# oh-my-posh
eval "$(oh-my-posh init zsh --config $HOME/.config/ohmyposh/config.toml)"



# ####
# PATH
# ####

# delta
# echo "Path"

export PATH="$HOME/.local/bin:$PATH"

# bun
if [ -d "$HOME/.bun" ]; then
  export BUN_INSTALL="$HOME/.bun"
  export PATH="$BUN_INSTALL/bin:$PATH"
fi

# # ruby
# # too expensive (~100ms)!
# if [ -x "$(command -v gem)" ]; then
# 	export GEM_HOME="$(gem env gempath)"
# 	export PATH="$PATH:$GEM_HOME/bin"
# fi

# deno
if [ -x "$HOME/.deno" ]; then
  . "$HOME/.deno/env"
fi


# opencode
if [ -x "$HOME/.opencode/bin" ]; then
  export PATH="$HOME/.opencode/bin":$PATH
fi


# ###########
# COMPLETIONS
# ###########

# delta
# echo "Completions"

# generate completions

# docker
if (( $+commands[docker] )); then
  if [[ ! -f "$HOME/.docker/completions/_docker" ]]; then
    mkdir -p "$HOME/.docker/completions"
    docker completion zsh > "$HOME/.docker/completions/_docker"
  fi
  FPATH="$HOME/.docker/completions:$FPATH"
fi

# github cli
if (( $+commands[gh] )); then
  if [[ ! -f "$HOME/.github-cli/completions/_gh" ]]; then
    mkdir -p "$HOME/.github-cli/completions"
    gh completion -s zsh > "$HOME/.github-cli/completions/_gh"
  fi
  FPATH="$HOME/.github-cli/completions:$FPATH"
fi

# bun
if (( $+commands[bun] )); then
    if [[ ! -s "$HOME/.bun/_bun" ]]; then
        mkdir -p "$HOME/.bun"
        bun completions > "$HOME/.bun/_bun"
    fi

    FPATH="$HOME/.bun:$FPATH"
fi


# autocompletion setup
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'  # smartcase
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"  # colors on file completion
zstyle ':completion:*' menu no  # no default menu (we'll use fzf)
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'eza -1 --icons=auto --color=always $realpath'  # fzf for cd w/ eza
# zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'  # fzf for cd
zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'eza -1 --icons=auto -color $realpath'  # fzf for zoxide
zstyle ':fzf-tab:*' fzf-bindings 'ctrl-f:accept'
zstyle ':fzf-tab:*' accept-line enter


# plugins handle compinit


# #######
# PLUGINS
# #######

# delta
# echo "Plugins"

# antidote (plugin manager)
ANTIDOTE_HOME="${ZDOTDIR:-$HOME}/.antidote"

if [ ! -d "$ANTIDOTE_HOME" ]; then
   mkdir -p "$(dirname $ANTIDOTE_HOME)"
   git clone --depth=1 https://github.com/mattmc3/antidote.git "$ANTIDOTE_HOME"
fi

source "${ANTIDOTE_HOME}/antidote.zsh"

antidote load



# ######
# CONFIG
# ######

# delta
# echo "Config"

# generic
setopt auto_param_slash  # when a dir is completed, add a / instead of a trailing space
setopt interactive_comments # allow comments in shell


# keybindings (more info in https://zsh.sourceforge.io/Doc/Release/Zsh-Line-Editor.html#Standard-Widgets)
# you can also run `bindkey`

# cannot bind to multiple widgets
# bindkey '^f' autosuggest-accept
# bindkey '^f' accept-search

bindkey '^M' accept-line  # enter
bindkey '^f' forward-char
bindkey '^[[H' beginning-of-line  # fix Home key
bindkey '^[[F' end-of-line  # fix End key
bindkey '^[[3~' delete-char  # fix Del key
bindkey '^H' backward-kill-word  # fix Ctrl+Backspace
bindkey '^[[3;5~' kill-word  # fix Ctrl+Del
bindkey '^[[1;5C' forward-word # fix Ctrl+Right
bindkey '^[[1;5D' backward-word # fix Ctrl+Left

# prevent forward-char from accepting suggestion
# ZSH_AUTOSUGGEST_ACCEPT_WIDGETS=("${(@)ZSH_AUTOSUGGEST_ACCEPT_WIDGETS:#forward-char}")

# remove bug with autosuggestions when pasting stuff
ZSH_AUTOSUGGEST_CLEAR_WIDGETS+=('bracketed-paste')


# history
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt inc_append_history
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

# delta
# echo "Aliases"

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

# delta
# echo "Integrations"

# fzf
if (( $+commands[fzf] )); then
	eval "$(fzf --zsh)"
fi

# zoxide
if (( $+commands[zoxide] )); then
	eval "$(zoxide init --cmd cd zsh)"
fi

# # thefuck
# # too expensive
# if (( $+commands[thefuck] )); then
# 	eval "$(thefuck --alias)" && export THEFUCK_EXCLUDE_RULES='fix_file'
# fi


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

# delta

# remove debugging function
unset -f delta
unset _delta_last
