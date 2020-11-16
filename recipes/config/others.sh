#!/bin/bash

source ./core/print.sh
print_info "Configuring other things..."

# Do not ask if I want to open app downloaded from the internet
defaults write com.apple.LaunchServices LSQuarantine -bool false

print_success "Done configuring other things!"
exit 0
