#!/bin/bash

source ./core/print.sh
print_info "Configuring Finder..."

# Show file extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true
# Set default folder
defaults write com.apple.finder NewWindowTarget -string "PfLo"
defaults write com.apple.finder NewWindowTargetPath -string "file://${HOME}/work/"
# Sort by
defaults write com.apple.finder FXPreferredGroupBy -string "Name"
# Default view - list
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"
# Remove all .DS_Store
sudo find / -name ".DS_Store" -delete >/dev/null 2>&1
# Keep folders on top when sorting by name
defaults write com.apple.finder _FXSortFoldersFirst -bool true
# Restart Finder
killall Finder

print_success "Done configuring Finder!"
exit 0
