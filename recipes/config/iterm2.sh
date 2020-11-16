#!/bin/bash

source ./core/print.sh
print_info "Configuring iTerm2..."

# Move config to config dir
mv com.googlecode.iterm2.plist "$HOME/Documents/iterm/com.googlecode.iterm2.plist"
# Enable config dir
defaults write com.googlecode.iterm2 LoadPrefsFromCustomFolder -bool true
defaults write com.googlecode.iterm2 PrefsCustomFolder -string "$HOME/Documents/iterm"
# Do not show prompt when quitting iTerm
defaults write com.googlecode.iterm2 PromptOnQuit -bool false

print_success "Done configuring iTerm2!"
exit 0
