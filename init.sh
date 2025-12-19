#!/usr/bin/env fish

set SCRIPT_PATH (status current-filename)
set SCRIPT_DIR (cd (dirname $SCRIPT_PATH); and pwd)

set DOTFILES_DIR (cd "$SCRIPT_DIR"; and pwd)

echo $DOTFILES_DIR

mkdir -p ~/.config
ln -nsf "$DOTFILES_DIR/.config/nvim" ~/.config/nvim
ln -sf "$DOTFILES_DIR/.config/ghostty/config" ~/.config/ghostty/config
