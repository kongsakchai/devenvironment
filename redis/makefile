DOCKER := $(shell command -v docker || command -v podman)

.PHONY: start
start:
	$(DOCKER) compose up -d

.PHONY: stop
stop:
	$(DOCKER) compose down 

.PHONY: reset
reset:
	sudo rm -rf ./backup

.PHONY: cp
cp:
	cp docker-compose.yml $(FROM)/docker-compose-rin.yml

.PHONY: help
help:
	cat makefile

.PHONY: edit
edit:
	vim docker-compose.yml

.PHONY: conf
edit:
	vim redis.conf
