#!/bin/bash

source ./core/print.sh
print_info "Configuring keyboard..."

# Disable auto capital first letter
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false
# Disable dot after two spaces
defaults write NSGlobalDomain NSAutomaticPeriodSubstitutionEnabled -bool false
# Disable auto-correct
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false
defaults write NSGlobalDomain WebAutomaticSpellingCorrectionEnabled -bool false

print_success "Done configuring keyboard!"
exit 0
