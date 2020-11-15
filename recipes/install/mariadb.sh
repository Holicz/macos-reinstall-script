#!/bin/bash

source ./core/print.sh
source ./core/brew.sh

print_info "Installing MariaDB..."

brew_install mariadb
brew services start mariadb > /dev/null 2>&1

print_success "Done installing MariaDB!"
exit 0
