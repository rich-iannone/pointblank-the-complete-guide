# Makefile for "Data Validation with Pointblank for Python" (a Quarto book).
#
# Rendering executes the Python chunks through the project's virtual
# environment. Quarto chooses its Jupyter kernel from an ACTIVATED venv (it
# keys off $VIRTUAL_ENV), so the render targets activate .venv first rather
# than relying on PATH or QUARTO_PYTHON, which Quarto ignores for kernel
# selection. Run `make` or `make help` to list targets.

SHELL := /bin/bash
VENV := .venv
ACTIVATE := source $(VENV)/bin/activate

# Pointblank is installed from git main to match the in-development library the
# book documents. Override for a local editable checkout, for example:
#   make setup PB_SPEC="-e /path/to/pointblank"
PB_SPEC ?= pointblank@git+https://github.com/posit-dev/pointblank.git@main

.DEFAULT_GOAL := help
.PHONY: help render preview chapter audit clean setup

help: ## List available targets
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) \
	  | awk 'BEGIN {FS = ":.*?## "}; {printf "  \033[36m%-10s\033[0m %s\n", $$1, $$2}'

render: ## Render the whole book to docs/
	$(ACTIVATE) && quarto render

preview: ## Serve a live preview with auto-reload (Ctrl-C to stop)
	$(ACTIVATE) && quarto preview

chapter: ## Render one chapter, e.g. make chapter CH=05-analysis-loop.qmd
	@test -n "$(CH)" || { echo "Usage: make chapter CH=NN-name.qmd"; exit 1; }
	$(ACTIVATE) && quarto render $(CH) --to html

audit: ## Check prose style rules and callout fences across all chapters
	@$(VENV)/bin/python scripts/style_check.py

clean: ## Remove Quarto build artifacts (docs/, .quarto/, _freeze/)
	rm -rf docs .quarto _freeze

setup: ## Create .venv and install the dependencies needed to render
	python3 -m venv $(VENV)
	$(ACTIVATE) && python -m pip install --upgrade pip
	$(ACTIVATE) && pip install jupyter $(PB_SPEC) polars pandas numpy "ibis-framework[duckdb]" duckdb
