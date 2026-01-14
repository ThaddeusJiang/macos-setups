#!/usr/bin/env zsh

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install Homebrew packages
brew install trash
brew install tree
brew install fzf
brew install thefuck
brew install mole

# Development tools
brew install git
brew install mise
brew install gh
brew install jq
brew install codex

# Install Homebrew casks
brew install --cask cursor
brew install --cask zed
brew install --cask fork
brew install --cask input-source-pro
brew install --cask monitorcontrol
