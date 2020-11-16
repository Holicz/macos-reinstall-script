#!/bin/bash

source ./core/print.sh
print_info "Configuring PasteBot..."

# Hide dock icon
defaults write com.tapbots.Pastebot2Mac UIVisibilityState -int 2
# Disable sounds
defaults write com.tapbots.Pastebot2Mac SoundsEnabled -bool false

print_success "Done configuring PasteBot!"
exit 0
