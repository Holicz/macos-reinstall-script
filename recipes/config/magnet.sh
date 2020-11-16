#!/bin/bash

source ./core/print.sh
print_info "Configuring Magnet..."

defaults write com.crowdcafe.windowmagnet userAppBlacklist -array-add 'com.jetbrains.PhpStorm'

print_success "Done configuring Magnet!"
exit 0
