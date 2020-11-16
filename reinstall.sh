#!/bin/bash

source ./core/print.sh

print_info "Hi there! I will ask for some information upfront."
print_info "First of all, tell me your password so the script does not have to be interrupted."

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until script has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Get info for git
print_info "Now git configuration."

FULLNAME="USER INPUT"
read -p "Fullname: " FULLNAME
EMAIL="USER INPUT"
read -p "Email: " EMAIL

# Required config files
declare -a REQUIRED_FILES=(
  "id_rsa"
  "id_rsa.pub"
  "com.googlecode.iterm2.plist"
  "magicpref.plist"
)

# Ensure all required config files are present
CONTINUE=true
for FILE in "${REQUIRED_FILES[@]}"
do
  if [ ! -f "$FILE" ]; then
    print_error "Please put file $FILE into folder with this script."
    CONTINUE=false
  fi
done

# Abort when some files are missing
if [ "$CONTINUE" = false ]; then
  print_warning "Some files are missing. Aborting."

  exit 0
fi

# Ensure /usr/local/bin does exist
if [ ! -d "/usr/local/bin" ]; then
  sudo mkdir -p /usr/local/bin
fi

# Run the recipes
/bin/bash ./recipes/install/oh_my_zsh.sh
/bin/bash ./recipes/install/homebrew.sh
/bin/bash ./recipes/install/mariadb.sh
/bin/bash ./recipes/install/yarn.sh
/bin/bash ./recipes/install/symfony.sh
/bin/bash ./recipes/install/composer.sh
/bin/bash ./recipes/install/php.sh
/bin/bash ./recipes/install/apache.sh
/bin/bash ./recipes/install/appstore_apps.sh
/bin/bash ./recipes/install/brew_cask_apps.sh
/bin/bash ./recipes/install/fira_code.sh

/bin/bash ./recipes/config/ssh_keys.sh
/bin/bash ./recipes/config/work_directory.sh
/bin/bash ./recipes/config/finder.sh
/bin/bash ./recipes/config/dock.sh
/bin/bash ./recipes/config/safari.sh
/bin/bash ./recipes/config/aliases.sh
/bin/bash ./recipes/config/magicprefs.sh
/bin/bash ./recipes/config/git.sh "$FULLNAME" "$EMAIL"
/bin/bash ./recipes/config/iterm2.sh
/bin/bash ./recipes/config/pastebot.sh
/bin/bash ./recipes/config/magnet.sh
/bin/bash ./recipes/config/others.sh
/bin/bash ./recipes/config/trackpad.sh
/bin/bash ./recipes/config/keyboard.sh

# Setup database
print_info "Unfortunately, I can't setup MariaDB for you. You have to do it yourself."
sudo /usr/local/bin/mysql_secure_installation

print_success "Done 😊. The rest is up to you."

exit 0
