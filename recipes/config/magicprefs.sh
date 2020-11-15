#!/bin/bash

source ./core/print.sh
print_info "Configuring Magicprefs..."

defaults import com.vladalexa.MagicPrefs magicpref.plist

print_success "Done configuring Magicprefs!"
exit 0
