#!/usr/bin/env bash

set -e

echo "================================"
echo " SSH Configuration"
echo "================================"

mkdir -p "$HOME/.ssh"
chmod 700 "$HOME/.ssh"

# Generate ed25519 key if none exists
if [ ! -f "$HOME/.ssh/id_ed25519" ]; then
    ssh-keygen -t ed25519 -C "dwise03@gmail.com" -f "$HOME/.ssh/id_ed25519" -N ""
    echo "SSH key generated: $HOME/.ssh/id_ed25519"
fi

# Add VPS to known_hosts to avoid interactive prompt
VPS="51.81.80.252"
if ! ssh-keygen -F "$VPS" -f "$HOME/.ssh/known_hosts" >/dev/null 2>&1; then
    ssh-keyscan -H "$VPS" >> "$HOME/.ssh/known_hosts" 2>/dev/null || true
    echo "VPS $VPS added to known_hosts."
fi

echo ""
echo "=========================================="
echo " ACTION REQUIRED:"
echo " Copy your public key to the VPS:"
echo ""
echo "   ssh-copy-id ubuntu@$VPS"
echo ""
echo " Or paste this key into the VPS authorized_keys:"
cat "$HOME/.ssh/id_ed25519.pub"
echo "=========================================="

echo "SSH module complete."
