#!/usr/bin/env bash

source ./core/print.sh
print_info "Installing homebrew..."

if command -v brew > /dev/null 2>&1; then
  print_success "Homebrew already installed!"
  exit 0
fi

echo | /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)" >/dev/null 2>&1
echo 'export PATH="/usr/local/sbin:$PATH"' >> ~/.zshrc

brew update > /dev/null 2>&1
brew upgrade > /dev/null 2>&1
brew cleanup > /dev/null 2>&1

print_success "Done installing homebrew!"
exit 0
