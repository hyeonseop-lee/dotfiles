export LC_ALL=en_US.utf-8
export LANG=en_US.utf-8

LIME_SHOW_HOSTNAME=1
LIME_DIR_DISPLAY_COMPONENTS=3

source "${HOME}/.zgen/zgen.zsh"

if ! zgen saved; then
  zgen oh-my-zsh
  zgen load yous/lime
  zgen load zsh-users/zsh-syntax-highlighting
  if whence fzf >/dev/null; then
    zgen load junegunn/fzf shell/completion.zsh
    zgen load junegunn/fzf shell/key-bindings.zsh
  fi
  if whence pyenv >/dev/null; then
    zgen load davidparsson/zsh-pyenv-lazy
  fi
  if whence goenv >/dev/null; then
    zgen load kadaan/zsh-goenv-lazy
  fi
fi

if [[ -f "$HOME/.zshrc.local" ]]; then
  source $HOME/.zshrc.local
fi

if ! zgen saved; then
  zgen save
fi

