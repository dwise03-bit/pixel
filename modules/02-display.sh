#!/usr/bin/env bash

set -e

echo "================================"
echo " Display Configuration"
echo "================================"

gsettings set org.gnome.desktop.interface color-scheme prefer-dark || true

gsettings set org.gnome.mutter experimental-features "['scale-monitor-framebuffer']" || true

gsettings set org.gnome.desktop.interface enable-animations false || true

echo "Display module complete."
