#!/bin/bash

source ./core/print.sh
source ./core/brew.sh

print_info "Installing apps from the homebrew cask..."

declare -a APPS=(
  "jetbrains-toolbox"
  "fork"
  "iterm2"
  "magicprefs"
  "microsoft-teams"
  "notion"
  "pock"
  "spotify"
  "zoomus"
)

# Install apps
for APP in "${APPS[@]}"
do
  brew_install_cask $APP
done

print_success "Done installing apps from the homebrew cask!"
exit 0
