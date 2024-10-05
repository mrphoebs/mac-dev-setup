#!/bin/bash

SSH_FOLDER=~/.ssh
PRIVATE_KEY_FILE=id_ed25519
EMAIL=""

if test -f "${SSH_FOLDER}/${PRIVATE_KEY_FILE}"
then
	echo "${PRIVATE_KEY_FILE} already exists, exiting"
	exit 1
fi

read -p "Enter emailid for the keypair: " EMAIL

if [[ -z "${EMAIL}" ]]; then
	echo "Cant proceed without Email ID"
	exit 1
fi

ssh-keygen -t ed25519 -C "${EMAIL}" -f "${SSH_FOLDER}/${PRIVATE_KEY_FILE}"

cat >> ~/.ssh/config <<- EOM
Host github.com
  AddKeysToAgent yes
  IdentityFile ~/.ssh/id_ed25519
EOM

echo "Generated key and added to ~/.ssh/config to add they keys to ssh-agent for host github"

echo "Loading keys into ssh-agent with ssh-add....."

ssh-add

