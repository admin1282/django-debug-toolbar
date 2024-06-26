.PHONY: run-server
run-server:
	poetry run python core/manage.py runserver

.PHONY: migrations
migrations:
	poetry run python core/manage.py makemigrations

.PHONY: migrate
migrate:
	poetry run python core/manage.py migrate

.PHONY: shell
shell:
	poetry run python core/manage.py shell