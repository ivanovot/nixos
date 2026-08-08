#!/usr/bin/env bash

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Applying NixOS configuration..."
cd "$SCRIPT_DIR"

sudo nixos-rebuild switch \
  --flake .#comp \
  --impure \
  --option max-substitution-jobs 64 \
  --option http-connections 64 \
  --option download-attempts 5 \
  --option max-jobs auto \
  --option cores 0

echo "Done."
