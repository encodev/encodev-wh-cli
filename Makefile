SHELL := /usr/bin/env bash

.PHONY: check
check:
	bash -n bin/wh
	@if command -v shellcheck >/dev/null 2>&1; then \
		shellcheck bin/wh; \
	else \
		echo "shellcheck not installed; skipping"; \
	fi
