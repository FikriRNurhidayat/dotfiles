ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
[ ! -d $ZINIT_HOME ] && mkdir -p "$(dirname $ZINIT_HOME)"
[ ! -d $ZINIT_HOME/.git ] && git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
source "${ZINIT_HOME}/zinit.zsh"

bindkey -e

autoload -Uz compinit && compinit

HISTSIZE=5000
HISTFILE=$HOME/.cache/zsh/history
SAVEHIST=$HISTSIZE
setopt appendhistory
setopt sharehistory
setopt hist_ignore_all_dups
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_save_no_dups

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

PROMPT='› '

alias ls="ls --color"
alias grep="grep --color=always"

zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-syntax-highlighting

if [ -f "$HOME/.nvm/nvm.sh" ]; then
    source "$HOME/.nvm/nvm.sh"
fi

if [ -d "$HOME/.config/environment.d" ]; then
  for file in $HOME/.config/environment.d/*.conf; do
      if [ -f "$file" ]; then
    set -a
    . "$file"
    set +a
      fi
  done
fi

if [ -f "$HOME/.config/sh/alias.sh" ]; then
  source "$HOME/.config/sh/alias.sh"
fi
