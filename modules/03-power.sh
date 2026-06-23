#!/usr/bin/env bash

set -e

echo "================================"
echo " Power Configuration"
echo "================================"

sudo dnf install -y power-profiles-daemon powertop

sudo systemctl enable power-profiles-daemon

powerprofilesctl set balanced || true

echo "Power module complete."
