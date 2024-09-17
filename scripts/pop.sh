#!/usr/bin/env bash
tmux set -w window-active-style "bg=$1"
sleep "$2" && tmux set -w window-active-style ''
