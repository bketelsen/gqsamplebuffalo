APP=blog
DOCKER=docker
BUFFALO=buffalo

db-up:
	@echo "Make sure you've run 'make db-setup' before this"
	$(DOCKER) run --name=$(APP)_db -d -p 5432:5432 -e POSTGRES_DB=$(APP)_development postgres

db-setup:
	$(DOCKER) run --name=$(APP)_db -d -p 5432:5432 -e POSTGRES_DB=$(APP)_development postgres
	sleep 6
	$(BUFFALO) db create -a
	$(BUFFALO) db migrate up
	$(DOCKER) ps | grep $(APP)_db

db-down:
	$(DOCKER) stop $(APP)_db
	$(DOCKER) rm $(APP)_db