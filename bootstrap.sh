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
    htop \
    vim

# Install Oh My Zsh (optional)
if [ ! -d "$HOME/.oh-my-zsh" ]; then
  echo "⚡ Installing Oh My Zsh..."
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
fi

# Set Git defaults
git config --global pull.rebase false
git config --global init.defaultBranch main

# Example aliases
echo "alias ll='ls -alF'" >> ~/.bashrc
echo "alias gs='git status'" >> ~/.bashrc

# Install Python tools (optional)
# curl -LsSf https://astral.sh/uv/install.sh | sh
# echo 'eval "$(uv generate-shell-completion zsh)"' >> ~/.zshrc

echo "✅ Bootstrap completed"
