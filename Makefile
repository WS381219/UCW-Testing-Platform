## setup-db: Create the PostgreSQL schema.
.PHONY: setup-db
setup-db:
	python3 database/migrations/migrate.py

## db-shell: Open the PostgreSQL shell.
.PHONY: db-shell
db-shell:
	psql $${DATABASE_URL:-postgresql://postgres:postgres@localhost:5432/reinforcement_testing}

## run: Run the app in development mode.
.PHONY: run
run:
	python3 app.py

## test: Run all tests.
.PHONY: test
test:
	pytest -v
