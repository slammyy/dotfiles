#!/bin/sh

echo "\nSetup process started\n"

# Install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install ohmyszh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Install brew dependencies
brew bundle

# Stow dotfiles
stow bin tmux vim zsh

# Set executable permission
chmod +x ./bin/bin/tmux-cht.sh
chmod +x ./bin/bin/tmux-sessionizer

cp ./.gitconfig ~/.gitconfig

echo "\nSetup successfully completed\n"
