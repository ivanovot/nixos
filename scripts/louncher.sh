#!/usr/bin/env bash

cmd=$(cat <<EOF | fzf --prompt="System Control: "
Rebuild NixOS system
Update flake inputs
Garbage collection (retain 10 generations)
Garbage collection (remove all unreachable paths)
NH cleanup (retain 10 system generations)
Nix store optimisation (deduplication)
Full cleanup (GC + store optimisation)
Display /nix/store disk usage
List system generations
Open flake configuration
Launch legacy tools
EOF
)

case "$cmd" in
  "Rebuild NixOS system")
    ~/nixos/scripts/rebuild.sh
    ;;

  "Update flake inputs")
    nix flake update --flake ~/nixos/flake.nix
    ;;

  "Garbage collection (retain 10 generations)")
    sudo nix-collect-garbage --delete-generations +10
    ;;

  "Garbage collection (remove all unreachable paths)")
    sudo nix-collect-garbage -d
    ;;

  "NH cleanup (retain 10 system generations)")
    sudo nh clean all --keep 10
    ;;

  "Nix store optimisation (deduplication)")
    sudo nix store optimise
    ;;

  "Full cleanup (GC + store optimisation)")
    sudo nix-collect-garbage -d && sudo nix store optimise
    ;;

  "Display /nix/store disk usage")
    du -sh /nix/store
    read -p "Press Enter..."
    ;;

  "List system generations")
    sudo nix-env --list-generations --profile /nix/var/nix/profiles/system
    read -p "Press Enter..."
    ;;

  "Open flake configuration")
    ${EDITOR:-micro} ~/nixos/flake.nix
    ;;

  "Launch legacy tools")
    cbonsai
    ;;

  *)
    exit 0
    ;;
esac