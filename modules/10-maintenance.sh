#!/usr/bin/env bash

set -e

echo "================================"
echo " Maintenance Setup"
echo "================================"

# Enable automatic security updates
sudo dnf install -y dnf-automatic
sudo sed -i 's/^apply_updates = .*/apply_updates = yes/' /etc/dnf/automatic.conf
sudo systemctl enable --now dnf-automatic.timer

# Enable fstrim (SSD health)
sudo systemctl enable --now fstrim.timer

# Clean up package cache
sudo dnf autoremove -y
sudo dnf clean all

# Enable firewalld
sudo systemctl enable --now firewalld

echo "Maintenance module complete."
