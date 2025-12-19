.PHONY: all help install-ts init

all: help

help:
	@echo "make init          #=> Run init scripts"

install-ts: 
	command -v tree-sitter >/dev/null 2>&1 || brew install tree-sitter-cli

init: install-ts
	fish init.fish
