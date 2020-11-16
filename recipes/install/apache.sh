#!/bin/bash

source ./core/print.sh
source ./core/brew.sh

print_info "Installing Apache..."

# Made with https://getgrav.org/blog/macos-bigsur-apache-multiple-php-versions

# Install missing packages
brew_install openssl

# Stop build-in web server and install mine
sudo apachectl stop >/dev/null 2>&1
sudo launchctl unload -w /System/Library/LaunchDaemons/org.apache.httpd.plist >/dev/null 2>&1
brew_install httpd
sudo brew services start httpd > /dev/null 2>&1

# Configure Apache
sed -i '' 's/Listen 8080/Listen 80/g' /usr/local/etc/httpd/httpd.conf
sed -i '' 's/DocumentRoot \"\/usr\/local\/var\/www\"/DocumentRoot \"\/Users\/'$(whoami)'\/work\"/g' /usr/local/etc/httpd/httpd.conf
sed -i '' 's/<Directory \"\/usr\/local\/var\/www\">/<Directory \"\/Users\/'$(whoami)'\/work\">/g' /usr/local/etc/httpd/httpd.conf
sed -i '' 's/AllowOverride None/AllowOverride All/1' /usr/local/etc/httpd/httpd.conf
sed -i '' 's/#LoadModule rewrite_module/LoadModule rewrite_module/g' /usr/local/etc/httpd/httpd.conf
sed -i '' 's/User _www/User '$(whoami)'/g' /usr/local/etc/httpd/httpd.conf
sed -i '' 's/Group _www/Group staff/g' /usr/local/etc/httpd/httpd.conf
sed -i '' 's/#ServerName www.example.com:8080/ServerName localhost/g' /usr/local/etc/httpd/httpd.conf
sed -i '' 's/LoadModule rewrite_module lib\/httpd\/modules\/mod_rewrite.so/LoadModule rewrite_module lib\/httpd\/modules\/mod_rewrite.so\nLoadModule php7_module \/usr\/local\/opt\/php@7.4\/lib\/httpd\/modules\/libphp7.so/g' /usr/local/etc/httpd/httpd.conf
sed -i '' 's/DirectoryIndex index.html/DirectoryIndex index.php index.html/g' /usr/local/etc/httpd/httpd.conf
perl -i~ -0777 -pe 's/#\n# The following lines prevent .htaccess and .htpasswd files from being/\<FilesMatch \\.php\$\>\n   SetHandler application\/x-httpd-php\n\<\/FilesMatch\>/g' /usr/local/etc/httpd/httpd.conf

# Restart Apache
sudo apachectl -k stop >/dev/null 2>&1
sudo apachectl -k start >/dev/null 2>&1

print_success "Done installing Apache!"
exit 0
