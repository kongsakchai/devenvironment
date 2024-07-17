.PHONY: start
start:
	podman compose up -d

.PHONY: stop
stop:
	podman compose down && podman network prune -f

.PHONY: restore
restore:
	sudo rm -rf backup
