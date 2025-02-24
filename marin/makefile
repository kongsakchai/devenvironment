.PHONY: start
start:
	docker compose up -d

.PHONY: stop
stop:
	docker compose down && podman network prune -f

.PHONY: restore
restore:
	sudo rm -rf backup

.PHONY: copy
copy:
	cp docker-compose.yml $(FROM)/docker-compose-marin.yml
