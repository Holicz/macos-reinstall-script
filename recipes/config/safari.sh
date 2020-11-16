#!/bin/bash

source ./core/print.sh
print_info "Configuring Safari..."

# Show full URL
defaults write com.apple.Safari ShowFullURLInSmartSearchField -bool true
# Do not open files after download
defaults write com.apple.Safari AutoOpenSafeDownloads -bool false
# Enable developer menu
defaults write com.apple.Safari.SandboxBroker ShowDevelopMenu -bool true
# Disable auto-correct
defaults write com.apple.Safari WebAutomaticSpellingCorrectionEnabled -bool false
# Disable AutoFill
defaults write com.apple.Safari AutoFillFromAddressBook -bool false
defaults write com.apple.Safari AutoFillPasswords -bool false
defaults write com.apple.Safari AutoFillCreditCardData -bool false
defaults write com.apple.Safari AutoFillMiscellaneousForms -bool false

print_success "Done configuring Safari!"
exit 0
