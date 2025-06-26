#!/usr/bin/env zsh

# Simple stow script for dotfiles

# Get the absolute path to the repo root (script is in lib/scripts/)
REPO_ROOT="$(cd "$(dirname "$0")/../.." && pwd)"

# Check if stow is installed
if ! command -v stow &> /dev/null; then
    echo "❌ stow not found. Install with: brew install stow"
    exit 1
fi

# Check if dotfiles directory exists
if [[ ! -d "$REPO_ROOT/dotfiles" ]]; then
    echo "❌ dotfiles directory not found at $REPO_ROOT/dotfiles"
    exit 1
fi

echo "🔗 Stowing all files in dotfiles/ to home directory..."

cd "$REPO_ROOT" || exit 1
stow -n -v -t ~ dotfiles

echo "✅ Stowing finished!"
