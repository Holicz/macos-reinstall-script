#!/bin/bash

source ./core/print.sh
source ./core/brew.sh

print_info "Installing yarn..."

brew_install yarn

print_success "Done installing yarn!"
exit 0
