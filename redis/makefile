DOCKER := $(shell command -v docker || command -v podman)

.PHONY: start
start:
	$(DOCKER) compose up -d

.PHONY: stop
stop:
	$(DOCKER) compose down 

.PHONY: reset
restore:
	sudo rm -rf backup

.PHONY: cp
cp:
	cp docker-compose.yml $(FROM)/docker-compose-rin.yml


.PHONY: help
help:
	cat makefile
