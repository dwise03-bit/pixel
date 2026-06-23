#!/usr/bin/env bash

set -e

echo "================================"
echo " Terminal Configuration"
echo "================================"

sudo dnf install -y \
zsh \
eza \
bat \
btop \
fastfetch \
fzf \
fd-find \
ripgrep \
neovim \
tmux \
atuin

# Set zsh as default shell
if [ "$SHELL" != "$(which zsh)" ]; then
    chsh -s "$(which zsh)" "$USER"
    echo "Default shell set to zsh."
fi

# Install oh-my-zsh if not present
if [ ! -d "$HOME/.oh-my-zsh" ]; then
    RUNZSH=no CHSH=no sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    echo "oh-my-zsh installed."
fi

# Install zsh-autosuggestions plugin
ZSH_CUSTOM="${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}"
if [ ! -d "$ZSH_CUSTOM/plugins/zsh-autosuggestions" ]; then
    git clone https://github.com/zsh-users/zsh-autosuggestions "$ZSH_CUSTOM/plugins/zsh-autosuggestions"
fi

# Install zsh-syntax-highlighting plugin
if [ ! -d "$ZSH_CUSTOM/plugins/zsh-syntax-highlighting" ]; then
    git clone https://github.com/zsh-users/zsh-syntax-highlighting "$ZSH_CUSTOM/plugins/zsh-syntax-highlighting"
fi

# Write .zshrc
cat > "$HOME/.zshrc" << 'EOF'
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git zsh-autosuggestions zsh-syntax-highlighting fzf)
source $ZSH/oh-my-zsh.sh

# Aliases
alias ls='eza --icons'
alias ll='eza -la --icons'
alias lt='eza --tree --icons'
alias cat='bat'
alias grep='rg'
alias find='fd'
alias vim='nvim'
alias v='nvim'

# fzf
[ -f /usr/share/fzf/shell/key-bindings.zsh ] && source /usr/share/fzf/shell/key-bindings.zsh

# fastfetch on new terminal
fastfetch

# atuin (shell history)
eval "$(atuin init zsh)" 2>/dev/null || true
EOF

echo "Terminal module complete."
