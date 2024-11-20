BIN_PREFIX	?=	$${HOME}/.local
CON_PREFIX	?=	$${HOME}/.config


tmux:
	@ mkdir -p $(BIN_PREFIX)/scripts
	@ mkdir -p $(CON_PREFIX)/scripts

	cp tmux/tmux.conf $(CON_PREFIX)/scripts/tmux.conf
	cp tmux/tmux-sessionizer $(BIN_PREFIX)/scripts/tmux-sessionizer
	cp tmux/tmux-windowizer $(BIN_PREFIX)/scripts/tmux-windowizer

	chmod +x $(BIN_PREFIX)/scripts/tmux-sessionizer
	chmod +x $(BIN_PREFIX)/scripts/tmux-windowizer

.PHONY: tmux
