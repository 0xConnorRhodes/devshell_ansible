#!/bin/bash

# initial packages
sudo dnf upgrade
sudo dnf install openssh-server ansible git

# set up ssh
ssh-keygen -a 100 -t ed25519
cat ~/.ssh/id_ed25519.pub >> ~/.ssh/authorized_keys
sudo systemctl enable --now sshd

# ansible deps
ansible-galaxy install -r requirements.yaml

# install nix
sh <(curl -L https://nixos.org/nix/install) --daemon
