VENV=.venv
PYTHON=$(shell which python3.4)

system-deps-py2:
	pip3.4 install virtualenv

virtual-env-py2:
	VIRTUALENV_PYTHON=$(PYTHON) virtualenv $(VENV)

virtual-env:
	$(PYTHON) -m venv $(VENV)

project-deps-py2:
	. $(VENV)/bin/activate && \
	pip3.4 install -r requirements.txt

project-deps:
	pyvenv $(VENV) && \
	pip3.4 install -r requirements.txt

setup-py2: system-deps virtual-env project-deps

setup: virtual-env project-deps

run-py2:
	. $(VENV)/bin/activate && \
	ipython notebook notebooks/mmpl-preview.ipynb

run:
	pyvenv $(VENV) && \
	ipython notebook notebooks/mmpl-preview.ipynb

