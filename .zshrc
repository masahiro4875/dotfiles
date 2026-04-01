# lsしたときの色設定
export LSCOLORS=gxfxcxdxbxegedabagacad

# alias
alias ll='ls -aGFl'
alias k='kubectl'
alias python='python3'
alias ls='ls -GF'
alias vim='nvim'

# プロンプト設定
#PROMPT='%F{magenta}%n@%~%f$ '

# bash 警告を非表示 (zsh でも効く)
export BASH_SILENCE_DEPRECATION_WARNING=1

# ロケール設定
export PATH_LOCALE="$HOME/.config/locale"

# Homebrew pyenv 設定
export PYENV_ROOT="$(brew --prefix pyenv)"
export PATH="$PYENV_ROOT/bin:$PATH"

# starship設定
eval "$(starship init zsh)"

# pyenv 初期化 (存在する場合のみ)
if command -v pyenv >/dev/null 2>&1; then
    eval "$(pyenv init --path)"
    eval "$(pyenv init -)"
fi
export PATH="$HOME/.local/bin:$PATH"
source ~/.config/op/plugins.sh
export PGHOST=localhost
