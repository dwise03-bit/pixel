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
gcc \
gcc-c++ \
make \
cmake

echo "Developer module complete."
