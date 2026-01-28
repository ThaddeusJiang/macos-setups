#!/usr/bin/env zsh
set -euo pipefail

# Install oh-my-zsh (only if missing)
if [ ! -d "${HOME}/.oh-my-zsh" ]; then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# Install Homebrew (if missing)
if ! command -v brew >/dev/null 2>&1; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Ensure brew is on PATH (Apple Silicon default path)
if [ -x /opt/homebrew/bin/brew ]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Install everything from Brewfile
brew bundle --file ./Brewfile

# Sync git config files
GIT_BASE_URL="https://raw.githubusercontent.com/ThaddeusJiang/macos-setups/main"

echo "→ Syncing git config files..."
curl -fsSL "$GIT_BASE_URL/.gitconfig" -o "${HOME}/.gitconfig"
curl -fsSL "$GIT_BASE_URL/.gitignore_global" -o "${HOME}/.gitignore_global"
echo "✓ Git config synced"

# Ensure vim is default editor
ZSHRC="${HOME}/.zshrc"

echo "→ Ensuring EDITOR/VISUAL are set to vim in .zshrc"

touch "$ZSHRC"

if ! grep -q '^export EDITOR=vim$' "$ZSHRC"; then
  echo '' >> "$ZSHRC"
  echo '# Default editor' >> "$ZSHRC"
  echo 'export EDITOR=vim' >> "$ZSHRC"
fi

if ! grep -q '^export VISUAL=vim$' "$ZSHRC"; then
  echo 'export VISUAL=vim' >> "$ZSHRC"
fi

# Reload zsh config
echo "→ Reloading .zshrc"
source "$ZSHRC"
