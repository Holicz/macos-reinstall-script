#!/bin/bash

source ./core/print.sh

print_info "Installing oh my zsh..."

echo | /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" >/dev/null 2>&1

print_success "Done installing oh my zsh!"
exit 0
