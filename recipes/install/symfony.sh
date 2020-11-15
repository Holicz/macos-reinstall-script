#!/bin/bash

source ./core/print.sh

print_info "Installing Symfony binary..."

curl -sS https://get.symfony.com/cli/installer | bash > /dev/null 2>&1
mv ~/.symfony/bin/symfony /usr/local/bin/symfony

print_success "Done installing Symfony binary!"
exit 0
