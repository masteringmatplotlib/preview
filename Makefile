INCLUDE_REPO=git@github.com:masteringmatplotlib/includes.git
INCLUDE_DIR=include
NOTEBOOK=notebooks/mmpl-preview.ipynb

-include include/common.mk

$(INCLUDE_DIR):
	git submodule add $(INCLUDE_REPO) $(INCLUDE_DIR)

deps: project-deps

setup: $(INCLUDE_DIR)
	make project-setup
