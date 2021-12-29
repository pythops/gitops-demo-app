SHELL := /bin/bash

setup:
	@(\
		python3 -m venv .venv && \
		source .venv/bin/activate && \
		pip3 install -U pip && \
		pip3 install Flask pytest \
	)

test:
	@(\
		source .venv/bin/activate && \
		pytest -v -x  tests/ \
	)

run:
	@(\
		source .venv/bin/activate && \
		FLASK_APP=app flask run \
	)
