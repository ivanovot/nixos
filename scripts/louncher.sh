#!/usr/bin/env bash

cmd=$(cat <<EOF | fzf --prompt="Select tool: "
cbonsai
cmatrix
cava
meowdo
setrixtui
scope-tui pulse alsa_output.pci-0000_00_1f.3.analog-stereo.monitor
EOF
)

[ -n "$cmd" ] && exec $cmd
