#!/bin/bash

source ./core/print.sh
print_info "Configuring Dock..."

# Override apps in Dock with these
defaults write com.apple.dock persistent-apps -array \
'<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/Safari.app</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>' \
'<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/System/Applications/Calendar.app</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>' \
'<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/Spark.app</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>' \
'<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/Slack.app</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>'
# Disable Recent apps in Dock
defaults write com.apple.dock show-recents -bool FALSE
# Disable resizing dock
defaults write com.apple.dock size-immutable -bool yes
# Set Dock size
defaults write com.apple.dock tilesize -integer 30
# Disable launchpad trackpad gesture
defaults write com.apple.dock showLaunchpadGestureEnabled -bool false
# Restart Dock
killall Dock

print_success "Done configuring Dock!"
exit 0
