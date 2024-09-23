serve:
	python -m mkdocs serve

install:
	pip install -r requirements.txt

create-env:
	python -m venv env

freeze:
	pip freeze > requirements.txt