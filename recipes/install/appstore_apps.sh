#!/bin/bash

source ./core/print.sh
source ./core/brew.sh

print_info "Installing apps from the AppStore..."

declare -a APPS=(
  "882812218" # Owly
  "1179623856" # PasteBot
  "926036361" # Lastpass
  "1176895641" # Spark
  "803453959" # Slack
  "441258766" # Magnet
)

# Install app store CLI
brew_install mas

# Install apps
for APP in "${APPS[@]}"
do
  mas install $APP >/dev/null 2>&1
done

# Remove app store CLI
brew_uninstall mas

print_success "Done installing apps from the AppStore!"
exit 0
