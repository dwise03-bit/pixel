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
tmux

echo "Terminal module complete."
