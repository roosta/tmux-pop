#!/usr/bin/env bash
CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# $1: option
# $2: default value
# Source: https://github.com/wfxr/tmux-fzf-url/blob/b8436ddcab9bc42cd110e0d0493a21fe6ed1537e/fzf-url.tmux#L11
tmux_get() {
    local value
    value="$(tmux show -gqv "$1")"
    [ -n "$value" ] && echo "$value" || echo "$2"
}

color="$(tmux_get '@tmux-pop-color' 'brightblack')"

tmux set-hook -g after-select-pane "run-shell '$CURRENT_DIR/scripts/pop.sh $color'"
