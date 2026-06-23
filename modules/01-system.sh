#!/usr/bin/env bash

set -e

echo "================================"
echo " System Setup"
echo "================================"

sudo dnf upgrade --refresh -y

sudo dnf install -y \
git \
curl \
wget \
vim \
neovim \
tmux \
htop \
btop \
fastfetch \
eza \
bat \
ripgrep \
fd-find \
fzf \
gh

echo "System module complete."
