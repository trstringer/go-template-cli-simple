SHELL := /bin/bash
PROJECT_NAME = go-template-cli-simple

.PHONY: setup
setup:
	@if [[ ! -f ./setup.sh ]]; then \
		echo "Setup is already complete. You can delete this setup make target."; \
	else \
		chmod 755 ./setup.sh && ./setup.sh && rm ./setup.sh; \
	fi

.PHONY: build
build:
	mkdir -p ./dist
	go build -o ./dist/$(PROJECT_NAME)

.PHONY: test
test:
	go test -v ./...

.PHONY: e2e
e2e: build
	./e2e/run.sh
