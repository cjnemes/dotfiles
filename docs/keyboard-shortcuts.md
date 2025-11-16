# Tmux Keyboard Shortcuts Reference

## Prefix Key
- **Prefix**: `Ctrl+A` (all shortcuts below require pressing Ctrl+A first, unless noted otherwise)

## Session Management
- `Ctrl+D` - Detach from session
- `S` - Choose session from list
- `*` - List all clients

## Window Management
- `Ctrl+C` - Create new window (opens in $HOME)
- `H` - Previous window
- `L` - Next window
- `1-9` - Switch to window 1-9
- `0` - Switch to window 10
- `Ctrl+A` - Switch to last window
- `r` - Rename current window
- `Ctrl+W` or `w` - List all windows
- `"` - Choose window from tree view
- `c` - Kill current pane

## Pane Management
- `s` - Split pane horizontally (current directory)
- `v` - Split pane vertically (current directory)
- `|` - Split window (default split)
- `h` - Select pane to the left
- `j` - Select pane below
- `k` - Select pane above
- `l` - Select pane to the right
- `z` - Toggle pane zoom
- `x` - Swap pane with next pane

## Pane Resizing
- `,` - Resize pane left by 20
- `.` - Resize pane right by 20
- `-` - Resize pane down by 7
- `=` - Resize pane up by 7

## Copy Mode (Vi-style)
- `v` (in copy mode) - Begin selection
- `y` (in copy mode) - Yank selection to clipboard
- Mouse drag automatically copies to clipboard
- System clipboard enabled for yanking (tmux-yank plugin)

## Utility
- `R` - Reload tmux configuration
- `Ctrl+L` or `l` - Refresh client
- `K` - Clear pane (sends "clear" + Enter)
- `:` - Enter command prompt
- `*` - Toggle synchronize-panes (type in all panes at once)
- `P` - Toggle pane border status
- `Ctrl+X` - Lock server

## Session Persistence (tmux-resurrect)
- `Ctrl+S` - Save current session
- `Ctrl+R` - Restore saved session

## Plugin Shortcuts

### tmux-open
- `o` (in copy mode) - Open highlighted selection (files/URLs)
- `Ctrl+O` (in copy mode) - Open highlighted file in $EDITOR
- `Shift+S` (in copy mode) - Search highlighted text with search engine

### tmux-floax
- `p` - Open floating window

### tmux-sessionx
- `o` - Open session manager (then use shortcuts below INSIDE the sessionx window)

**Inside SessionX window (after pressing `Ctrl+A` then `o`):**
- `Enter` - Create/switch to session
- `Ctrl+Y` - Load zoxide directories (your frequent folders!)
- `Ctrl+X` - Browse home directory folders
- `Ctrl+W` - Show all windows from all sessions
- `Ctrl+E` - Browse .config/tmux directory
- `Ctrl+T` - Toggle session preview
- `Ctrl+R` - Rename session
- `Ctrl+U/D` - Scroll preview up/down
- `Ctrl+N/P` - Navigate up/down in list
- `Alt+Backspace` - Kill selected session
- `?` - Toggle preview window
- `Esc` - Cancel/close sessionx

### tmux-thumbs
- Default plugin bindings (check plugin docs for activation)

### tmux-fzf-url
- Default plugin bindings for URL selection

## Notes
- Most bindings are repeatable when marked with `-r`
- Copy mode uses vi-style keybindings (`mode-keys vi`)
- Mouse support is enabled (click to select panes, scroll, resize)
- Pane borders: active = magenta, inactive = brightblack
- Windows and panes are indexed starting at 1 (not 0)
- Activity monitoring is enabled (windows with activity will be highlighted)
