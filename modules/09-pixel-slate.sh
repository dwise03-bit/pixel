#!/usr/bin/env bash

set -e

echo "================================"
echo " Pixel Slate Configuration"
echo "================================"

# HiDPI scaling for Pixel Slate display (2400x1600 @ ~293 PPI)
gsettings set org.gnome.desktop.interface text-scaling-factor 1.25 || true
gsettings set org.gnome.mutter experimental-features "['scale-monitor-framebuffer']" || true

# Screen rotation lock (slate used in tablet + laptop modes)
gsettings set org.gnome.settings-daemon.peripherals.touchscreen orientation-lock false || true

# Power: shorter screen timeout on battery
gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-battery-timeout 300 || true
gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-ac-timeout 900 || true

# On-screen keyboard for tablet mode
gsettings set org.gnome.desktop.a11y.applications screen-keyboard-enabled false || true

# Firmware updates via fwupd
sudo dnf install -y fwupd
sudo fwupdmgr refresh --force || true

echo "Pixel Slate module complete."
