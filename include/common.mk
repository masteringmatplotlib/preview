VENV=../.venv-mmpl
PYTHON=python3.4
IPYTHON=ipython3
SYSTEM_PYTHON=$(shell which $(PYTHON))
SOURCE=./lib

virtual-env:
	$(SYSTEM_PYTHON) -m venv $(VENV)

project-deps:
	. $(VENV)/bin/activate && \
	pip3.4 install -r requirements.txt

setup: virtual-env deps

run:
	. $(VENV)/bin/activate && \
	$(IPYTHON) notebook $(NOTEBOOK)

clean:
	rm -rf $(VENV)

repl:
	. $(VENV)/bin/activate && $(IPYTHON)

flakes:
	@echo "\nChecking for flakes ...\n"
	flake8 $(SOURCE)
