#!/usr/bin/env bash

set -e

HOME_DIR="$HOME"

# корень проекта теперь всегда на уровень выше scr/
ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

CONFIG_DIR="$ROOT_DIR/config"

remove_conflicts() {
    local config_file=$1
    local target_file="$HOME_DIR/$config_file"

    if [[ -e "$target_file" || -L "$target_file" ]]; then
        rm -rf "$target_file"
    fi
}

# Удаление конфликтов
find "$CONFIG_DIR" -type f -print0 | while IFS= read -r -d '' file; do
    relative_path="${file#$CONFIG_DIR/}"
    remove_conflicts "$relative_path"
done

# Очистка lock-файлов
find "$HOME_DIR/.config" -name "lock" -type f -delete 2>/dev/null || true
find "$HOME_DIR/.config" -name ".lock" -type f -delete 2>/dev/null || true

# Firefox
FIREFOX_DIR="$HOME_DIR/.config/mozilla/firefox"
if [[ -d "$FIREFOX_DIR" ]]; then
    rm -rf "$FIREFOX_DIR"/*.default* 2>/dev/null || true
    rm -rf "$FIREFOX_DIR/Crash Reports" 2>/dev/null || true
    rm -f "$FIREFOX_DIR/lock" 2>/dev/null || true
fi

# VS Code
rm -f "$CONFIG_DIR/.config/Code/User/chatLanguageModels.json" 2>/dev/null || true
rm -rf "$CONFIG_DIR/.config/Code/CachedData" 2>/dev/null || true
rm -rf "$CONFIG_DIR/.config/Code/Cache_Data" 2>/dev/null || true

echo "Deploying configuration..."
cd "$ROOT_DIR"

stow --adopt --no-folding config

echo "Done."