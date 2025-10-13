.PHONY: build
build:
	cargo build

.PHONY: lint
lint:
	cargo clippy -- --deny warnings
	cargo fmt --check

.PHONY: format
format:
	cargo clippy --fix --allow-no-vcs
	cargo fmt

.PHONY: publish
publish:
	cargo publish
