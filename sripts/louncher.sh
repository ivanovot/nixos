#!/usr/bin/env bash

cmd=$(cat <<EOF | fzf --prompt="Select tool: "
fastfetch
btop
cbonsai
cmatrix
cava
scope-tui pulse alsa_output.pci-0000_00_1f.3.analog-stereo.monitor
setrixtui
EOF
)

[ -n "$cmd" ] && exec $cmd
