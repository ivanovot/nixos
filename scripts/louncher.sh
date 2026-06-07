#!/usr/bin/env bash

cmd=$(cat <<EOF | fzf --prompt="󱂬 System Control ❯ "
󰑓 Rebuild System          Rebuild current NixOS configuration
󰚰 Update Flake            Update flake inputs and rebuild system

󰆴 Prune Generations       Retain last 10 generations
󰩺 Collect Garbage         Remove unreachable store paths
󰒻 Optimise Store          Deduplicate files in /nix/store
󰂖 Full Maintenance        Prune + GC + Optimise

󰋊 Store Usage             Show /nix/store disk usage
󱄅 System Generations      List available system rollbacks
EOF
)

case "$cmd" in
  "󰑓 Rebuild System"* )
    ~/nixos/scripts/rebuild.sh
    ;;

  "󰚰 Update Flake"* )
    nix flake update --flake ~/nixos/flake.nix
    ~/nixos/scripts/rebuild.sh
    ;;

  "󰆴 Prune Generations"* )
    sudo nh clean all --keep 10
    ;;

  "󰩺 Collect Garbage"* )
    sudo nix-collect-garbage -d
    ;;

  "󰒻 Optimise Store"* )
    sudo nix store optimise
    ;;

  "󰂖 Full Maintenance"* )
    sudo nh clean all --keep 10
    sudo nix-collect-garbage -d
    sudo nix store optimise
    ;;

  "󰋊 Store Usage"* )
    du -sh /nix/store
    ;;

  "󱄅 System Generations"* )
    sudo nix-env \
      --list-generations \
      --profile /nix/var/nix/profiles/system
    ;;

  *)
    exit 0
    ;;
esac