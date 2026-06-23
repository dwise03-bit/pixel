#!/usr/bin/env bash

set -e

echo "================================"
echo " Developer Tools"
echo "================================"

sudo dnf install -y \
git \
gh \
nodejs \
npm \
python3 \
python3-pip \
python3-pipx \
gcc \
gcc-c++ \
make \
cmake

# PM2 — process manager for Node agents (Hermes/dropshipping-factory)
if ! command -v pm2 >/dev/null 2>&1; then
    sudo npm install -g pm2
    pm2 startup systemd -u "$USER" --hp "$HOME" || true
    echo "PM2 installed."
fi

# pipx tools
pipx install httpie 2>/dev/null || true

echo "Developer module complete."
