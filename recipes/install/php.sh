#!/bin/bash

source ./core/print.sh
source ./core/brew.sh

print_info "Installing PHP..."

# Install PHP
brew_install php@7.4
# Configure PHP
sed -i '' 's/;date.timezone =/date.timezone = Europe\/Prague/g' /usr/local/etc/php/7.4/php.ini
sed -i '' 's/upload_max_filesize = 2M/upload_max_filesize = 2G/g' /usr/local/etc/php/7.4/php.ini
sed -i '' 's/post_max_size = 8M/post_max_size = 2G/g' /usr/local/etc/php/7.4/php.ini

print_success "Done installing PHP!"
exit 0
