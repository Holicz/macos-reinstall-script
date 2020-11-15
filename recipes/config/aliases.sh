#!/usr/bin/env bash

source ./core/print.sh
print_info "Configuring aliases..."

echo -e "alias ss=\"symfony server:start\"
alias yd=\"yarn run encore dev\"
alias ydw=\"yarn run encore dev --watch\"
alias sleep=\"pmset displaysleepnow\"" >> ~/.zshrc

print_success "Done configuring aliases!"
exit 0
