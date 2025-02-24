export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="sabda"
ZSH_CUSTOM="$HOME/.config/oh-my-zsh"
plugins=(git zsh-syntax-highlighting)
source $HOME/.profile
source $ZSH/oh-my-zsh.sh
export VITASDK=$HOME/.local/share/vitasdk
export PATH=$VITASDK/bin:$PATH

# pnpm
export PNPM_HOME="/home/chekoy/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PSPDEV=/usr/local/pspdev
export PATH=$PATH:$PSPDEV/bin
