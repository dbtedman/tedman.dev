.DEFAULT_GOAL := all

.PHONY: all
all: install lint build

.PHONY: pre_commit
pre_commit: lint build

.PHONY: install
install:
	@pnpm install

.PHONY: lint
lint:
	@pnpm run lint

.PHONY: format
format:
	@pnpm run format

.PHONY: build
build:
	@hugo

.PHONY: serve
serve:
	@hugo server
