#!/usr/bin/env bash

set -e

echo "================================"
echo " Docker Setup"
echo "================================"

sudo dnf install -y docker docker-compose-plugin

sudo systemctl enable docker

sudo systemctl start docker

sudo usermod -aG docker $USER

echo "Docker module complete."
