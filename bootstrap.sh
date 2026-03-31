#!/usr/bin/env bash
set -e

echo "🚀 Running bootstrap script..."

# Update package lists
sudo apt-get update || true

# Install common utilities
sudo apt-get install -y \
    git \
    curl \
    wget \
    jq \
    tree \
    htop

# Set Git defaults
git config --global pull.rebase false

# Example aliases
echo "alias ll='ls -alF'" >> ~/.bashrc
echo "alias gs='git status'" >> ~/.bashrc

echo "✅ Bootstrap completed"
