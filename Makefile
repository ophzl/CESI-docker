DOCKER = docker
COMPOSE = docker-compose
DB = odoo_14_tests_db_1

default: update

update:
	$(COMPOSE) up -d

psql:
	$(DOCKER) exec -ti $(DB) psql -U odoo

down:
	$(COMPOSE) down

rup:
	$(COMPOSE) run --service-ports web -d odoo --stop-after-init && $(COMPOSE) up -d
