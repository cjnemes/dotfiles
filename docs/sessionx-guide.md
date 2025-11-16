# SessionX Quick Start Guide

## How to Use SessionX

### Step 1: Open SessionX
In tmux, press: `Ctrl+A` then `o`

This opens the sessionx fuzzy finder window.

### Step 2: Use Shortcuts INSIDE SessionX
Once the sessionx window is open, you can use these shortcuts (without Ctrl+A prefix):

## Most Useful Shortcuts

### `Ctrl+Y` - Your Zoxide Directories (⭐ RECOMMENDED)
Shows all your frequent directories from zoxide:
- Desktop
- Documents
- Downloads
- ~/dev projects (CryptoIncomeDash, BattleTech4x, etc.)
- Any directory you've visited

**Usage:**
1. Press `Ctrl+A` then `o` to open sessionx
2. Press `Ctrl+Y` (just hold Ctrl and press Y)
3. Type to filter: "crypto", "battle", "home", etc.
4. Press `Enter` to create/switch to that session

### `Ctrl+X` - Browse Home Directory
Shows all folders in your home directory

### `Ctrl+W` - All Windows
Shows windows from all your tmux sessions

### Other Useful Keys
- Type to search/filter
- `↑/↓` or `Ctrl+N/P` - Navigate
- `Enter` - Select
- `Esc` - Cancel
- `?` - Toggle preview

## Example Workflow

```
1. Press: Ctrl+A then o
   → SessionX opens

2. Press: Ctrl+Y
   → Loads zoxide directories

3. Type: "crypto"
   → Filters to CryptoIncomeDash

4. Press: Enter
   → Creates session "CryptoIncomeDash" (or switches if exists)
```

## Troubleshooting

**"Ctrl+Y doesn't work!"**
- Make sure you press Ctrl+Y AFTER sessionx is open (step 2)
- Don't press Ctrl+A before the Y, just Ctrl+Y by itself
- You should be inside the sessionx fuzzy finder window

**"I don't see my directories"**
- Press Ctrl+Y to switch to zoxide mode
- By default, sessionx shows existing tmux sessions
- Ctrl+Y switches to show your frequent directories
