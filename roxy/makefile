.PHONY: start
start:
	docker compose up -d

.PHONY: stop
stop:
	docker compose down && podman network prune -f

.PHONY: cp
cp:
	cp docker-compose.yml $(FROM)/docker-compose-roxy.yml
