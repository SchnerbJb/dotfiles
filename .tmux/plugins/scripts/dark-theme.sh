#!/bin/bash


set -e
tmux set -g @catppuccin_flavour 'macchiato'
tmux set -g terminal-overrides "xterm-256color:RGB"
tmux run '~/dev/dotfiles/.tmux/plugins/tpm/tpm'
