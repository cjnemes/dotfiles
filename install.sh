#!/bin/bash

# Dotfiles Installation Script
# Run this on a fresh Mac to set up your complete tmux environment

set -e

DOTFILES_REPO="https://github.com/cjnemes/dotfiles.git"
DOTFILES_DIR="$HOME/dotfiles"

echo "🚀 Installing dotfiles and dependencies..."
echo ""

# Check if running on macOS
if [[ "$OSTYPE" != "darwin"* ]]; then
    echo "❌ This script is designed for macOS"
    exit 1
fi

# Install Homebrew if not installed
if ! command -v brew &> /dev/null; then
    echo "📦 Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

    # Add Homebrew to PATH for Apple Silicon Macs
    if [[ $(uname -m) == 'arm64' ]]; then
        echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
        eval "$(/opt/homebrew/bin/brew shellenv)"
    fi
else
    echo "✅ Homebrew already installed"
fi

echo ""
echo "📦 Installing required tools..."

# Install tools
brew install tmux bash fzf zoxide git

echo ""
echo "✅ Tools installed:"
echo "  - tmux $(tmux -V)"
echo "  - bash $(bash --version | head -n1)"
echo "  - fzf $(fzf --version)"
echo "  - zoxide $(zoxide --version)"

# Clone or update dotfiles
if [ -d "$DOTFILES_DIR" ]; then
    echo ""
    echo "📥 Updating existing dotfiles..."
    cd "$DOTFILES_DIR"
    git pull
else
    echo ""
    echo "📥 Cloning dotfiles repository..."
    git clone "$DOTFILES_REPO" "$DOTFILES_DIR"
    cd "$DOTFILES_DIR"
fi

# Run bootstrap script
echo ""
echo "🔗 Creating symlinks..."
./scripts/bootstrap.sh

# Install TPM (Tmux Plugin Manager)
echo ""
echo "📦 Installing TPM (Tmux Plugin Manager)..."

if [ ! -d ~/.config/tmux/plugins/tpm ]; then
    git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm
    echo "✅ TPM installed"
else
    echo "✅ TPM already installed"
fi

# Source zsh config
if [ -n "$ZSH_VERSION" ]; then
    source ~/.zshrc
fi

echo ""
echo "🎉 Installation complete!"
echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "Next steps:"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "1. Restart your terminal (to load fzf and zoxide)"
echo ""
echo "2. Start tmux:"
echo "   $ tmux"
echo ""
echo "3. Install tmux plugins:"
echo "   Press: Ctrl+A then I (capital i)"
echo "   Wait for plugins to install (~30 seconds)"
echo ""
echo "4. Reload tmux config:"
echo "   Press: Ctrl+A then R"
echo ""
echo "5. Test sessionx:"
echo "   Press: Ctrl+A then o"
echo "   You should see the session manager!"
echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "📚 Documentation:"
echo "  - ~/.config/tmux/keyboard-shortcuts.md"
echo "  - ~/.config/tmux/sessionx-guide.md"
echo ""
