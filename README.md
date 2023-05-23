# devshell_ansible
ansible playbook to bootstrap my devshell environment on Fedora Linux

- `bootstrap.sh` - installs dependencies needed to run the setup playbook
- `run.yaml` - bootstrap playbook, run with `just playbook`
- `packages.yaml` - contains lists of packages installed with dnf, nix, and asdf
