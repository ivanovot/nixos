#!/usr/bin/env bash

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Applying NixOS configuration..."
cd "$SCRIPT_DIR"

sudo nixos-rebuild switch --flake .. --impure 

echo "Done."
