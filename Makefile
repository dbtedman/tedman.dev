.DEFAULT_GOAL := all

.PHONY: all
all: install lint

.PHONY: pre_commit
pre_commit: lint

.PHONY: install
install:
	@pnpm install

.PHONY: lint
lint:
	@pnpm run lint

.PHONY: format
format:
	@pnpm run format

.PHONY: serve
serve:
	@hugo server
