#!/usr/bin/env bash

CURRENT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

main() {
	tmux bind-key M-Space run-shell "$CURRENT_DIR/scripts/ytm.sh track-pause"
	tmux bind-key M-n run-shell "$CURRENT_DIR/scripts/ytm.sh track-next"
	tmux bind-key M-p run-shell "$CURRENT_DIR/scripts/ytm.sh track-previous"
	tmux bind-key M-l run-shell "$CURRENT_DIR/scripts/ytm.sh track-thumbs-up"
	tmux bind-key M-d run-shell "$CURRENT_DIR/scripts/ytm.sh track-thumbs-down"
}

main
