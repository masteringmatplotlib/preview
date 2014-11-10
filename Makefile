VENV=.venv
PYTHON=python3.4
IPYTHON=ipython3
SYSTEM_PYTHON=$(shell which $(PYTHON))
SOURCE=./lib

virtual-env:
	$(SYSTEM_PYTHON) -m venv $(VENV)

deps:
	. $(VENV)/bin/activate && \
	pip3.4 install -r requirements.txt

setup: virtual-env deps
	. $(VENV)/bin/activate

run:
	. $(VENV)/bin/activate && \
	$(IPYTHON) notebook notebooks/mmpl-preview.ipynb

clean:
	rm -rf $(VENV)

repl:
	. $(VENV)/bin/activate && $(IPYTHON)

flakes:
	flake8 $(SOURCE)
