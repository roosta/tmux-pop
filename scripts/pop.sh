#!/usr/bin/env bash
tmux set -w window-active-style "bg=$1"
sleep .05 && tmux set -w window-active-style ''
