.DEFAULT_GOAL := all

all: install lint

install:
	pnpm install

lint:
	@pnpm run lint

format:
	@pnpm run format
