#!/bin/bash

source ./core/print.sh
print_info "Configuring iTerm2..."

defaults write com.googlecode.iterm2 PrefsCustomFolder -string "$HOME/Documents/iterm"
mv com.googlecode.iterm2.plist "$HOME/Documents/iterm/com.googlecode.iterm2.plist"

print_success "Done configuring iTerm2!"
exit 0
