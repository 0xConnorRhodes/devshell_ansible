#!/bin/bash

sudo dnf install openssh-server
sudo systemctl enable --now sshd
