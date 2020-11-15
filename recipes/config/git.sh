#!/bin/bash

source ./core/print.sh
print_info "Configuring git..."

git config --global user.name "$1"
git config --global user.email "$2"

print_success "Done configuring git!"
exit 0
