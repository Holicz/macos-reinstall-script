#!/bin/bash

source ./core/print.sh
print_info "Configuring trackpad..."

# Disable force click and haptic feedback
defaults write NSGlobalDomain com.apple.trackpad.forceClick -bool false
defaults write com.apple.AppleMultitouchTrackpad ForceSuppressed -bool true
defaults write com.apple.AppleMultitouchTrackpad ActuateDetents -bool false
defaults write com.apple.AppleMultitouchTrackpad FirstClickThreshold -int 1
defaults write com.apple.AppleMultitouchTrackpad SecondClickThreshold -int 1
# Set speed
defaults write NSGlobalDomain com.apple.trackpad.scaling -float 2

print_success "Done configuring trackpad!"
exit 0
