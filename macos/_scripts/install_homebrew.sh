#!/bin/bash

# install homebrew itself
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# initialize & bring homebrew up to date
brew update && brew upgrade

# install packages from Brewfile
brew bundle install --all --file ../Brewfile