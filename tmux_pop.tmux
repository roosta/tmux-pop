#!/usr/bin/env bash
CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
tmux set-hook -g after-select-pane "run-shell \". $CURRENT_DIR/scripts/pop.sh\""
