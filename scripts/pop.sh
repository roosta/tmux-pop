#!/usr/bin/env bash
tmux set -g window-active-style "bg=$1"
sleep .05 && tmux set -g window-active-style ''
