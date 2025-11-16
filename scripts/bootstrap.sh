#!/bin/bash

# Dotfiles Bootstrap Script
# This script sets up symlinks from your home directory to your dotfiles repo

set -e

DOTFILES_DIR="$HOME/dotfiles"
BACKUP_DIR="$HOME/dotfiles_backup_$(date +%Y%m%d_%H%M%S)"

echo "🚀 Bootstrapping dotfiles..."
echo "Dotfiles directory: $DOTFILES_DIR"

# Function to create symlink with backup
create_symlink() {
    local source="$1"
    local target="$2"

    # Create target directory if it doesn't exist
    mkdir -p "$(dirname "$target")"

    # Backup existing file/link if it exists
    if [ -e "$target" ] || [ -L "$target" ]; then
        echo "  📦 Backing up existing $target"
        mkdir -p "$BACKUP_DIR"
        mv "$target" "$BACKUP_DIR/"
    fi

    # Create symlink
    echo "  🔗 Linking $target → $source"
    ln -s "$source" "$target"
}

echo ""
echo "Creating symlinks..."

# Tmux configs
create_symlink "$DOTFILES_DIR/tmux/tmux.conf" "$HOME/.config/tmux/tmux.conf"
create_symlink "$DOTFILES_DIR/tmux/tmux.reset.conf" "$HOME/.config/tmux/tmux.reset.conf"
create_symlink "$DOTFILES_DIR/docs/keyboard-shortcuts.md" "$HOME/.config/tmux/keyboard-shortcuts.md"
create_symlink "$DOTFILES_DIR/docs/sessionx-guide.md" "$HOME/.config/tmux/sessionx-guide.md"

# Shell configs
create_symlink "$DOTFILES_DIR/shell/zshrc" "$HOME/.zshrc"

echo ""
echo "✅ Symlinks created!"

if [ -d "$BACKUP_DIR" ]; then
    echo "📦 Backups saved to: $BACKUP_DIR"
fi

echo ""
echo "Next steps:"
echo "1. Source your shell config: source ~/.zshrc"
echo "2. If in tmux, reload config: tmux source ~/.config/tmux/tmux.conf"
echo ""
