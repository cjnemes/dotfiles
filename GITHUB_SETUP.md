# Pushing Your Dotfiles to GitHub

## One-Time Setup

### 1. Create a GitHub Repository

1. Go to [github.com/new](https://github.com/new)
2. Repository name: `dotfiles`
3. Description: "My personal dotfiles for macOS"
4. Keep it **Public** or **Private** (your choice)
5. **Do NOT** initialize with README (we already have one)
6. Click "Create repository"

### 2. Connect Your Local Repo

GitHub will show you commands like this - run them in your terminal:

```bash
cd ~/dotfiles

# Add the remote (replace cjnemes with your GitHub username)
git remote add origin https://github.com/cjnemes/dotfiles.git

# Push your code
git branch -M main
git push -u origin main
```

### 3. Update install.sh

After pushing, edit `install.sh` and update this line:
```bash
DOTFILES_REPO="https://github.com/cjnemes/dotfiles.git"
```

Then commit and push the change:
```bash
git add install.sh
git commit -m "Update repo URL in install.sh"
git push
```

## Daily Usage

### Pushing Changes
After editing any config:
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
# Configs update automatically (they're symlinked!)
```

## Setting Up on a New Mac

On your other Mac, simply run:
```bash
git clone https://github.com/cjnemes/dotfiles.git ~/dotfiles
cd ~/dotfiles
./install.sh
```

That's it! The install script handles everything.

## Pro Tips

### Use GitHub CLI (Optional)
```bash
brew install gh
gh auth login
gh repo create dotfiles --public --source=. --remote=origin --push
```

### Automate Commits (Optional)
Add to your shell config:
```bash
alias dotfiles='cd ~/dotfiles && git add . && git commit -m "Auto-update $(date)" && git push && cd -'
```

Then just run `dotfiles` to quickly sync changes!
