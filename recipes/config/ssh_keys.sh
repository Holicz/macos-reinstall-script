#!/bin/bash

source ./core/print.sh
print_info "Copying SSH keys..."

FILE_PUB_KEY=id_rsa.pub
FILE_PRIVATE_KEY=id_rsa
SSH_DIR=~/.ssh

if [ ! -d "$SSH_DIR" ]; then
  mkdir $SSH_DIR
fi

sudo cp $FILE_PUB_KEY "$SSH_DIR/$FILE_PUB_KEY"
sudo cp $FILE_PRIVATE_KEY "$SSH_DIR/$FILE_PRIVATE_KEY"
chmod 400 "$SSH_DIR/$FILE_PUB_KEY"
chmod 400 "$SSH_DIR/$FILE_PRIVATE_KEY"

print_success "Done copying SSH keys!"
exit 0
