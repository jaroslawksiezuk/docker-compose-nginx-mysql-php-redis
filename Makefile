COMPOSE ?= docker compose

.PHONY: up down stop build rebuild logs ps restart

up:
	$(COMPOSE) up

down:
	$(COMPOSE) down

stop:
	$(COMPOSE) stop

build:
	$(COMPOSE) build

rebuild:
	$(COMPOSE) up --build

db-import:
	$(COMPOSE) exec -T mysql sh -c 'mysql -uroot -p"$$MYSQL_ROOT_PASSWORD" "$$MYSQL_DATABASE"' < docker/mysql/database.sql

logs:
	$(COMPOSE) logs -f

ps:
	$(COMPOSE) ps

restart:
	$(COMPOSE) restart

