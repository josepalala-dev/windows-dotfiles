# a minimalist zsh config

# --- History ---
HISTFILE="$HOME/.zsh_history"
HISTSIZE=50000
SAVEHIST=50000

setopt SHARE_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_REDUCE_BLANKS

# --- Completion ---
autoload -Uz compinit
compinit

zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# --- Shell behavior ---
setopt AUTO_CD
setopt INTERACTIVE_COMMENTS
setopt NO_BEEP

bindkey -e

# --- Prompt: Pure by Sindre Sorhus ---
fpath=("$HOME/.zsh/pure" $fpath)
autoload -Uz promptinit
promptinit
prompt pure

# --- Optional plugins ---
[[ -f "$HOME/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh" ]] &&
  source "$HOME/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh"

[[ -f "$HOME/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" ]] &&
  source "$HOME/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
