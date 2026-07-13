# SHELL CONFIG
SHELL := /bin/bash

.DEFAULT_GOAL := help

.PHONY: help
help:
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/##//'

SELF_DIR := $(dir $(lastword $(MAKEFILE_LIST)))
SCENARIOS := $(shell sh -c 'for d in molecule/*; do [ -d "$$d" ] && basename "$$d"; done | sort')

generate-docs:## Generate documentation using docsible
	@echo "[INFO] Generating documentation..."
	@pipenv run docsible --no-backup -a --role .

SCENARIO ?=

.PHONY: test
test:## Run tests for a specific scenario


.PHONY: test-all
test-all:## Test all scenarios

.PHONY: lint
lint:## Run linters on the codebase
