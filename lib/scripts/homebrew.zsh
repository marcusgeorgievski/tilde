#!/usr/bin/env zsh

# Simple Homebrew installer

# Install Homebrew if not present
if ! command -v brew &> /dev/null; then
    echo "🍺 Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

echo "🔄 Updating Homebrew..."
brew update

echo "⬆️ Upgrading Homebrew..."
brew upgrade

# Install formulae
echo "📦 Installing formulae, casks, and apps..."
# brew bundle install


echo "✅ Installation finished!"
echo "\n"
echo "Other applications to install:"
echo "- Docker"