.PHONY: start
start:
	docker compose up -d

.PHONY: stop
stop:
	docker compose down && podman network prune -f

.PHONY: rin
rin:
	docker network connect rin_default adminer

.PHONY: rin-dis
rin-dis:
	docker network disconnect rin_default adminer

.PHONY: yuki
yuki:
	docker network connect yuki_default adminer

.PHONY: yuki-dis
yuki-dis:
	docker network disconnect yuki_default adminer
