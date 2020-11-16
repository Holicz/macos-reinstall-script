#!/bin/bash

source ./core/print.sh
source ./core/brew.sh

print_info "Installing font FiraCode..."

brew tap homebrew/cask-fonts > /dev/null 2>&1
brew_install_cask font-fira-code

print_success "Done installing font FiraCode!"
exit 0
