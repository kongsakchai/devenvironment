.PHONY: init
init:
	mkdir ~/labs
	mkdir ~/projects

.PHONY: bash-backup
bash-backup:
	cp ~/.bashrc ~/.bashrc-backup

.PHONY: bash
bash:
	echo "\n# workspaces" >> ~/.bashrc
	echo "source ~/workspaces/script.sh" >> ~/.bashrc
	. ~/.bashrc
