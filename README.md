# Smallweb Codespace

## Usage

1. Create a new repository from this template
1. Generate an ssh key pair using `ssh-keygen -t ed25519`
1. Store the private key in a codespace secret named `SSH_PRIVATE_KEY`
1. (optional) Set the `SOPS_AGE_KEY` secret if you want to use `sops` to encrypt
   secrets
1. Create a new codespace
1. Run `ssh accounts@smallweb.live login` to associate the codespace ssh key
   with your account
1. Run the `./sync.sh <username>` script to start the sync
