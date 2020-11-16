#!/bin/bash

source ./core/print.sh

print_info "Configuring work directory..."

if [ ! -d "$HOME/work" ]; then
  mkdir "$HOME/work"
fi

touch "$HOME/work/index.php"
echo "<?php phpinfo();" > "$HOME/work/index.php"

if [ ! -d "$HOME/work/adminer" ]; then
  mkdir "$HOME/work/adminer"
fi

curl -s -L https://www.adminer.org/latest.php > "$HOME/work/adminer/index.php"

print_success "Done configuring work direcotry!"
exit 0
