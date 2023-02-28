#!/usr/bin/env zsh

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install Node.js
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash

# Install Homebrew packages
brew install git
brew install elixir
brew install gh
brew install trash
brew install tree
brew install fzf
brew install babashka/brew/bbin
brew install postgresql
brew install flyctl

# Install Homebrew casks
brew install --cask lastpass
brew install --cask arc
brew install --cask alfred
brew install --cask rectangle
brew install --cask visual-studio-code
brew install --cask fork
brew install --cask eudic
brew install --cask discord
brew install --cask docker
brew install --cask postman

