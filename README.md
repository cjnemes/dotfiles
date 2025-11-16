# My Dotfiles 🚀

Personal dotfiles for macOS with a focus on tmux, zsh, and terminal productivity.

## ✨ Features

- **Tmux Setup**
  - Catppuccin Mocha theme 🎨
  - 12 powerful plugins (sessionx, floax, yank, resurrect, continuum, etc.)
  - Mouse support enabled
  - Smart session management with zoxide integration
  - Battery, date/time in status bar
  - Vi-style copy mode with clipboard integration

- **Shell Configuration**
  - Zoxide for smart directory navigation
  - fzf for fuzzy finding
  - Optimized for zsh

## 📦 What's Included

```
dotfiles/
├── tmux/
│   ├── tmux.conf           # Main tmux configuration
│   └── tmux.reset.conf     # Keybindings
├── shell/
│   └── zshrc               # Shell configuration
├── docs/
│   ├── keyboard-shortcuts.md  # Tmux shortcuts reference
│   └── sessionx-guide.md      # SessionX usage guide
├── scripts/
│   └── bootstrap.sh        # Symlink creation script
├── install.sh              # Full installation script
└── README.md               # This file
```

## 🚀 Installation

### On a New Mac

1. **Clone this repository:**
   ```bash
   git clone https://github.com/YOUR_USERNAME/dotfiles.git ~/dotfiles
   cd ~/dotfiles
   ```

2. **Run the install script:**
   ```bash
   ./install.sh
   ```

3. **Follow the prompts**
   - Script installs: Homebrew, tmux, bash 5, fzf, zoxide
   - Creates symlinks to your home directory
   - Installs TPM (Tmux Plugin Manager)

4. **Start tmux and install plugins:**
   ```bash
   tmux
   # Press: Ctrl+A then I (to install plugins)
   # Wait ~30 seconds for installation
   # Press: Ctrl+A then R (to reload config)
   ```

### On This Mac (Already Set Up)

Just push your changes to GitHub to sync them to other machines:

```bash
cd ~/dotfiles
git add .
git commit -m "Update configs"
git push
```

## 🔄 Syncing Changes Between Macs

### Pushing Changes
```bash
cd ~/dotfiles
git add .
git commit -m "Describe your changes"
git push
```

### Pulling Changes on Another Mac
```bash
cd ~/dotfiles
git pull
# Tmux will automatically use the updated configs (they're symlinked!)
# Press Ctrl+A then R in tmux to reload
```

## ⌨️ Key Tmux Shortcuts

**Prefix:** `Ctrl+A`

### Essential
- `Ctrl+A` `o` - Open session manager (sessionx)
- `Ctrl+A` `1-9` - Switch to window 1-9
- `Ctrl+A` `p` - Open floating window
- `Ctrl+A` `R` - Reload tmux config

### Inside SessionX (`Ctrl+A` `o`)
- `Ctrl+Y` - Browse zoxide directories (your frequently used folders)
- `Ctrl+X` - Browse home directory
- `Ctrl+W` - Show all windows
- `Enter` - Create/switch to session
- `Esc` - Close

**See `docs/keyboard-shortcuts.md` for complete reference**

## 🛠️ Dependencies

All installed automatically by `install.sh`:

- [Homebrew](https://brew.sh/) - Package manager
- [tmux](https://github.com/tmux/tmux) - Terminal multiplexer
- [bash 5](https://www.gnu.org/software/bash/) - Required for sessionx plugin
- [fzf](https://github.com/junegunn/fzf) - Fuzzy finder
- [zoxide](https://github.com/ajeetdsouza/zoxide) - Smarter cd command
- [TPM](https://github.com/tmux-plugins/tpm) - Tmux plugin manager

## 🔧 Customization

### Adding New Configs

1. Add your config file to appropriate directory in `~/dotfiles/`
2. Update `scripts/bootstrap.sh` to create symlink
3. Commit and push changes

### Tmux Plugins

Edit `tmux/tmux.conf` and add:
```tmux
set -g @plugin 'author/plugin-name'
```

Then in tmux: `Ctrl+A` `I` to install

## 📚 Documentation

- **Keyboard Shortcuts:** `~/.config/tmux/keyboard-shortcuts.md`
- **SessionX Guide:** `~/.config/tmux/sessionx-guide.md`

## 🐛 Troubleshooting

### SessionX not working
- Ensure bash 5 is installed: `bash --version` (should be 5.x)
- Reinstall plugins: `Ctrl+A` `I` in tmux

### Zoxide not working
- Source shell config: `source ~/.zshrc`
- Restart terminal

### Symlinks broken
- Re-run bootstrap: `cd ~/dotfiles && ./scripts/bootstrap.sh`

## 📝 Notes

- Configs are symlinked, so changes in `~/dotfiles/` immediately affect your setup
- Always commit changes before trying them on another Mac
- The `install.sh` script is idempotent (safe to run multiple times)

## 🎯 TODO

- [ ] Add nvim configuration
- [ ] Add git configuration
- [ ] Add Ghostty terminal config
- [ ] Add custom scripts

---

*Generated on $(date +"%Y-%m-%d") | Managed with ❤️*
