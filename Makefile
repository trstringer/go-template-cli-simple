SHELL := /bin/bash
PROJECT_NAME = go-template-cli-simple

.PHONY: setup
setup:
	@if [[ ! -f ./setup.sh ]]; then \
		echo "Setup is already complete. You can delete this setup make target."; \
	else \
		./setup.sh && rm ./setup.sh; \
	fi

.PHONY: build
build:
	mkdir -p ./dist
	go build -o ./dist/$(PROJECT_NAME)
