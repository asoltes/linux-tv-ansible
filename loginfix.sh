#!/bin/bash

# Replace these values with your own
USERNAME="root"
SSH_KEY_PATH="/root/.ssh/id_rsa.pub"
SERVER_LIST=("ubuntu1" "ubuntu2" "ubuntu3" "centos1" "centos2" "centos3")

# Loop through each server and add the SSH key
for SERVER in "${SERVER_LIST[@]}"
do
  echo "Adding SSH key to $SERVER..."
  ssh-copy-id -i $SSH_KEY_PATH $USERNAME@$SERVER
done

echo "Done!"

