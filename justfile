playbook:
	ansible-playbook run.yaml -K

install-deps:
	ansible-galaxy install -r requirements.yaml

nix:
	nix-env -irf packages.nix
