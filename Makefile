.PHONY: all help tsi init

all: help

help:
	@echo "make init          #=> Run init scripts"

tsi: 
	command -v tree-sitter >/dev/null 2>&1 || brew install tree-sitter-cli

init: tsi
	fish init.fish
