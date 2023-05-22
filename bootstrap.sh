#!/bin/bash

sudo dnf install openssh-server
sudo systemctl enable --now sshd
ssh-keygen -a 100 -t ed25519
cat ~/.ssh/id_ed25519.pub >> ~/.ssh/authorized_keys
