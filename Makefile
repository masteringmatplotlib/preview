VENV=.venv
PYTHON=$(shell which python3.4)

virtual-env:
	$(PYTHON) -m venv $(VENV)

project-deps:
	pyvenv $(VENV) && \
	pip3.4 install -r requirements.txt

setup: virtual-env project-deps

run:
	pyvenv $(VENV) && \
	ipython notebook notebooks/mmpl-preview.ipynb

clean:
	rm -rf $(VENV)
