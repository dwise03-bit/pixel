#!/usr/bin/env bash

set -e

echo "================================"
echo " Clone Projects"
echo "================================"

mkdir -p "$HOME/projects"

# wise-defense-saas
if [ ! -d "$HOME/projects/wise-defense-saas" ]; then
    git clone https://github.com/dwise03-bit/wise-defense-saas.git "$HOME/projects/wise-defense-saas"
    echo "Cloned wise-defense-saas."
else
    echo "wise-defense-saas already cloned."
fi

# dropshipping-factory
if [ ! -d "$HOME/projects/dropshipping-factory" ]; then
    git clone https://github.com/dwise03-bit/dropshipping-factory.git "$HOME/projects/dropshipping-factory"
    echo "Cloned dropshipping-factory."
else
    echo "dropshipping-factory already cloned."
fi

# claude-config
if [ ! -d "$HOME/projects/claude-config" ]; then
    git clone https://github.com/dwise03-bit/claude-config.git "$HOME/projects/claude-config"
    echo "Cloned claude-config."
else
    echo "claude-config already cloned."
fi

echo ""
echo "Projects are in ~/projects/"
echo "Note: The VPS is the source of truth for wise-defense-saas. Pull before editing."

echo "Projects module complete."
