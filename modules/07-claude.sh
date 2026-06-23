#!/usr/bin/env bash

set -e

echo "================================"
echo " Claude Code Setup"
echo "================================"

if command -v claude >/dev/null 2>&1; then
    echo "Claude Code already installed."
else
    sudo npm install -g @anthropic-ai/claude-code
fi

echo "Claude module complete."
