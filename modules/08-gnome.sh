#!/usr/bin/env bash

set -e

echo "================================"
echo " GNOME Configuration"
echo "================================"

# Dark mode
gsettings set org.gnome.desktop.interface color-scheme prefer-dark || true

# Disable animations (faster feel)
gsettings set org.gnome.desktop.interface enable-animations false || true

# Clock: show weekday and seconds
gsettings set org.gnome.desktop.interface clock-show-weekday true || true
gsettings set org.gnome.desktop.interface clock-show-seconds true || true

# Touchpad: natural scroll, tap-to-click
gsettings set org.gnome.desktop.peripherals.touchpad natural-scroll true || true
gsettings set org.gnome.desktop.peripherals.touchpad tap-to-click true || true

# Keyboard shortcuts: switch workspaces
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-left "['<Super>Left']" || true
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-right "['<Super>Right']" || true

# Install GNOME tweaks and extensions tool
sudo dnf install -y gnome-tweaks gnome-extensions-app || true

echo "GNOME module complete."
