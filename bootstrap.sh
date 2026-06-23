#!/usr/bin/env bash

set -e

echo "======================================"
echo " Pixel Bootstrap Installer"
echo "======================================"

for script in modules/*.sh; do
    echo
    echo "Running $script..."
    bash "$script"
done

echo
echo "======================================"
echo "Bootstrap Complete!"
echo "Please reboot."
echo "======================================"
