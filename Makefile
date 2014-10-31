VENV=.venv
PYTHON=$(shell which python3.4)

system-deps:
	pip3.4 install virtualenv

virtual-env:
	VIRTUALENV_PYTHON=$(PYTHON) virtualenv $(VENV)

project-deps:
	. $(VENV)/bin/activate && \
	pip3.4 install -r requirements.txt

setup: system-deps virtual-env project-deps

run:
	. $(VENV)/bin/activate && \
	ipython notebook notebooks/mmpl-preview.ipynb

