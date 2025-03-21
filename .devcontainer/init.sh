#!/bin/bash

set -e

if [ -z "$SSH_PRIVATE_KEY" ]; then
  echo "SSH_PRIVATE_KEY is not set"
  exit 1
fi

mkdir -p ~/.ssh
ssh-keyscan smallweb.live >> ~/.ssh/known_hosts 2>/dev/null
echo -n "$SSH_PRIVATE_KEY" > ~/.ssh/id_ed25519 && chmod 600 ~/.ssh/id_ed25519
