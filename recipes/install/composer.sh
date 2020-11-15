#!/bin/bash

source ./core/print.sh

print_info "Installing composer..."

php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" > /dev/null 2>&1
php composer-setup.php > /dev/null 2>&1
php -r "unlink('composer-setup.php');"
sudo mv composer.phar /usr/local/bin/composer

print_success "Done installing composer!"
exit 0
