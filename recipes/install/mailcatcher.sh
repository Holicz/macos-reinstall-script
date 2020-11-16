#!/bin/bash

source ./core/print.sh
source ./core/brew.sh

print_info "Installing Mailcatcher..."

# Without this it's not working on Catalina and Big sur
sudo gem install thin -v '1.5.1' -- --with-cflags="-Wno-error=implicit-function-declaration"
sudo gem install mailcatcher > /dev/null 2>&1

print_success "Done installing Mailcatcher!"
exit 0
