#!/bin/bash

source ./core/print.sh
source ./core/brew.sh

print_info "Installing Mailcatcher..."

sudo gem install mailcatcher > /dev/null 2>&1

print_success "Done installing Mailcatcher!"
exit 0
